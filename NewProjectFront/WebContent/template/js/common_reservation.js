// 왕복/편도 UI 전환
function reservation_type_change(way_type) {
	if (way_type == 'oneway') {
		// 편도
		if (navigator.geolocation) {
			$('#cur_pos_wrap').css('display', 'none');
		}
		$('#select_car_wrap').css('display', 'none');

		$('#round_way_wrap').css('display', 'none');
		$('#one_way_start_wrap').css('display', '');
		$('#one_way_end_wrap').css('display', '');

	} else {
		// 왕복
		if (navigator.geolocation) {
			$('#cur_pos_wrap').css('display', '');
		}
		$('#select_car_wrap').css('display', '');

		$('#round_way_wrap').css('display', '');
		$('#one_way_start_wrap').css('display', 'none');
		$('#one_way_end_wrap').css('display', 'none');
	}
	$('#input_location').val('');
	$('#input_location_oneway_id').text('');
	$('#input_location_zone_id').text('');
	$('#input_location_lat').text('');
	$('#input_location_lng').text('');
}

function getStartDateTime() {
	var d = $('#startDay').datepicker('getDate');
	var t = $('#selbox_startTime').val();
	return new Date(d.getFullYear(), d.getMonth(), d.getDate(), t.slice(0, 2), t.slice(3, 5), 0);
}

function getEndDateTime() {
	var d = $('#endDay').datepicker('getDate');
	var t = $('#selbox_endTime').val();
	return new Date(d.getFullYear(), d.getMonth(), d.getDate(), t.slice(0, 2), t.slice(3, 5), 0);
}

//text rolling by smartNHW
function rolling() {
	$("#rolling li:first").slideUp(function() {
		$(this).appendTo($("#rolling")).slideDown();
	});
}

function openNanumCar() {

	window.open("", "nanumcar");
	document.reservation.action = "https://www.socar.kr/seoul";
//	document.reservation.action = "{#SOCAR_WEB#}/seoul";
//	document.reservation.action = "http://seoul.socar.kr";
	document.reservation.target = "nanumcar";
	document.reservation.submit();

	document.reservation.target = "";

/*
	window.open("", "nanumcar");
	document.reservation.action = "http://topis.seoul.go.kr/renewal/traffic/CarShareInfo.jsp";
	document.reservation.target = "nanumcar";
	document.reservation.submit();
*/
}

function number_format(yourNumber) {
	var n = yourNumber.toString().split(".");
	n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	return n.join(".");
}

function getRentTime(sDate, eDate) {
	return (eDate.getTime() - sDate.getTime()) / 1000 / 60;
}

function makeRentTimeString(sDate, eDate) {
	var totalMinutes = getRentTime(sDate, eDate);
	return parseInt(totalMinutes / 60) + '시간 ' + totalMinutes % 60 + '분';
}

function move_to_currentPosition(pos, ImageUrl) {
	var lat = pos.coords.latitude;
	var lng = pos.coords.longitude;

	$('#input_location_lat').text(lat);
	$('#input_location_lng').text(lng);
	// $('#input_location').val('현재 위치');
	$('#input_location').attr('disabled', true);

	//지역선택 레이어 숨김
	$('#setting .option-layer').css('display', 'none');

	set_cookie('loc_type', 1);

	$.ajax({
		url : "https://apis.daum.net/local/geo/coord2addr",
		crossDomain : true,
		data : {
			longitude : lng,
			latitude : lat,
			output : 'json',
			apikey : '{#DAUM_LOCAL_KEY#}'
		},
		type : "GET",
		dataType : "jsonp",
		success : function(data) {
			$('#input_location').val(data.fullName);
		},
		error : function() {
			// alert('');
		}
	});

	if ($cur_pos_marker == null) {
		//var pin = new daum.maps.MarkerImage('{#BASE_URL#}template/asset/images/pin/pcpinhere.png', new daum.maps.Size(40, 38), new daum.maps.Point(13, 32)
		var pin = new daum.maps.MarkerImage(ImageUrl, new daum.maps.Size(40, 38), new daum.maps.Point(13, 32)
		// 'poly',
		// '1,20,1,9,5,2,10,0,21,0,27,3,30,9,30,20,17,33,14,33'
		);

		//마커 생성
		$cur_pos_marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(lat, lng),
			image : pin
		});

		$cur_pos_marker.setMap($map);
	}

	$beforePos = $map.getCenter();
	$beforeLevel = $map.getLevel();
	$map.panTo(new daum.maps.LatLng(lat, lng));
	$map.setLevel(7);
	setTimeout(function() {
	}, 500);
}

function view_detail_car(carId) {
	$.ajax({
		type : 'GET',
		url : "{#API_SERVER_URL#}reserve/car_info?car_id=" + car_id,
		crossDomain : true,
		data : {},
		dataType : 'jsonp',
		success : function(json) {
			var retCode = json['retCode'];
			if (retCode == 1) {
				var result = json['result'];

				$('#layer_car_name').text(result['car_name']);
				$('#layer_car_basic_price').text(number_format(result['base_price']) + '원');
				$('#layer_car_maker').text(result['maker']);
				$('#layer_car_visual').text(result['visual']);
				$('#layer_car_fuel').text(result['fuel']);
				$('#layer_car_gearbox').text(result['gearbox']);
				$('#layer_car_capacity').text(result['capacity']);
				// $('#layer_car_img').attr('src', result['car_img'][0]);

				$('.mwLayer').addClass('open');
				$('.mwLayer #mwCont').removeClass();
				$('.mwLayer #mwCont').addClass('socarDetailLy');
				$('.mwLayer .mwCont').css('display', 'none');
				$('.mwLayer .socarDetail').css('display', 'block');
			} else {
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
			}
		},
		error : function() {
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	});
	//$.ajax({
}

function verify_set_oneway_start_zone(zone_id) {
	var success_find = false;
	$('#select_one_way_start').val(-1);

	$('#select_one_way_start option').each(function() {
		if ($(this).val() == zone_id) {
			$('#select_one_way_start').val(zone_id);
			$('#select_one_way_start').trigger("change");
			success_find = true;
		}
	});
	return success_find;
}

function init_oneway_start_zone(url, init_val) {
	$.ajax({
		type : 'GET',
		url : url,
		crossDomain : true,
		data : {
			type : 'start'
		},
		dataType : 'jsonp',
		success : function(json) {
			var retCode = json['retCode'];
			if (retCode == 1) {
				result = json['result'];
				$('#select_one_way_start').html('');
				$('#select_one_way_start').append('<option value="-1">대여존을 선택해 주세요</option>');

				var s_oneway = new StringBuffer();

				for (var i in result) {
					s_oneway.append('<option value="' + result[i].zone_id + '">');
					s_oneway.append('[' + result[i].zone_region1_short + '/' + result[i].zone_region2 + '] ' + result[i].zone_name);
					s_oneway.append('</option>');
				}

				$('#select_one_way_start').append(s_oneway.toString());
				s_oneway.clear();

				if (init_val != undefined) {
					$('#select_one_way_start').val(init_val);
					var temp_oneway_end = get_cookie('tmp_selected_oneway_id');
					view_oneway_list(url, init_val, temp_oneway_end);
					// 반납존 갱신을 위해 강제로 이벤트 발생.
				}
				$('#select_one_way_end').append('<option value="-1">반납존을 선택해 주세요</option>');
			}
		},
		error : function() {
			// alert('');
		}
	});
}

function view_oneway_list(url, start_zone_id, init_val) {
	if (start_zone_id == undefined || start_zone_id == -1) {
		alert("대여존을 선택하여 주십시오.");
		return;
	}
	$.ajax({
		type : 'GET',
		url : url,
		crossDomain : true,
		data : {
			type : 'end',
			start_zone_id : start_zone_id
		},
		dataType : 'jsonp',
		success : function(json) {

			if (json.retCode == 1) {

				var result = json.result;
				$('#select_one_way_end').html('');
				$('#select_one_way_end').append('<option value="-1">반납존을 선택해 주세요.</option>');

				var s_oneway_return = new StringBuffer();

				for (var i in result) {
					var style_code = "";
					if('open' == result[i].open_weekend){
						style_code = "color : #1ba4e7;";
					}
					s_oneway_return.append('<option style="' + style_code + '" value="' + result[i].oneway_id + '" data-open_time="' + result[i].zone_open_time + '" data-close_time="' + result[i].zone_close_time + '">');
					s_oneway_return.append('[' + result[i].zone_region1_short + '/' + result[i].zone_region2 + '] ' + result[i].zone_name);
					if('open' == result[i].open_weekend){
						s_oneway_return.append(' | 주말도 가능!');
					}
					s_oneway_return.append('</option>');
				}

				$('#select_one_way_end').append(s_oneway_return.toString());
				s_oneway_return.clear();

				if (init_val != undefined) {
					$('#select_one_way_end').val(init_val);
				}
			} else {
				alert(json.retMsg + ' (' + json.retCode + ')');
			}
		},
		error : function() {
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	});
}

function bind_map_zone_name(zone_id, url) {
	//var zone_id = $(this).find('.map_zone_id').text();
	$.ajax({
		type : 'GET',
		url : url + zone_id,
		crossDomain : true,
		data : {},
		dataType : 'jsonp',
		success : function(json) {
			var retCode = json['retCode'];
			if (retCode == 1) {
				var result = json['result'];

				$('#layer_zone_name').text(result['zone_name']);
				$('#layer_able_num').text(result['able_num']);
				$('#layer_toal_num').text(result['total_num']);
				$('#layer_zone_addr').text(result['zone_addr']);
				$('#layer_oper_time').text(result['oper_time']);
				//$('#layer_oper_way').text(result['oper_way']);
				var visit_html = result['visit'];
				if (result['state']) {
					visit_html += result['visit_link'] ? ' <a href="' + result['visit_link'] + '" target="_blank">길찾기</a>' : '';
					visit_html += result['link'] ? ' <a href="' + result['link'] + '" target="_blank">상세안내</a>' : '';
					visit_html += result['notice'] ? '<p style="padding-top:5px">' + result['notice'] + '</p>' : '';
				}
				$('#layer_visit').html(visit_html);

				$('.mwLayer').addClass('open');
				$('.mwLayer #mwCont').removeClass();
				$('.mwLayer #mwCont').addClass('socarzoneLy');
				$('.mwLayer .mwCont').css('display', 'none');
				$('.mwLayer .socarzone').css('display', 'block');

				// 제주공항 존인 경우 차량 대수를 노출하지 않습니다.
				var isZoneAirportJeju = parseInt(zone_id, 10) === 105;
				var displayPropValue = !isZoneAirportJeju ? 'table-row' : 'none';
				$('#layer_vehicle_count_row').css('display', displayPropValue);

				var $detailInfo = $('.mwLayer .socarzone').children('.detailInfo');

				if (!$detailInfo.data('bind-scroll')) {
					$detailInfo.mCustomScrollbar({
						scrollButtons : {
							enable : true
						},
						theme : "dark-thick"
					});

					$detailInfo.data('bind-scroll', true);
				} else {
					$detailInfo.mCustomScrollbar("update");
				}

				//존 정보 레이어에 작은 맵 생성
				if ($map_small == null) {
					$map_small = new daum.maps.Map(document.getElementById('map_small'), {
						center : new daum.maps.LatLng(result['lat'], result['lng']),
						level : 5
					});
					var mapTypeControl = new daum.maps.MapTypeControl();
					$map_small.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
				}
				//마커 생성
				if ($map_small_marker == null) {
					$map_small_marker = new daum.maps.Marker({
						position : new daum.maps.LatLng(result['lat'], result['lng'])
					});
					$map_small_marker.setMap($map_small);
				} else {
					var pos = new daum.maps.LatLng(result['lat'], result['lng']);
					$map_small.setCenter(pos);
					$map_small.setLevel(5);
					$map_small_marker.setPosition(pos);
				}
			}//if(retCode == 1)
			else {
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
			}
		},
		error : function() {
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	});
	//$.ajax({
	return false;
}

function bind_input_location_click(url){
	$.ajax({
		url : url,
		type : "POST",
		data : {
			way: 'round'
		},
		dataType: "json",
		success : function(data){
			if(data.retCode == '1'){
				var result = data.result;
				$('#recently_list').empty();
				$('#recently_list_wrapper p').remove();

				if(result.length > 0){

					for(var i in result){
						$('#recently_list').append(
							'<li>' +
							'<a class="recent_list_item" href="#">' +
							result[i]['attr'] +
							result[i]['name'] + '</a>' +
							'<em style="display:none;">' + result[i]['zone_id'] + '</em>' +
							'</li>');
					}

					$('.recent_list_item').bind('click', function () {
						var name = $(this).text();
						var zone_id = $(this).next().text();
						$('#input_location').val(name);
						$('#input_location_zone_id').text(zone_id);

						//검색결과 레이어 제거
						$('.search_loc_result').remove();
						$('#autoComplete').css('display','none');
						//지역선택 레이어 제거
						$('#setting .option-layer').css('display','none');

						set_cookie('loc_type', 2);
						return false;
					});
				}
				else{
					$('#recently_list').parent().append('<p>최근 이용한 쏘카존이 없습니다.</p>');
				}
			}
			else{
				alert(data.retMsg);
			}
		},
		error : function(){
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	});
}

function find_zone(is_suggest, url, way) {
	//검색 input에 입력 된 텍스트가 없는 경우
	if(!is_suggest && url == null){
		//검색결과 레이어 제거
		$('.search_loc_result').remove();
		$('#autoComplete').css('display','none');
		$('#input_loc').focus();
		return;
	}

	$.ajax({
		type: 'GET',
		url: url,
		crossDomain: true,
		data: {
			name: $('#input_loc').val(),
			type: way
		},
		dataType: 'jsonp',
		success: function(json){
			var retCode = json['retCode'];

			if(retCode == 1){
				var zone = json['result']['zones'];
				//var addr = json['result']['addresses'];
				var region2 = json['result']['region2'];
				var region3 = json['result']['region3'];


				if(zone.length == 0 && /*addr.length == 0*/ region2.length == 0 && region3.length == 0){
					//검색결과 레이어 제거
					$('.search_loc_result').remove();
					$('#autoComplete').css('display','none');
					if(!is_suggest){
						alert('검색 결과가 없습니다.');
					}
//						$('#input_loc').val('');
					$('#input_loc').focus();
					return;
				}
				//이전 검색결과 지우고 검색결과 레이어 표시
				$('.search_loc_result').remove();
				$('#autoComplete').css('display','block');

				for(var i in zone){
					$('#ul_search_result').append(
						'<li class="exact search_loc_result"><a class="socar_zone" href="#">' +
						zone[i]['attr'] + //0 일땐 안보이고, 나머지만 보여주자.
						zone[i]['name'] + '</a>' +
						'<em id="zone_id" style="display:none;">' +
						zone[i]['zone_id'] + '</em></li>');
				}
				/*for(var j in addr){
					$('#ul_search_result').append(
						'<li class="search_loc_result"><a class="addr_zone" href="#">'
						+ addr[j]['name']
						+ '</a>'
						+ '<em id="lat" style="display:none;">'
						+ addr[j]['lat']
						+ '</em>'
						+ '<em id="lng" style="display:none;">'
						+ addr[j]['lng']
						+ '</em></li>');
				}*/
				for(var j in region2){
					$('#ul_search_result').append(
						'<li class="search_loc_result"><a class="region2_zone" href="#">'
						+ region2[j]
						+ '</a>'
						+ '<em id="lat" style="display:none;">'
						+ '</em>'
						+ '<em id="lng" style="display:none;">'
						+ '</em></li>');
				}
				for(var j in region3){
					$('#ul_search_result').append(
						'<li class="search_loc_result"><a class="region3_zone" href="#">'
						+ region3[j]
						+ '</a>'
						+ '<em id="lat" style="display:none;">'
						+ '</em>'
						+ '<em id="lng" style="display:none;">'
						+ '</em></li>');
				}

				// 쏘카존
				$('.socar_zone').bind('click', function () {
					var name = $(this).text();
					var zone_id = $(this).next().text();
					$('#input_location').val(name);
					$('#input_location_zone_id').text(zone_id);

					//검색결과 레이어 제거
					$('.search_loc_result').remove();
					$('#autoComplete').css('display','none');
					//지역선택 레이어 제거
					$('#setting .option-layer').css('display','none');

					set_cookie('loc_type', 2);
				});
				// 일반주소
				/*$('.addr_zone').bind('click', function () {
					var name = $(this).text();
					var lat = $(this).next().text();
					var lng = $(this).next().next().text();

					$('#input_location').val(name);
					$('#input_location_lat').text(lat);
					$('#input_location_lng').text(lng);

					//검색결과 레이어 제거
					$('.search_loc_result').remove();
					$('#autoComplete').css('display','none');
					//지역선택 레이어 제거
					$('#setting .option-layer').css('display','none');

					set_cookie('loc_type', 1);
				});*/
				//region2 주소
				$('.region2_zone').bind('click', function () {
					var name = $(this).text();

					$('#input_location').val(name);

					//검색결과 레이어 제거
					$('.search_loc_result').remove();
					$('#autoComplete').css('display','none');
					//지역선택 레이어 제거
					$('#setting .option-layer').css('display','none');

					set_cookie('loc_type', 'region2');
				});

				//region3 주소
				$('.region3_zone').bind('click', function () {
					var name = $(this).text();

					$('#input_location').val(name);

					//검색결과 레이어 제거
					$('.search_loc_result').remove();
					$('#autoComplete').css('display','none');
					//지역선택 레이어 제거
					$('#setting .option-layer').css('display','none');

					set_cookie('loc_type', 'region3');
				});
			}
			else{
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
			}

		},
		error: function(){
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	})
	return true;
}


function bind_input_car_class_click(url){
	$.ajax({
		type: 'GET',
		url: url,
		crossDomain: true,
		data: {},
		dataType: 'jsonp',
		success: function(json){
			var retCode = json['retCode'];

			if(retCode == 1){
				result = json['result'];

				$('.car_search_result').remove();
				for(var i in result){
					$('#ul_car_search_result').append(
					'<li class="car_search_result">' +
					'<h5><a class="car_class_item" href="#">' + result[i]['name'] + '</a></h5>' +
					'<em style="display:none;">' + result[i]['class_id'] + '</em></li>');
				}

				//지역선택 레이어 숨김
				$('#setting .option-layer').css('display','none');
				//차종선택 레이어 표시
				$('#socar').css('display','block');

				// 서버로부터 받은 차종 클릭 리스너
				$('.car_class_item').bind('click', function () {
					var name = $(this).text();
					var class_id = $(this).parent().next().text();

					$('#input_car_class').val(name);
					if(class_id == 'null'){
						class_id = '';
					}
					$('#input_car_class').next().text(class_id);

					//차종선택 레이어 표시
					$('#socar').css('display','none');
				});
			}
			else{
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
			}

		},
		error: function(){
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
		}
	})

	return false;
}

// 시간 컨트롤 초기화
function set_date_time_picker(way_type, max_day){
    var now       = new Date();
    var s_newDate = new Date();
    var e_newDate = new Date();
    var s_time = new Date();
    var e_time = new Date();

    now.setMinutes( Math.ceil(now.getMinutes()/10)*10 + 10 );
    s_newDate.setTime(now.getTime());
    e_newDate.setTime(s_newDate.getTime() + 30 * 60 * 1000);
    s_time = s_newDate.getHours().zeroPad(10) + ':' + s_newDate.getMinutes().zeroPad(10);
    e_time = e_newDate.getHours().zeroPad(10) + ':' + e_newDate.getMinutes().zeroPad(10);

    /*
    if('round' == way_type ){
        set_date_time_picker_round(max_day);
    }else{
        set_date_time_picker_oneway();
    }*/
   	// 어떤 운행 타입이든 max_day로 제어한다.
    set_date_time_picker_round(max_day);

    $('#selbox_startTime').val(s_time);
    $('#selbox_endTime').val(e_time);
}

function set_date_time_picker_round($MAX_DAYS){
    var now       = new Date();
    var s_newDate = new Date();
    var e_newDate = new Date();
    //var s_time = new Date();
    //var e_time = new Date();

    now.setMinutes( Math.ceil(now.getMinutes()/10)*10 + 10 );
    s_newDate.setTime(now.getTime());
    e_newDate.setTime(s_newDate.getTime() + 30 * 60 * 1000);
    s_time = s_newDate.getHours().zeroPad(10) + ':' + s_newDate.getMinutes().zeroPad(10);
    e_time = e_newDate.getHours().zeroPad(10) + ':' + e_newDate.getMinutes().zeroPad(10);

    $('#startDay').datepicker('setDate', s_newDate);
    $('#endDay').datepicker('setDate', e_newDate);

    /*
    $('#startDay').datepicker({
        minDate : new Date(),
        maxDate : '+90D'
   });
    $('#endDay').datepicker({
        minDate : new Date(),
        maxDate : '+90D'
    });
    */
    $('#startDay').datepicker("option", "minDate", new Date());
    $('#startDay').datepicker("option", "maxDate", '+90D');
    $('#endDay').datepicker("option", "minDate", new Date());
    $('#endDay').datepicker("option", "maxDate", '+90D');

    $('#selbox_startTime').empty().data('options');
    $('#selbox_endTime').empty().data('options');

    var selbox_startTime = $('#selbox_startTime');
    var selbox_endTime = $('#selbox_endTime');
    for(var i = 0; i < 24; i++){
        var option;
        for(var j = 0; j < 60; j += 10){
            option = '<option value=' + i.zeroPad(10) + ':' + j.zeroPad(10) + '>' +
                     i.zeroPad(10) + ':' + j.zeroPad(10) + '</option>';
            selbox_startTime.append(option);
            selbox_endTime.append(option);
        }
    }
}

function set_date_time_picker_oneway($MAX_DAYS_ONEWAY){
    var now       = new Date();
    var s_newDate = new Date();
    var e_newDate = new Date();
    var s_time = new Date();
    var e_time = new Date();

    // 편도데이는 당일 + 1h내에만 예약 가능.
    // 밤 11시 이후 일자 시프팅.
    var oneway_end_limit = new Date();
    if(now.getHours() == 23 && now.getMinutes() > 10){
        //oneway_end_limit.addHours(1);
        oneway_end_limit.setHours(oneway_end_limit.getHours()+1);
    }
    $('#startDay').datepicker("option", "minDate", now);
    $('#startDay').datepicker("option", "maxDate", oneway_end_limit);

    // 실제 편도데이 제한
    $('#endDay').datepicker("option", "minDate", new Date());
    $('#endDay').datepicker("option", "maxDate", '+4D');


    now.setMinutes( Math.ceil(now.getMinutes()/10)*10 + 10 );
    s_newDate.setTime(now.getTime());
    e_newDate.setTime(s_newDate.getTime() + 30 * 60 * 1000);
    $('#startDay').datepicker('setDate', s_newDate);
    $('#endDay').datepicker('setDate', e_newDate);

    $('#selbox_startTime').empty().data('options');
    $('#selbox_endTime').empty().data('options');
    var selbox_startTime = $('#selbox_startTime');
    var selbox_endTime = $('#selbox_endTime');

    for(var i = 0; i < 24; i++){
        var option;
        for(var j = 0; j < 60; j += 10){
            option = '<option value=' + i.zeroPad(10) + ':' + j.zeroPad(10) + '>' +
                     i.zeroPad(10) + ':' + j.zeroPad(10) + '</option>';
            selbox_endTime.append(option);
        }
    }
    // +1h만 되어야 하므로 타임리밋을 걸어줘야 한다.
    // 시간제한(시작은 현시간 +1h)
    var limit_date = new Date();
    var limit_hour = new Date();
    if( (limit_hour.getMinutes()%10) != 0 ){
        limit_hour.setMinutes( limit_hour.getMinutes() + 10 - limit_hour.getMinutes()%10 );
    };

    for(var i = 0 ; i < 6 ; i++){
        var option;
        option = '<option value=' + limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '>' +
                    limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '</option>';

        selbox_startTime.append(option);
        limit_hour.setMinutes(limit_hour.getMinutes() + 10);
        if(limit_hour.getDate() != limit_date.getDate()){
        	// 하루 초과 방지
        	break;
        }
    }
    s_time = s_newDate.getHours().zeroPad(10) + ':' + s_newDate.getMinutes().zeroPad(10);
    e_time = e_newDate.getHours().zeroPad(10) + ':' + e_newDate.getMinutes().zeroPad(10);
    $('#selbox_startTime').val(s_time);
    $('#selbox_endTime').val(e_time);
}

function numberFormat(num) {
    var pattern = /(-?[0-9]+)([0-9]{3})/;
    while(pattern.test(num)) {
        num = num.replace(pattern,"$1,$2");
    }
    return num;
}
