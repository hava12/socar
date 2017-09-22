<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<!--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"> -->

		

		

		
		<meta name="description" content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료 " />
		<meta name="keywords" content="서울,제주,부산,경기,인천,카셰어링,카쉐어링,렌트,렌트카,렌터카" />
		<meta name="title" content="대한민국 1등 카셰어링 쏘카">

		<meta property="og:type" content="website">
		<meta property="og:title" content="대한민국 1등 카셰어링 쏘카">
		<meta property="og:description" content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료">
		<meta property="og:image" content="https://www.socar.kr/template/asset/images/pc_m_web_meta_tag.jpg">
		<meta property="og:url" content="https://www.socar.kr/">

		<!-- 유투브 랜딩 연결 -->
		<meta name="google-site-verification" content="HINSnUVovAF2J7CwA3dQ9lqhGBKgkbZ5-cNvG3qazY4" />
	    <!-- 네이버 사이트 확인 -->
	    <meta name="naver-site-verification" content="070f0a98381321c1dbe5b675366712f03d6681d1"/>

		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="icon">
		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="shortcut icon">
		<link href='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20170428' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="/template/asset/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.banner.js"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="/template/asset/js/ssun.js?1505961969"></script>
		<script type="text/javascript" src="/template/asset/js/json3.min.js?1505961969"></script>
		<script type="text/javascript" src="/template/asset/js/common.js?1505961969"></script>
		<script type="text/javascript" src="/template/asset/js/day-picker.js?1505961969"></script>
		<script type="text/javascript" src="/template/asset/js/jquery.block.ui.min.js?1505961969"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>


<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/reservation.css?v=20170731' />
<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/jquery-ui.css' />
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" /> -->
<link rel="stylesheet" type="text/css" href='//web-assets.socar.kr/template/asset/css/jquery.mCustomScrollbar.css' />
<script src="/template/reservation/../asset/js/jquery-ui.js"></script>
<script src="/template/reservation/../asset/js/jquery-collision.js?1505961969"></script>
<script type="text/javascript" src="/template/reservation/../asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/template/reservation/../asset/js/common_reservation.js?1505961969"></script>
<style type="text/css">
.list .section {cursor:pointer}
.car_class_item {display:block; height: 35px; color: #333; line-height: 36px; padding-left: 13px}
/*.oneway_item {display:block; height: 35px; color: #333; line-height: 36px; padding-left: 13px}*/
.oneway_item {display:block; padding:7px 0 7px 13px; color: #333; line-height:18px;}
#oneway_list {width: 280px;}

#rolling {
	height: 20px;
	padding-top:7px;
	float:left;
	color:#333;
	overflow:hidden;
}

#rolling li {
	height: 20px;
	line-height:20px;
}


</style>





<script type="text/javascript">
//var $MAX_DAYS = '90';
var $MAX_DAYS = '90';
var $MAX_DAYS_ONEWAY = '30';
// spock 페이지 오픈시 편도 시작점 UI 초기화
$(document).ready(function(){

	$('.util2').click(function() {
		var cookie = get_cookie('approach_from_nanumcar');
		if (cookie === 'true') {
			set_cookie('approach_from_nanumcar', null);
			location.href = "http://www.seoulnanumcar.com/member/registForm";
			return false;
		}

		location.assign('/join');
	});

	var temp_oneway_start = get_cookie( 'tmp_selected_oneway_start');
	var temp_oneway_end = get_cookie( 'tmp_selected_oneway_end');

	set_cookie( 'tmp_selected_oneway_start', null );
	set_cookie( 'tmp_selected_oneway_end', null );

	url = "https://api.socar.kr/reserve/oneway_zone_list";
	init_oneway_start_zone(url, temp_oneway_start);

	$('#select_one_way_start').change( function () {
		var url = "https://api.socar.kr/reserve/oneway_zone_list";
		var start_zone_id = $('#select_one_way_start').val();
		view_oneway_list(url, start_zone_id, temp_oneway_end);
	});

});

$(function() {
	//scroll down
	$('html, body').animate({scrollTop:500}, {duration:1000});



	var hashRegion = $.cookie("hash");
	if(hashRegion != null && hashRegion != "seoul"){
		$("#NanumCar_btn").css("display","none");
	}
	else if (hashRegion == "seoul" && $("#NanumCar_btn").css("display") == "none"){
		$("#NanumCar_btn").css("display", "block");
	}
	else{

	}

	set_cookie("hash", null);
});

var $map                  = null;
var $map_small            = null;
var $map_small_marker     = null;
var $beforeInfoWindow     = null;
var $tmp_selected_zone_id = null;
var $tmp_selected_lat     = null;
var $tmp_selected_lng     = null;

var $cur_pos_marker       = null;
var $beforePos            = null;
var $beforeLevel          = null;
var $isLogin              = '';
var $tmp_start_at         = '2017-09-21T12:00:00+09:00';

var timerGetRolling       = null;

Date.prototype.addHours = function(h) {
   this.setTime(this.getTime() + (h*60*60*1000));
   return this;
}
Date.prototype.addMinutes = function(m) {
   this.setTime(this.getTime() + (m*60000));
   return this;
}
Number.prototype.zeroPad = Number.prototype.zeroPad || function(base){
	var nr = this, len = (String(base).length - String(nr).length)+1;
	return len > 0? new Array(len).join('0')+nr : nr;
};
/*
function number_format(yourNumber) {
	var n= yourNumber.toString().split(".");
	n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	return n.join(".");
}
*/
function makeDateStringWithDay(date){
	var weekday=new Array(7);
	weekday[0]="일";
	weekday[1]="월";
	weekday[2]="화";
	weekday[3]="수";
	weekday[4]="목";
	weekday[5]="금";
	weekday[6]="토";

	var ret = date.getFullYear() + '.' +
			  (date.getMonth() + 1).zeroPad(10) + '.' +
			  date.getDate().zeroPad(10) + ' ' +
			  weekday[date.getDay()] + ' ' +
			  date.getHours().zeroPad(10) + ':' +
			  date.getMinutes().zeroPad(10);

	return ret;
}

var $able_arr = {};
var $total_arr = {};
//인포 윈도우 데이터 세팅
function settingInfoWindowData (marker, lat, lng, zone_id, able_num, is_far) {
	is_far = is_far || false;
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/reserve/zone_info?zone_id=" + zone_id,
		crossDomain: true,
		data: {},
		dataType: 'jsonp',
		success: function(json){
			var retCode = json['retCode'];

			if(retCode == 1){
				var result = json['result'];
				var cur_key = result['zone_id'] + "";
				var zone_addr = result['zone_addr'] + '';
				var zone_addr_cut;

				if(zone_addr.length > 18){
					zone_addr_cut = zone_addr.substring(0, 18) + '...';
				}
				else{
					zone_addr_cut = zone_addr;
				}
				var car_count_desc = '';
				if (is_far) {
					car_count_desc = '총 <em>' + $total_arr[cur_key] + '</em>대' ;
				} else {
					car_count_desc = '<em>' + $able_arr[cur_key] + '</em>대/' + $total_arr[cur_key] + '대' ;
				}

				// 제주공항 존인 경우 차량 대수를 노출하지 않습니다.
				var vehicleCountDetails = parseInt(zone_id, 10) !== 105 ?
					'운영차량 : ' + car_count_desc :
					'&nbsp;';

				
					var infoTag = '<div class="tooltip myInfoWindow">' +
						'<h4><a class="map_zone_name" href="#">' +
						'<em class="map_zone_id" style="display:none;">' + zone_id + '</em>' +
						'<span title="' + result['zone_name'] + '">' + result['zone_attr'] + result['zone_name'] + '</span><span class="bg"></span>' +
						'</a></h4>' +
						'<p><a title="'+ zone_addr + '">' + zone_addr_cut + '</a><br />' +
						vehicleCountDetails + '</p>' +
						'<p class="btn">' +
						'<em class="map_zone_id" style="display:none;">' + zone_id + '</em>' +
						'<a class="btn_overlay_search" href="#">' +
						'<img src=\'//web-assets.socar.kr/template/asset/images/reservation/btn_able_socar.png\' alt="예약가능 쏘카 보기" /></a></p>' +
						'<a href="#" class="close">' +
						'<img src=\'//web-assets.socar.kr/template/asset/images/reservation/btn_layer_close.png\' alt="닫기" /></a></div>';
				


				var overlayInfoWindow = new daum.maps.InfoWindow({
					content: infoTag
				});
				overlayInfoWindow.setZIndex(999);
				overlayInfoWindow.open($map, marker);

				$beforeInfoWindow = overlayInfoWindow;

				$('.myInfoWindow .close').bind('click', function () {
					$beforeInfoWindow.setMap(null);
					$beforeInfoWindow = null;
					return false;
				});
				$('.myInfoWindow .map_zone_name').bind('click', function () {
					var zone_id = $(this).find('.map_zone_id').text();
					var url = "https://api.socar.kr/reserve/zone_info?zone_id=";
					bind_map_zone_name(zone_id, url);
				});

				//쏘카 찾기 !! - 오버레이 윈도우 예약가능 쏘카보기 버튼
				$('.btn_overlay_search').bind('click', function () {
					// spock 편도는 무조건 검색 UI 쓰도록...
					var type = $(':radio[name="type"]:checked').val();
					if( type == 'oneway' ){
						if ( true == verify_set_oneway_start_zone( $(this).prev().text() ) ){
							alert("반납존 입력은 좌측 검색영역을 이용해주세요.");
						}else {
							alert("이 쏘카존에는 편도노선이 없습니다.");
						}
						return;
					}

					var zone_id = $(this).prev().text();
					var zone_name = $('.map_zone_name').find('span').text();

					set_cookie('loc_type', 2);
					set_cookie('tmp_selected_zone_id', zone_id);

					$('#input_location').val(zone_name);
					$('#input_location_zone_id').text(zone_id);
					$('#btn_search_socar').click();

					return false;
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
}
/* 
function setMarkerAndPin (lat, lng, num, zone_id, counter, far, total, attr) {
	far = far || false;

	var key = zone_id + "";
	if($able_arr.hasOwnProperty(key)){
		return;
	}
	else{
		$able_arr[key] = num;
		$total_arr[key] = total;
	}

	//마커 이미지 세팅
	if ( far === true ) {
		var pin = new daum.maps.MarkerImage(
			'//web-assets.socar.kr/template/asset/images/reservation/ico_position1.png',
			new daum.maps.Size(14, 14),
			{
				spriteSize : new daum.maps.Size(300, 38),
				spriteOrigin : new daum.maps.Point(150,0)
			}
		);
	} else {
		var num_pin = Math.min(15,num);
		//by smartNHW
		if(num > 9) {
			num_pin = '9p';
		}
		var pin = new daum.maps.MarkerImage(
			'//web-assets.socar.kr/template/asset/images/pin/pin'+attr+'/pcpin' + num_pin + '.png?v=20170313',
			new daum.maps.Size(40, 38),
			new daum.maps.Point(13,32)
		);
	} */
/* 
	//마커 생성
	var marker = new daum.maps.Marker({
		position: new daum.maps.LatLng(lat, lng),
		image: pin
	});

	marker.setMap($map);

	if(num == 0 || far === true){
		marker.setZIndex(0);
	}
	else{
		marker.setZIndex(1);
	}

	if(far === false && counter == 0){
		$map.setCenter(new daum.maps.LatLng(lat, lng));
	}

	if($tmp_selected_zone_id == zone_id){
		settingInfoWindowData(marker, lat, lng, zone_id, num, far);
		$map.setCenter(new daum.maps.LatLng(lat, lng));
	}

	//마커 클릭 이벤트 리스너
	daum.maps.event.addListener(marker, "click", function(){
		$map.panTo(new daum.maps.LatLng(lat, lng));

		if($beforeInfoWindow != null) {
			$beforeInfoWindow.setMap(null);
			$beforeInfoWindow = null;
		}
		marker.setZIndex(marker.getZIndex() + 1);
		settingInfoWindowData(marker, lat, lng, zone_id, num, far);
	});

	//맵 클릭 이벤트 리스너 - 열려있는 InfoWindow 제거
	daum.maps.event.addListener($map, "click", function  () {
		if($beforeInfoWindow != null){
			$beforeInfoWindow.setMap(null);
			$beforeInfoWindow = null;
		}
	}); */
//}

function setOnewayMarker (lat, lng, zone_id, pin, pos) {
	var pin = new daum.maps.MarkerImage(
		'//web-assets.socar.kr/template/asset/images/pin/' + pin,
		new daum.maps.Size(60, 58),
		new daum.maps.Point(18,32)
	);

	//마커 생성
	var marker = new daum.maps.Marker({
		position: new daum.maps.LatLng(lat, lng),
		image: pin
	});

	marker.setMap($map);

	//마커 클릭 이벤트 리스너
	daum.maps.event.addListener(marker, "click", function(){

		if($beforeInfoWindow != null) {
			$beforeInfoWindow.setMap(null);
			$beforeInfoWindow = null;
		}
		settingInfoWindowData(marker, lat, lng, zone_id, 1, false);
	});

	//맵 클릭 이벤트 리스너 - 열려있는 InfoWindow 제거
	daum.maps.event.addListener($map, "click", function  () {
		if($beforeInfoWindow != null){
			$beforeInfoWindow.setMap(null);
			$beforeInfoWindow = null;
		}
	});
}

function getCouponPrice(options, callback) {
	var url = 'https://api.socar.kr/reserve/coupon';

	$.ajax({
		type: 'POST',
		url: url,
		crossDomain: true,
		dataType: 'jsonp',
		data: options,
		success: function(json){
			var retCode = json['retCode'];
			if(retCode == 1){
				var result = json['result'];
				callback(result['most_discount_price']);
			}
			else{
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				callback(null);
			}
		},
		error: function(){
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
			callback(null);
		}
	});
}

function getPriceByTerm(options, callback) {
	var way = options.way,
		oneway_id = options.oneway_id,
		zone_id = options.zone_id,
		car_id = options.car_id,
		start_at = options.start_at,
		end_at = options.end_at,
		member_state = options.member_state,
		URL = "https://api.socar.kr/reserve/price";

	if(member_state != null) {
		URL = URL + "/" + member_state;
	}

	$.ajax({
		type: 'POST',
		url: URL,
		crossDomain: true,
		data: {
			
			way: way,
			
				zone_id: zone_id,
			
			car_id: car_id,
			start_at: start_at,
			end_at: end_at
		},
		dataType: 'jsonp',
		success: function(json){
			var retCode = json['retCode'];
			if(retCode == 1){
				var result = json['result'];
				callback(result['price_dis']);
			}
			else{
				alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				callback(null);
			}
		},
		error: function(){
			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
			callback(null);
		}
	});
}

//표시될 일 수에 따라 타임라인 길이 설정
$step = 0.1666666666666667;
// $step = 0.166667;


	$timeline_width = 30;
	$unit           = 350/$timeline_width;
	;


//able time 에서 unable time 구하기
var unableArr = new Array();


	
		var base_s        = 3.0;
		var count         = 0 ;
		unableArr[0] = new Array();
		

			//from , time 값을 현재 타임라인 크기에 맞게 설정
			$from = (0 / 10) * $step + 3;
			$time = (60 / 10) * $step;

			//소수점 이하 첫째 자리수로 고정
			var from_fixed = $from.toFixed(1);
			var time_fixed = $time.toFixed(1);

			//소수점 + 연산 정상적으로 하기 위한 값
			var T = Number('1e'+1);

			//타임라인 idx 3 부터 시작
			for(var i = 3; i <= $timeline_width - 3; i++){
				// i 의 소수점 단위 루프
				for(var j = i; j < i + 1; j = Math.round((j + 0.1)*T)/T){
					// i 의 소수점 단위 값과 $from 이 일치하는지 확인
					if(j == from_fixed){

						unableArr[0][count++] = base_s;
						unableArr[0][count++] = Math.round((j - base_s)*T)/T;

						//base 값을 able time 끝지점으로 설정
						base_s = Math.round((j + parseFloat(time_fixed))*T)/T;
						break;
					}
					else{
						if( i + (Math.round((j - parseInt(j))*T)/T) > $timeline_width - 3){
							break;
						}
						unableArr[0][count] = base_s;
						unableArr[0][count + 1] = Math.round((j - base_s)*T)/T;
					}
				}
			}
		

			//from , time 값을 현재 타임라인 크기에 맞게 설정
			$from = (580 / 10) * $step + 3;
			$time = (860 / 10) * $step;

			//소수점 이하 첫째 자리수로 고정
			var from_fixed = $from.toFixed(1);
			var time_fixed = $time.toFixed(1);

			//소수점 + 연산 정상적으로 하기 위한 값
			var T = Number('1e'+1);

			//타임라인 idx 3 부터 시작
			for(var i = 3; i <= $timeline_width - 3; i++){
				// i 의 소수점 단위 루프
				for(var j = i; j < i + 1; j = Math.round((j + 0.1)*T)/T){
					// i 의 소수점 단위 값과 $from 이 일치하는지 확인
					if(j == from_fixed){

						unableArr[0][count++] = base_s;
						unableArr[0][count++] = Math.round((j - base_s)*T)/T;

						//base 값을 able time 끝지점으로 설정
						base_s = Math.round((j + parseFloat(time_fixed))*T)/T;
						break;
					}
					else{
						if( i + (Math.round((j - parseInt(j))*T)/T) > $timeline_width - 3){
							break;
						}
						unableArr[0][count] = base_s;
						unableArr[0][count + 1] = Math.round((j - base_s)*T)/T;
					}
				}
			}
		
		
	
		var base_s        = 3.0;
		var count         = 0 ;
		unableArr[1] = new Array();
		

			//from , time 값을 현재 타임라인 크기에 맞게 설정
			$from = (0 / 10) * $step + 3;
			$time = (1440 / 10) * $step;

			//소수점 이하 첫째 자리수로 고정
			var from_fixed = $from.toFixed(1);
			var time_fixed = $time.toFixed(1);

			//소수점 + 연산 정상적으로 하기 위한 값
			var T = Number('1e'+1);

			//타임라인 idx 3 부터 시작
			for(var i = 3; i <= $timeline_width - 3; i++){
				// i 의 소수점 단위 루프
				for(var j = i; j < i + 1; j = Math.round((j + 0.1)*T)/T){
					// i 의 소수점 단위 값과 $from 이 일치하는지 확인
					if(j == from_fixed){

						unableArr[1][count++] = base_s;
						unableArr[1][count++] = Math.round((j - base_s)*T)/T;

						//base 값을 able time 끝지점으로 설정
						base_s = Math.round((j + parseFloat(time_fixed))*T)/T;
						break;
					}
					else{
						if( i + (Math.round((j - parseInt(j))*T)/T) > $timeline_width - 3){
							break;
						}
						unableArr[1][count] = base_s;
						unableArr[1][count + 1] = Math.round((j - base_s)*T)/T;
					}
				}
			}
		
		
	


$(function(){

	$('.view_detail_car').bind('click', function () {
		var car_id = $(this).parent().prev().text();
		view_detail_car(car_id);
		return false;

	}); //$('.view_detail_car') end


	$tmp_selected_zone_id = $.cookie('tmp_selected_zone_id');
	$tmp_selected_lat     = $.cookie('tmp_selected_lat');
	$tmp_selected_lng     = $.cookie('tmp_selected_lng');

	set_cookie('tmp_selected_zone_id', null);
	set_cookie('tmp_selected_lat', null);
	set_cookie('tmp_selected_lng', null);

	if($tmp_selected_zone_id != null){
		$('#input_location_zone_id').text($tmp_selected_zone_id);
	}
	if($tmp_selected_lat != null && $tmp_selected_lng != null){
		$('#input_location_lat').text($tmp_selected_lat);
		$('#input_location_lng').text($tmp_selected_lng);
	}

	var window_width = $(window).width();
	
	
	/* //맵 초기화
	$map = new daum.maps.Map(document.getElementById('map'), {
		center: new daum.maps.LatLng(37.537123, 127.005523),
		level: 7,
		scrollwheel: window_width > 1024 ? true : false
	});

	var zoomControl = new daum.maps.ZoomControl();
	$map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

	var mapTypeControl = new daum.maps.MapTypeControl();
	$map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT); */

	
		set_date_time_picker('round', $MAX_DAYS);
		//마커 세팅
		
			//

		$('#input_car_class').val($.cookie('tmp_class_name'));
		$('#input_car_class').next().text($.cookie('tmp_class_id'));

	

	$('#radio_round').bind('click', function(){
		// spock 편도데이 이벤트
		set_date_time_picker('round', $MAX_DAYS);
		// spock end
	});
	$('#radio_oneway').bind('click', function(){
		set_date_time_picker('oneway', $MAX_DAYS_ONEWAY);

	});

	 $(':radio[name="type"]').bind('click', function () {
	 	var type = $(':radio[name="type"]:checked').val();

	 	reservation_type_change($(this).val());
	 });

	//date picker 적용
	$('#startDay').datepicker({
		minDate : new Date(),
		maxDate : '+'+$MAX_DAYS+'D',
		dateFormat: 'yy-mm-dd D',
		showMonthAfterYear: true,
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
	});
	$('#endDay').datepicker({
		minDate : new Date(),
		maxDate : '+'+$MAX_DAYS+'D',
		dateFormat: 'yy-mm-dd D',
		showMonthAfterYear: true,
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
	});

	//사용자가 선택한 start_at, end_at, 검색 지역 표시
	var before_start_at = '2017-09-21';
	var before_end_at   = '2017-09-21';

	$('#startDay').datepicker('setDate', new Date(  before_start_at.substr(0,4),
													before_start_at.substr(5,2)-1,
													before_start_at.substr(8,2),
													0,
													0,
													0
												));
	$('#endDay').datepicker('setDate', new Date(  before_end_at.substr(0,4),
												  before_end_at.substr(5,2)-1,
												  before_end_at.substr(8,2),
												  0,
												  0,
												  0
												));

	$('#selbox_startTime').val('12:00');
	$('#selbox_endTime').val('12:30');

	$('#input_location').val($.cookie('tmp_loc'));

	$('#startDay').change(function() {
		var type = $(':radio[name="type"]:checked').val();

		//if(type == 'round'){
			var dd = getStartDateTime();
			dd = new Date(dd.getTime() + 30*60*1000);
			$('#endDay').datepicker('option', 'minDate', dd);

			if ( getStartDateTime().getTime() + 30*60*1000 > getEndDateTime().getTime() ) {
				var tt = dd.getHours().zeroPad(10) + ':' + dd.getMinutes().zeroPad(10)
				$('#endDay').datepicker('setDate', dd);
				$('#selbox_endTime').val(tt);
			}
	});

	$('#selbox_startTime').change(function() {
		var dd = getStartDateTime();
		dd = new Date(dd.getTime() + 30*60*1000);
		$('#endDay').datepicker('option', 'minDate', dd);

		if ( getStartDateTime().getTime() + 30*60*1000 > getEndDateTime().getTime() ) {
			var tt = dd.getHours().zeroPad(10) + ':' + dd.getMinutes().zeroPad(10)
			$('#endDay').datepicker('setDate', dd);
			$('#selbox_endTime').val(tt);
		}
	});

	set_cookie('tmp_loc', null);

	if(navigator.geolocation){
		$('.currentPosition').css('display', 'block');
	}
	//현재위치기능
	$('#currentPosition').bind('click', function () {
		if($(this).is(':checked')){
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function (pos) {
					var ImageUrl = '//web-assets.socar.kr/template/asset/images/pin/pcpinhere.png';
					move_to_currentPosition(pos, ImageUrl);

				},
				function(error){
					$('#currentPosition').attr('checked', false);
					switch(error.code)
					  {
					  case error.PERMISSION_DENIED:
						alert("위치정보사용 거부로 현재위치 기능을 사용할 수 없습니다.");
						break;
					  case error.POSITION_UNAVAILABLE:
					  case error.TIMEOUT:
					  case error.UNKNOWN_ERROR:
						alert("위치정보를 사용할 수 없습니다.");
						break;
					  }
				});
			}
			else{
				$(this).attr('checked', false);
				alert('현재 사용중인 브라우저가 현재 위치 기능을 제공하지 않습니다.');
			}
		}
		else{
			$('#input_location_lat').text('');
			$('#input_location_lng').text('');
			$('#input_location').val('');
			$('#input_location').attr('disabled', false);
			set_cookie('loc_type', null);
			$map.setCenter($beforePos);
			$map.setLevel($beforeLevel);
			setTimeout(function() {
			}, 500);

		}
	});


	$(document).bind('click', function () {
		if($('#socarzone').is(':visible')){
			$('#socarzone').css('display','none');
		}
		if($('#socar').is(':visible')){
			$('#socar').css('display','none');
		}
		if($('#oneway_list').is(':visible')){
			$('#oneway_list').css('display','none');
		}
	});

	$('#socarzone, #socar').bind('click', function(){
		return false;
	});

	$('#btn_refresh').bind('click', function () {
		window.location.href = '/reserve';
		return false;
	});

	//최근 이용 쏘카존
	$('#input_location').bind('click', function () {
		$('#setting .option-layer').css('display','none');

		var type = $(':radio[name="type"]:checked').val();

		if(type == 'round'){
			$('#socarzone').css('display','block');
			$('#input_loc').focus();

			
				$('#recently_list_wrapper p').remove();
				$('#recently_list').parent().append('<p>로그인하시면 최근 이용한 쏘카존을 확인할 수 있습니다.</p>');
			
		}

		return false;
	});

	$('#input_loc').bind('focus', function () {
//		$(this).val('');
	});

	// enter submit 발생 막기
	$('#input_location, #input_loc, #btn_search_loc, #input_car_class').keydown(function(event) {
		if (event.which == 13) {
			$('#btn_search_loc').click();
			event.preventDefault();
		}
	});



	//지역 선택 - 클릭
	$('#btn_search_loc').bind('click', function () {
		if($(this).prev().val() == ''){
			return false;
		}
		var url = "https://api.socar.kr/reserve/find_zone";
		var way = $(':radio[name="type"]:checked').val();
		find_zone(false, url, way);
		return false;
	});

	//지역 선택 - Suggest
	var $timeSet = false;
	var $timerId;
	$('#input_loc').bind('keyup', function (e) {
		if($timeSet == true){
			clearInterval($timerId);
		}
		$timerId = setInterval(function(){
			var way = $(':radio[name="type"]:checked').val();
			$timeSet = false;
			clearInterval($timerId);
			var input = $('#input_loc').val();
			if(input == '' || input.length == 0){
				find_zone(false, null, way);
				return;
			}
			var url = "https://api.socar.kr/reserve/find_zone";
			find_zone(true, url, way);
		},200 );
		$timeSet = true;
	});

	//차종 선택
	$('#input_car_class').bind('click', function () {
		var url = "https://api.socar.kr/reserve/car_list";
		bind_input_car_class_click(url);


	});


	//쏘카 찾기 !!
	$('#btn_search_socar').bind('click', function () {
		if($('#startDay').val() == ''){
			alert('대여일을 입력해주세요');
			return false;
		}
		if($('#endDay').val() == ''){
			alert('반납일을 입력해주세요');
			return false;
		}

		var way = $(':radio[name="type"]:checked').val();

		if(way == 'round'){
			// 왕복
			var loc_type = $.cookie('loc_type');

			if(loc_type == false || loc_type == null || loc_type == ''){
				alert('지역을 다시 입력해주세요');
				return false;
			}

			//일반 주소 검색
			if(loc_type == 1){
				if($('#input_location_lat').text() == '' || $('#input_location_lng').text() == ''){
					alert('지역을 다시 입력해주세요.');
					return false;
				}
				set_cookie('tmp_selected_lat', $('#input_location_lat').text());
				set_cookie('tmp_selected_lng', $('#input_location_lng').text());
			} else if ( loc_type == 'region2' || loc_type == 'region3' ) {
				if($('#input_location').val() == ''){
					alert('지역을 다시 입력해주세요.');
					return false;
				}
			}
			//쏘카존 검색
			else{
				if($('#input_location_zone_id').text() == ''){
					alert('지역을 다시 입력해주세요');
					return false;
				}
				set_cookie('tmp_selected_zone_id', $('#input_location_zone_id').text());
			}
			set_cookie('tmp_class_name', $('#input_car_class').val());
			set_cookie('tmp_class_id', $('#input_car_class').next().text());
		}
		else{
			// 편도
			if( $('#select_one_way_start').val() == -1){
				alert('대여존을 선택해주세요.');
				return false;
			}
			if( $('#select_one_way_end').val() == -1){
				alert('반납존을 선택해주세요.');
				return false;
			}
			set_cookie( 'tmp_selected_oneway_start', $('#select_one_way_start').val() );
			set_cookie( 'tmp_selected_oneway_id', $('#select_one_way_end').val() );
		}

		set_cookie('tmp_loc', $('#input_location').val());

		var startDay = $('#startDay').datepicker('getDate');
		var startTime = $('#selbox_startTime').val();

		var start_at = makeTimeFormat(new Date(startDay.getFullYear(),
											   startDay.getMonth(),
											   startDay.getDate(),
											   startTime.slice(0,2),
											   startTime.slice(3,5),
											   0));

		var endDay = $('#endDay').datepicker('getDate');
		var endTime = $('#selbox_endTime').val();

		var end_at = makeTimeFormat(new Date(endDay.getFullYear(),
											 endDay.getMonth(),
											 endDay.getDate(),
											 endTime.slice(0,2),
											 endTime.slice(3,5),
											 0));

		if(way == 'round'){
			/* TO-DO  2013.02.15
			 * 편도일땐 class_id 불필요, way 필드 동적 처리 */
			$.doPost('https://www.socar.kr/reserve/search', {
				way: way,
				start_at: start_at,
				end_at: end_at,
				loc_type: $.cookie('loc_type'),
				class_id: $('#input_car_class').next().text(),
				lat: $('#input_location_lat').text(),
				lng: $('#input_location_lng').text(),
				zone_id: $('#input_location_zone_id').text(),
				region_name: $('#input_location').val(),
				distance: 1.5
			});
		}
		else{
			$.doPost('https://www.socar.kr/reserve/search_oneway', {
				way: way,
				oneway_id: $('#select_one_way_end').val(),
				start_at: start_at,
				end_at: end_at
			});
		}

		return false;
	});


	$('.btn_reserve').bind('click', function () {
	
	
		var way      = $(this).attr('id');
		var zone_id  = $(this).next().text();
		var car_id   = $(this).next().next().text();
		var start_at = $(this).parent().parent().find('.timeline_start_at').text();
		var end_at   = $(this).parent().parent().find('.timeline_end_at').text();

		if (zone_id === '4458') {
			location.assign('/notice/650');
			return false;
		}

		
			var oneway_id = '';
		

		if($(this).attr('href') == '#unable'){
						alert($(this).attr('title')?$(this).attr('title'):'죄송합니다. 이미 다른 예약이 있거나 이용할 수 없는 시간입니다.');
			return false;
		}
		else if($(this).attr('href') == '#require_login'){

			// alert('로그인이 필요합니다.');
			showLoginLayer(true, '/reserve/flash_confirm', {way:'round',
															start_at:start_at,
															end_at: end_at,
															
																zone_id: zone_id,
															
															car_id: car_id});
			return false;
		}

		$.doPost('https://www.socar.kr/reserve/confirm', {
			way: way,
			
				zone_id: zone_id,
			
			car_id: car_id,
			start_at: start_at,
			end_at: end_at
		});

		return false;
	});

	$('.section').bind('click', function() {
		$(this).find('a.door').click();

		return false;
	});

	//IE 7,8 에서 timeline 클릭시 $('.section').bind('click') 발생 막기
	//안하면 타임라인 슬라이드 or 클릭때마다 접히고 열리고 반복
	$('.timeline').bind('click', function () {
		return false;
	});

	//사용자가 선택한 시간을 타임라인에 맞게 변경
	$select_from = (720 / 10) * $step + 3;
	$select_time = (30 / 10) * $step;


	for(var i in unableArr){

		var rangeWrap    = $('#timeline' + i).find('.rangeWrap');
		var count        = unableArr[i].length / 2;
		var item_counter = 0;

		rangeWrap.append('<em class="unable_count" style="display:none;">' + count + '</em>');
		for(var j = 0; j < count; j++){
			rangeWrap.append('<span class="unable' + j + '">예약불가</span>');
			rangeWrap.append('<em style="display:none;"></em>');
			rangeWrap.append('<em style="display:none;"></em>');

			$('#timeline' + i).find('.unable' + j).css('left',unableArr[i][item_counter] * $unit);
			$('#timeline' + i).find('.unable' + j).next().text(unableArr[i][item_counter++]);

			$('#timeline' + i).find('.unable' + j).width(unableArr[i][item_counter] * $unit);
			$('#timeline' + i).find('.unable' + j).next().next().text(unableArr[i][item_counter++]);
		}

		$('#slider-range' + i).slider({

			range: true,
			min: 0,
			max: $timeline_width,
			values: [ $select_from, $select_from + $select_time ],
			step: $step,
			stop: function( event, ui) {
				if(!$(this).parent().parent().find('.door').hasClass('op') || ui.values[0] < 3 || ui.values[1] > $timeline_width - 3){
					return false;
				}
				//해당 타임라인 id
				var t_line = $(this).attr('id');

				//기존 overlap span 제거
				$(this).find('.overlap').css('display', 'none');

				//collision 세팅
				var collision_obj = $(this).find('.ui-slider-range').collision('#' + t_line + ' .rangeWrap span', {
					as:"<div />",
					relative: $(this).parent().find('.rangeWrap')
				});

				//collision 개수만큼 overlap 생성
				//생성 대신 기존 overlap을 숨겨두고 속성 변경으로 처리 (IE 7,8 에서 element append시 드래그 끊김 문제)
				for(var k = 0; k < collision_obj.length; k++){
				   var l = $(collision_obj[k]).css('left');
				   var w = $(collision_obj[k]).css('width');

				   $(this).find('.'+k).css('display', 'block');
				   $(this).find('.'+k).css('left', l);
				   $(this).find('.'+k).css('width', w);
				}

				var btn_reserve_parent = $(this).parent().parent().find('.rvBtn');
				if(collision_obj.length > 0){ //예약 불가능 설정
					$(btn_reserve_parent).addClass('unable');
					$(btn_reserve_parent).children('.btn_reserve').attr('href', '#unable');
					$(this).next().html('죄송합니다. 이미 다른 예약이 있거나 이용할 수 없는 시간입니다.');
					$(this).next().removeClass('amount');
					$(this).next().addClass('alert');
				}
				else{ //예약 가능 설정
					var s = ui.values[0].toFixed(1);
					var e = ui.values[1].toFixed(1);
					var tmp_start = $tmp_start_at;

					var start_at = new Date(tmp_start.substr(0,4), tmp_start.substr(5,2)-1, tmp_start.substr(8,2),
										 0, 0, 0);;
					var end_at   = new Date(tmp_start.substr(0,4), tmp_start.substr(5,2)-1, tmp_start.substr(8,2),
										 0, 0, 0);

					start_at.addHours(parseInt(s) - 3);
					switch(s.substr(s.indexOf('.') + 1, 1)){
						case '2':
							start_at.addMinutes(10);
							break;
						case '3':
							start_at.addMinutes(20);
							break;
						case '5':
							start_at.addMinutes(30);
							break;
						case '7':
							start_at.addMinutes(40);
							break;
						case '8':
							start_at.addMinutes(50);
							break;
					}

					end_at.addHours(parseInt(e) - 3);
					switch(e.substr(e.indexOf('.') + 1, 1)){
						case '2':
							end_at.addMinutes(10);
							break;
						case '3':
							end_at.addMinutes(20);
							break;
						case '5':
							end_at.addMinutes(30);
							break;
						case '7':
							end_at.addMinutes(40);
							break;
						case '8':
							end_at.addMinutes(50);
							break;
					}
					var now = new Date();

					if(now.getTime() > start_at.getTime()){
						$(btn_reserve_parent).addClass('unable');
						$(btn_reserve_parent).children('.btn_reserve').attr('href', '#unable');
						$(this).next().html('죄송합니다. 현재 시간보다 이전 시간을 대여일로 지정할 수 없습니다.');
						$(this).next().removeClass('amount');
						$(this).next().addClass('alert');
						return false;
					}

					if(getRentTime(start_at, end_at) < 30){
						$(btn_reserve_parent).addClass('unable');
						$(btn_reserve_parent).children('.btn_reserve').attr('href', '#unable');
						$(this).next().html('죄송합니다. 대여시간이 너무 짧습니다. 최소 대여시간은 30분입니다.');
						$(this).next().removeClass('amount');
						$(this).next().addClass('alert');
						return false;
					}

					if(getRentTime(start_at, end_at) > 7200){
						$(btn_reserve_parent).addClass('unable');
						$(btn_reserve_parent).children('.btn_reserve').attr('href', '#unable');
						$(this).next().html('죄송합니다. 최대 사용시간은 120시간 입니다. 120시간 이상 예약은 고객센터(1661-3315)로 문의해 주세요.');
						$(this).next().removeClass('amount');
						$(this).next().addClass('alert');
						return false;
					}

					$(btn_reserve_parent).removeClass('unable');
					$(btn_reserve_parent).children('.btn_reserve').attr('href', $isLogin ? '#' : '#require_login');
					$(this).next().removeClass('alert');
					$(this).next().addClass('amount');

					$(this).children('.timeline_start_at').text(makeTimeFormat(start_at));
					$(this).children('.timeline_end_at').text(makeTimeFormat(end_at));

					// slider 위치에 따라 총 대여요금, 정회원 할인가, SO회원 할인가 실시간 update
					{
						var $rsvBtn = $(btn_reserve_parent).children('.btn_reserve');
						var set_way = $rsvBtn.attr('id');
						
						var set_oneway_id = '';
						

						var set_zone_id  = $rsvBtn.next().text();
						var set_car_id   = $rsvBtn.next().next().text();
						var set_start_at = $(this).children('.timeline_start_at').text();
						var set_end_at   = $(this).children('.timeline_end_at').text();
						var num = $(this).attr("num");

						var options = {
							way: set_way,
							oneway_id: set_oneway_id,
							zone_id: set_zone_id,
							car_id: set_car_id,
							start_at: set_start_at,
							end_at: set_end_at,
							member_state: null
						};

						options.member_state = 2;
						getPriceByTerm(options,function(price){
							
							if(price !== null) {
								$("#price-s"+num).text(number_format(price) + '원'); //SO회원 할인가
							}
							

							return false;
						});
					}

					$(this).next().html( "대여기간 : <strong>" +
										 makeDateStringWithDay(start_at) + " ~ " +
										 makeDateStringWithDay(end_at) + "</strong>" +
										 '  (총 ' + makeRentTimeString(start_at, end_at) + ')');
				}
			},
			slide: function( event, ui ) {
				if(!$(this).parent().parent().find('.door').hasClass('op') || ui.values[0] < 3 || ui.values[1] > $timeline_width - 3){
					return false;
				}
				//해당 타임라인 id
				var t_line = $(this).attr('id');

				//기존 overlap span 제거
				$(this).find('.overlap').css('display', 'none');

				//collision 세팅
				var collision_obj = $(this).find('.ui-slider-range').collision('#' + t_line + ' .rangeWrap span', {
					as:"<div />",
					relative: $(this).parent().find('.rangeWrap')
				});

				//collision 개수만큼 overlap 생성
				//생성 대신 기존 overlap을 숨겨두고 속성 변경으로 처리 (IE 7,8 에서 element append시 드래그 끊김 문제)
				for(var k = 0; k < collision_obj.length; k++){
				   var l = $(collision_obj[k]).css('left');
				   var w = $(collision_obj[k]).css('width');

				   $(this).find('.'+k).css('display', 'block');
				   $(this).find('.'+k).css('left', l);
				   $(this).find('.'+k).css('width', w);

				}
				// $(this).next().html( "대여기간 : <strong>" + ui.values[ 0 ] + " ~ " + ui.values[ 1 ] + "</strong>");
			}
		});
		$('#amount' + i).html("대여기간 : <strong>2017.09.21 목 12:00 ~ " +
							  "2017.09.21 목 12:30</strong>" +
							  "  (총 0시간 30분)");

		//collision 세팅
		var collision_obj = $(".ui-slider-range").collision('#slider-range' + i + ' .rangeWrap span', {
			as:"<div />",
			relative: $('.rangeWrap')
		});

		//collision 개수만큼 overlap 생성
		//생성 대신 기존 overlap을 숨겨두고 속성 변경으로 처리 (IE 7,8 에서 element append시 드래그 끊김 문제)
		for(var k = 0; k < collision_obj.length; k++){
			var l = $(collision_obj[k]).css('left');
			var w = $(collision_obj[k]).css('width');

			$('#slider-range' + i).find('.'+k).css('display', 'block');
			$('#slider-range' + i).find('.'+k).css('left', l);
			$('#slider-range' + i).find('.'+k).css('width', w);
		}
	}

	$('#reservation .list .door').click(function(){
		var timeline = $(this).next().text();
		$(this).parent('.section').toggleClass('open');
		$(this).toggleClass('op');

		if($(this).hasClass('op')){
			$unit = 590/$timeline_width;
			$(this).html('접기');
			// $c_width = 590;
			// $b_width = 350;
		} else {
			$unit = 350/$timeline_width;
			$(this).html('자세히');
			// $c_width = 350;
			// $b_width = 590;
		}

		//기존 unable 개수 구해서 새 타임라인 크기에 맞게 left, width 수정
		var unable_count = $('#' + timeline).find('.unable_count').text();
		for(var i = 0; i < unable_count; i++){
			var from = $('#' + timeline).find('.unable' + i + '').next().text();
			var time = $('#' + timeline).find('.unable' + i + '').next().next().text();

			$('#' + timeline).find('.unable' + i + '').width(time * $unit);
			$('#' + timeline).find('.unable' + i + '').css('left',from * $unit);
		}

		//해당 타임라인 id
		var t_line = $(this).parent().find('.timeline').attr('id');

		//기존 overlap span 제거
		$(this).parent().find('.timeline').find('.overlap').css('display', 'none');

		//collision 세팅
		var collision_obj = $(this).parent().find('.ui-slider-range').collision('#' + t_line + ' .rangeWrap span', {
			as:"<div />",
			relative: $(this).parent().find('.rangeWrap')
		});

		//collision 개수만큼 overlap 생성
		//생성 대신 기존 overlap을 숨겨두고 속성 변경으로 처리 (IE 7,8 에서 element append시 드래그 끊김 문제)
		for(var k = 0; k < collision_obj.length; k++){
		   var l = $(collision_obj[k]).css('left');
		   var w = $(collision_obj[k]).css('width');

		   $(this).parent().find('.timeline').find('.'+k).css('display', 'block');
		   $(this).parent().find('.timeline').find('.'+k).css('left', l);
		   $(this).parent().find('.timeline').find('.'+k).css('width', w);
		}

		return false;
	});

	timerGetRolling = setInterval(function(){rolling()}, 5000);

	$("#rolling").mouseenter(function(){
		clearInterval(timerGetRolling);
		timerGetRolling = null;
	}).mouseleave(function() {
		timerGetRolling = setInterval(function(){rolling()}, 5000);
	});

	$('.section').first().click();

	$(".zone_info_popup").click(function(e){
		e.stopPropagation();
		var url = "https://api.socar.kr/reserve/zone_info?zone_id=";
		var zone_id = $(this).attr('value');
		bind_map_zone_name(zone_id, url);

	});


		
			$('#selbox_endTime').empty().data('options');
			for(var i = 0; i < 24; i++){
				var option;
				for(var j = 0; j < 60; j += 10){
					option = '<option value=' + i.zeroPad(10) + ':' + j.zeroPad(10) + '>' +
							 i.zeroPad(10) + ':' + j.zeroPad(10) + '</option>';
					$('#selbox_endTime').append(option);
				}
			}
//		}
		
		$('#selbox_endTime').val('12:30');
	//}
});

</script>
</head>

<body id="reservation" class="reservation">


<div id="wrap">

<jsp:include page="/template/Header.jsp" />


	<div id="container">
		<div id="content">
			<h2><img src='//web-assets.socar.kr/template/asset/images/reservation/h2.gif' alt="쏘카예약" /></h2>
			<!-- by smartNHW -->
			<div id="zoneNavi">
				<ul>
					<li class="bar-short"><a href="/reserve#all">전국</a></li>
					<li class="bar-short"><a href="/reserve#seoul">서울</a></li>
					<li class="bar-short"><a href="/reserve#ggincheon">인천·경기</a></li>
					<li class="bar-short"><a href="/reserve#gangwon">강원</a></li>
					<li class="bar-short"><a href="/reserve#daejeon">대전·충청</a></li>
					<li class="bar-short"><a href="/reserve#daegu">대구·경북</a></li>
					<li class="bar-short"><a href="/reserve#gwangju">광주·전라</a></li>
					<li class="bar-short"><a href="/reserve#busan">부산·경남</a></li>
					<li class="bar-short"><a href="/reserve#jeju">제주</a></li>
				</ul>
				<span class="navi-title">지역 바로가기</span>
			</div>
			<!-- map -->
			<div id="mapArea">
				<!-- 나눔카 링크 -->

				<div id="NanumCar_btn" style="position:absolute;top:3px;right:99px;z-index:1000; display:'block';">
					<a href="#" onclick="javascript:openNanumCar();return false;"><img src='//web-assets.socar.kr/template/asset/images/seoul/btn_all.png' alt="나눔카 전체보기" /></a>
				</div>

				<!-- 실시간 예약 -->
				<div id="setting" class="open">
					<div class="setting-box">
						<h3><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_title.png' alt="실시간 예약" /></h3>
						<div class="setting-option">
							<form name="reservation" method="post" action="">
								<fieldset>
									<div class="group">
										<table cellspacing="0">
										<tr>
											<th><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_txt1.gif' alt="여정" /></th>
											<td>
												<label for="type1">
													<input id="radio_round" value="round" type="radio" name="type" id="type1" checked="checked" />
													왕복
												</label>
												<label for="type2">
													<input id="radio_oneway" value="oneway" type="radio" name="type" id="type2" />
													<span style="font-size: 12px; background-color: rgb(255, 228, 0); color: rgb(255, 0, 0);">
													</span>
													편도
													
												</label>
											</td>
										</tr>
										</table>
									</div>
									<div class="group">
										<table cellspacing="0">
										<tr>
											<th><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_txt2.gif' alt="대여일" /></th>
											<td>
												<!-- <input id="startDay" type="text" class="input calendar" style="width:103px;" value="" /> -->
												<input id="startDay" type="text" class="input calendar" style="width:103px;" value="" readonly />
												<select id="selbox_startTime">
													<!-- <option selected="selected">10:30</option> -->
												</select>
											</td>
										</tr>
										<tr>
											<th><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_txt3.gif' alt="반납일" /></th>
											<td>
												<!-- <input id="endDay" type="text" class="input calendar" style="width:103px;" value="" /> -->
												<input id="endDay" type="text" class="input calendar" style="width:103px;" value="" readonly />
												<select id="selbox_endTime">
													<!-- <option selected="selected">10:30</option> -->
												</select>
											</td>
										</tr>
										</table>
									</div>
									<div class="group">
										<table cellspacing="0">
										<!-- spock 왕복 설정 UI-->
										<tr id="round_way_wrap">
											<th rowspan="2"><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_txt4.gif' alt="지역" /></th>
											<td>
												<input id="input_location" type="text" class="input location" placeholder="쏘카존·지역·차종 검색" style="width:169px;" value="" />
												<em id="input_location_zone_id" style="display:none;"></em>
												<em id="input_location_oneway_id" style="display:none;"></em>
												<em id="input_location_lat" style="display:none;"></em>
												<em id="input_location_lng" style="display:none;"></em>
											</td>
										</tr>
										<tr id="cur_pos_wrap">
											<td>
												<label style="display:none;" for="currentPosition" class="currentPosition">
													<input type="checkbox" id="currentPosition" />
													현재 접속위치 사용
												</label>
											</td>
										</tr>
										<!-- spock 편도 설정 UI -->
										<tr id="one_way_start_wrap" style="display:none;">
											<th>
												<label style="margin-right: -5px">대여존</label>
											</th>
											<td>
												<select id="select_one_way_start" style="width: 169px;"></select>
											</td>
										</tr>
										<tr id="one_way_end_wrap" style="display:none;">
											<th>
												<label style="margin-right: -5px">반납존</label>
											</th>
											<td>
												<select id="select_one_way_end" style="width: 169px;"></select>
											</td>
										</tr>
										</table>
									</div>
									<div class="group" id="select_car_wrap">
										<table cellspacing="0">
										<tr>
											<th><img src='//web-assets.socar.kr/template/asset/images/reservation/setting_txt5.gif' alt="차종" /></th>
											<td>
												<input id="input_car_class" type="text" class="input socar" style="width:169px;" value="전체차종" />
												<em style="display:none;"></em>
											</td>
										</tr>
										</table>
									</div>
									<p class="btn">
										<input id="btn_search_socar" type="image" src='//web-assets.socar.kr/template/asset/images/reservation/btn_setting_socar.gif' alt="쏘카찾기" onclick="return false;" />
									</p>

									<!-- 왕복 지역 -->
									<div id="socarzone" class="option-layer">
										<div class="search">
											<label for="input_loc" class="i_label">지역명, 쏘카존</label>
											<input type="text" id="input_loc" class="input i_text" style="width:225px" value="" /><input id="btn_search_loc" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/reservation/btn_location_search.gif' alt="검색" />
										</div>
										<h4><a><span>최근 이용한 쏘카존</span></a></h4>
										<div id="recently_list_wrapper" class="result">
											<ul id="recently_list">
											</ul>
										</div>
										<div id="autoComplete">
											<ul id="ul_search_result">
												<!-- 자동완성 영역 -->
											</ul>
										</div>
									</div>
									<!-- //왕복 지역 -->

									<!-- 편도 노선 -->
									<div id="oneway_list" class="option-layer">
										<h4><a><span>편도 노선선택</span></a></h4>
										<div class="list">
											<ul id="ul_oneway_search_result">
											</ul>
										</div>
									</div>
									<!-- 편도 노선 -->

									<!-- 차종 -->
									<div id="socar" class="option-layer">
										<h4><a><span>차종선택</span></a></h4>
										<div class="list">
											<ul id="ul_car_search_result">
											</ul>
										</div>
									</div>
									<!-- //차종 -->
								</fieldset>
							</form>
						</div>
						<div class="ico-desc">
						<!-- by smartNHW
							<img src='//web-assets.socar.kr/template/asset/images/reservation/ico_desc.png' alt="" />
						-->
						<img src='//web-assets.socar.kr/template/asset/images/reservation/ico_desc_n.png' alt="" />
						</div>
						<div class="setting-refresh">
							<a id="btn_refresh" href="#"><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_refresh.png' alt="새로고침" /></a>
						</div>
						<div class="setting-hidden">
							<a href="#"><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_minus.png' alt="실시간 예약 접기" /></a>
						</div>
					</div>

					<div class="setting-show">
						<a href="#"><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_plus.png' alt="실시간 예약 펼치기" /></a>
					</div>
				</div>
				<!-- //실시간 예약 -->
				<div class="mapWrap">
					<div id="map" style="width:982px; height:474px"></div>
				</div>
			</div>
			<!-- //map -->

			
			<!-- list -->
			<div id="search_result_table" class="list">
				<form name="socar" method="post" action="">
					<fieldset>
						<div class="list-header">
							<h3 class="blind">쏘카목록</h3>
<!-- spock 낮은 주목도로 인한 제거
<ul id='rolling'><li><a href='http://goo.gl/SXf8B6' target='_blank'><span style='color:#0E99DC; font-weight:bold;'>[쿠폰북]</span> 신나게 밤새놀자. 9 to 9 올나잇! 모닝이 12시간 동안 9,900원!! <span style='color:red; font-size:11px; text-decoration:underline;'>자세히 보기</span></a></li><li><a href='http://goo.gl/rOHJbd' target='_blank'><span style='color:#0E99DC; font-weight:bold;'>[쿠폰북]</span> 아침부터 점심까지 끝없는 쏘카 할인! 최대 56% 할인쿠폰을 받아보세요! (4/23~) <span style='color:red; font-size:11px; text-decoration:underline;'>자세히 보기</span></a></li></ul>
-->
							<p class="select">
								<select>
									<option selected="selected">전체 쏘카보기</option>
								</select>
							</p><br>
							<table cellspacing="0">
							<colgroup><col width="137" /><col width="478" /><col width="200" /><col width="84" /><col /></colgroup>
							<tr>
								<th><a href="#">쏘카존</a></th>
								<th>차량</th>
								<th><a href="#">대여요금</a></th>
								<th>주행요금</th>
								<th>&nbsp;</th>
							</tr>
							</table>
						</div>
						
						

							
								<div class="section">
									<div class="arti">
										<h4 class="zone_info_popup" value="5237">${dto.soz_name}</h4>
										<em style="display:none;">5237</em>
										<!-- <span>0.4km</span> -->
									</div>
									<div class="carInfo">
										<p class="thumb"><a href="#" class="carDetail"><img src='//web-assets.socar.kr/template/asset/images/car_image/car046.png' /></a></p>
										<div class="desc">
											
												<h5>${dto.car_name}<strong>${dto.car_nick}</strong> </h5>
											
											<em style="display:none;">8471</em>
											<div class="spec">
												유종 : <em>${dto.car_fuel}</em><br />
												옵션 : ${dto.car_trans},${dto.car_i_safe_option},${dto.car_i_add_option}
												<!--<a href="#" class="more carDetail view_detail_car">더보기</a>-->
											</div>
										</div>
									</div>

									<!-- 타임라인 -->
									<div id="timeline0" class="timelineWrap">
										<p class="noti"><img src='//web-assets.socar.kr/template/asset/images/reservation/list_noti.gif' alt="" /></p>
										<div id="slider-range0" num="0" class="timeline time24">
											<div class="rangeWrap">
												<a class="ui-slider-handle" href="#"></a>
												<a class="ui-slider-handle next" href="#"></a>
											</div>
											
												<span class="t1 time date">09.21</span>
												<span class="t2 time">06:00</span>
												<span class="t3 time">12:00</span>
												<span class="t4 time">18:00</span>
												<span class="t5 time date">09.22</span>
											
											<em class="timeline_start_at" style="display:none;">2017-09-21T12:00:00+09:00</em>
											<em class="timeline_end_at" style="display:none;">2017-09-21T12:30:00+09:00</em>
											<span class="overlap 0" style="display: none;"></span>
											<span class="overlap 1" style="display: none;"></span>
											<span class="overlap 2" style="display: none;"></span>
											<span class="overlap 3" style="display: none;"></span>
											<span class="overlap 4" style="display: none;"></span>
											<span class="overlap 5" style="display: none;"></span>
											<span class="overlap 6" style="display: none;"></span>
											<span class="overlap 7" style="display: none;"></span>
											<span class="overlap 8" style="display: none;"></span>
											<span class="overlap 9" style="display: none;"></span>
											<span class="overlap 10" style="display: none;"></span>
											<span class="overlap 11" style="display: none;"></span>
										</div>
										
											<p id="amount0" class="amount"></p>
										
									</div>
									<!-- //타임라인 -->

									<!-- 대여요금 -->
									<div class="price price_info">
									<!-- 기준요금이  할인가보다  클  경우에만  기준요금  표시 -->
									
										<dl>
											<dt>SO회원 할인가</dt>
											<dd><strong id="price-s0">${dto.car_price_so} 원</strong></dd>
										</dl>
									
									</div>
									<!-- //대여요금 -->

									<!-- 주행요금 -->
									
									<div class="oil">${dto.car_drive_price}원/km</div>
									
									<!-- //주행요금 -->

									<div class='rvBtn '>
										
										<a id="round" class="btn_reserve" title=''
											
												
													href="#require_login"
												
											><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_list_reservation.gif' alt="예약" /></a>
										<em style="display:none;">5237</em>
										<em style="display:none;">8471</em>
									</div>

									<a href="#" class="door">자세히</a>
									<em style="display:none;">timeline0</em>
								</div>								
							
							
						

					</fieldset>
				</form>
			</div>
			<!-- //list -->
			

			<!-- TO-DO  2013.02.17
				 페이지네이션 추가
			-->
			<!-- paginate -->
<!-- 			<div class="paginate">
				<a href="#" class="direction prev"><img src='//web-assets.socar.kr/template/asset/images/common/btn_board_prev.gif' alt="첫 페이지" /></a>
				<strong>1</strong>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
				<a href="#" class="direction next"><img src='//web-assets.socar.kr/template/asset/images/common/btn_board_next.gif' alt="끝 페이지" /></a>
			</div> -->
			<!-- //paginate -->
		</div>


		
<style type="text/css">

/* aside */
div.aside{position:fixed; top:111px; right:0; width:51px; height:150px; border-bottom:1px solid #dadada; z-index:10000;} /*height:225px*/
div.aside ul a{display:block; width:51px; height:73px; overflow:hidden; text-indent:-9999em; background:url('//web-assets.socar.kr/template/asset/images/common/quick_side_menu_141111.gif') no-repeat;border-bottom:1px dotted #BBB;border-left:1px solid #BBB; }
div.aside a.quick1{background-position:-1px -76px;}
div.aside a.quick2{background-position:-1px -151px;}
div.aside a.quick3{background-position:-1px -226px;} 
div.aside a.quick4{background-position:-1px -1px;} 
div.aside a.quick5{background-position:-1px -301px;} 
div.aside a.quick6{background-position:-1px -301px;} 

div.aside a.quick1:hover{background-position:-60px -76px;}
div.aside a.quick2:hover{background-position:-60px -151px;}
div.aside a.quick3:hover{background-position:-60px -226px;} 
div.aside a.quick4:hover{background-position:-60px -1px;} 
div.aside a.quick5:hover{background-position:-60px -301px;}
div.aside a.quick6:hover{background-position:-60px -301px;}

div.aside ul :first-child a{border-top:1px solid #BBB;}  
div.aside ul :last-child a{border-bottom:1px solid #BBB;}  
</style>
<!-- quick -->
<div class="aside">
	<ul>
		<li>
			<a href="#" class="quick4" title="쏘카쿠폰 혜택">쏘카쿠폰 혜택</a>
		</li>
		
		
		
		<li>
			<a href="#" class="quick2" title="주행요금 계산하기">주행요금 계산하기</a>
		</li>
		<li>
			<a href="#" class="quick3" title="쏘카존 신청하기">쏘카존 신청하기</a>
		</li>

	</ul>
</div>

<style type="text/css">
	.aside_more {
		position: fixed;
		top: 111px;
		right: 51px;
		z-index: 10000;
	}
</style>

<div class="aside_more"><img src='//web-assets.socar.kr/template/asset/images/common/banner_more.png' alt="더보기" />
</div>

<!-- //quick -->
	</div>

	<!-- footer -->
<div id="footer">
  <div class="gr">
    <ul class="footer-menu">
      <li><a href=https://www.socar.kr/about class="menu1" title="회사소개">회사소개</a></li>
      <li><a href="https://goo.gl/Aqsjr5" title="채용안내" target="_blank" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='//web-assets.socar.kr/template/asset/images/common/footer_menu_recruit_new.png' alt="채용안내"></a></li>
      <li><a href="https://www.dropbox.com/sh/qiypdh3xl3mmktf/AAAlXsdhOZUY3HTPcvcwPXfCa?dl=0" target="_blank" class="menu2" title="보도자료">보도자료</a></li>
<!-- 2015.07.29 -->
      <li><a href=https://www.socar.kr/terms title="회원이용약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='//web-assets.socar.kr/template/asset/images/common/footer_menu_member_n.png' alt="회원이용약관" /></a></li>
      <li><a href=https://www.socar.kr/privacy class="menu5" title="개인정보처리방침">개인정보처리방침</a></li>
      <li><a href=https://www.socar.kr/rent_terms title="자동차대여약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='//web-assets.socar.kr/template/asset/images/common/footer_menu_rental_n2.png' alt="자동차대여약관" /></a></li>
      <li><a href=https://www.socar.kr/gis_terms title="위치기반서비스 이용약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='//web-assets.socar.kr/template/asset/images/common/footer_menu_location_n.png' alt="위치기반서비스 이용약관" /></a></li>

<!--// 2015.07.29 -->
    </ul>
    <address>
			<img src='//web-assets.socar.kr/template/asset/images/common/footer_address.png?v=3' alt="(주) 쏘카 통신판매업 신고 : 제 2011-제주조천-0021호, 정보보호 담당자 : 김명훈, 사업자등록번호 : 616-81-90529  대표자 : 이재용
Tel : 1661-3315, Fax : 02-6969-9333, 주소 : 제주특별자치도 제주시 도령로 129, 5층 (연동, 드림플라자) 63126" />
		</address>
    <p class="copyright"><img style="margin-top:15px;" src='//web-assets.socar.kr/template/asset/images/common/footer_copyright_n2.png' alt="Copyright © 2013 SOCAR  All rights reserved." /></p>
    <div class="ccm"><a href="/impact"><img style="margin-top:15px;" src='//web-assets.socar.kr/template/asset/images/common/ccm.png' /></a></div>
    <div class="eco"><a href="/impact"><img style="margin-top:15px;" src='//web-assets.socar.kr/template/asset/images/common/eco.png?v=4' /></a></div>
    <div class="bcorp"><a href="/impact"><img style="margin-top:15px;" src='//web-assets.socar.kr/template/asset/images/common/bcorp.jpg' /></a></div>
    <div class="csa"><a href="http://carsharing.org/" target="_blank"><img style="margin-top:15px;" src='//web-assets.socar.kr/template/asset/images/common/csa.png' /></a></div>
  </div>

  <ul class="sns">
  	<li><a href="https://www.facebook.com/socarsharing" target="_blank" class="sns1" title="SOCAR Facebook">SOCAR Facebook</a></li>
  	<li><a href="http://blog.socar.kr/" target="_blank" class="sns3" title="SOCAR Blog">SOCAR Blog</a></li>
  	<li><a href="mailto:info@socar.kr" class="sns4" title="info@socar.kr">E-mail</a></li>
  </ul>
</div>
<!-- //footer -->


	<div class="mwLayer">
		<div class="bg"></div>
		<div id="mwCont">
			<!-- login -->
<div class="login mwCont">
	<form name="login" method="post" action="https://www.socar.kr/user/login">
		<input id="redirect" name="redirect" type="hidden" value=""/>
		<input id="redirect_data" name="redirect_data" type="hidden" value=""/>
		<fieldset>
			<dl>
				<dt><img alt="아이디" src='//web-assets.socar.kr/template/asset/images/common/new/id.png' /></dt>
				<dd><input type="text" class="input" name="email" /></dd>
				<dt><img alt="비밀번호" src='//web-assets.socar.kr/template/asset/images/common/new/pw.png' /></dt>
				<dd><input type="password" class="input" name="password" /></dd>
			</dl>
			<input type="image" src='//web-assets.socar.kr/template/asset/images/common/new/btn_login.png' class="submit" id="login_btn" />

		</fieldset>
	</form>

	<ul>
		<li><a title="회원가입" class="lg1" href="https://www.socar.kr/join"><img src='//web-assets.socar.kr/template/asset/images/common/new/join.png' alt="회원가입" /></a></li>
		<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img src='//web-assets.socar.kr/template/asset/images/common/new/idpw.png' alt="아이디·비밀번호 찾기" /></a></li>
	</ul>

	<!-- SNS 로그인 -->
	<div class="box_sns">
		<a href="#" id="fb_login" class="left"><img src='//web-assets.socar.kr/template/asset/images/common/new/fb3_n.png' alt="페이스북" /></a>
		<a href="#" id="naver_login" class="center"><img src='//web-assets.socar.kr/template/asset/images/common/new/nv3_n.png' alt="네이버" /></a>
		<a href="#" id="kakao_login" class="right"><img src='//web-assets.socar.kr/template/asset/images/common/new/cco3.png' alt="카카오톡" /></a>
	</div>
</div>
<!-- //login -->

<!-- finding id -->
<div class="findingId finding mwCont">
	<ul>
		<li><a href="#" class="lg1" title="아이디 찾기">아이디 찾기</a></li>
		<li><a href="#" class="lg2" title="비밀번호 찾기">비밀번호 찾기</a></li>
	</ul>

	<form name="findingId" method="post" action="">
		<fieldset>
			<dl>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_email_name" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif' alt="휴대폰" /></dt>
				<dd>
					<select id="find_email_num1" style="width:51px;">
						<option selected="selected">010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select> -
					<input id="find_email_num2" type="text" class="input" style="padding:0; width:41px; text-align:center;" /> -
					<input id="find_email_num3" type="text" class="input" style="padding:0; width:41px; text-align:center;" />
				</dd>
			</dl>
			<input id="btn_find_email" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
		</fieldset>
	</form>
</div>
<!-- //finding id -->

<!-- finding pw -->
<div class="findingPw finding mwCont">
	<ul>
		<li><a href="#" class="lg1" title="아이디 찾기">아이디 찾기</a></li>
		<li><a href="#" class="lg2" title="비밀번호 찾기">비밀번호 찾기</a></li>
	</ul>

	<form name="findingPw" method="post" action="">
		<fieldset>
			<dl>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt2.gif' alt="아이디 (이메일)" /></dt>
				<dd><input id="find_pw_email" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_pw_name" type="text" class="input" /></dd>
				<dt><img src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif' alt="휴대폰" /></dt>
				<dd>
					<select id="find_pw_num1" style="width:51px;">
					<option selected="selected">010</option>
					<option>011</option>
					<option>016</option>
					<option>017</option>
					<option>018</option>
					<option>019</option>
					</select> -
					<input id="find_pw_num2" type="text" class="input" style="padding:0; width:41px; text-align:center;" /> -
					<input id="find_pw_num3" type="text" class="input" style="padding:0; width:41px; text-align:center;" />
				</dd>
			</dl>
			<input id="btn_find_pw" type="image" class="submit" src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
		</fieldset>
	</form>
</div>
<!-- //finding pw -->

            <!-- 주행요금 계산기 -->
            <div class="oilL mwCont">
                <h4><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt1_n.gif' alt="주행요금 계산기" /></h4>
                <form name="oil" method="post" action="">
                    <fieldset>
                        <div class="oilForm">
                            <dl>
                            <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt2.gif' alt="차종" /></dt>
                            <dd>
                            	<select id="oil_carlist" class='oilSelect' style="width:165px;height:28px;font-size: 12px;border-color: #c6cace;">
                            	<option selected='selected' value="">차종 선택</option>
								</select>
                            </dd>
                            <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt3.gif' alt="거리" /></dt>
                            <dd>
                                <input type="text" id="oilDistance" class="input" />
                            </dd>
                            </dl>
                            <input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_calculate.gif' class="submit" alt="계산" />
                        </div>
                        <p class="oilTxt">
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt4.gif' alt="차종과 거리를 선택해주세요" />
                        </p>
                        <p class="oilResult">
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt15_n.gif' alt="예상 주행요금은" />
                            <span>14,500</span>
                            <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt16.gif' alt="원 입니다." />
                        </p>
                    </fieldset>
                </form>

                <p class="txt">
                    <img src='//web-assets.socar.kr/template/asset/images/common/oil_txt6_n.gif' alt="주행요금은 차량 이용 후 실제 이동거리에 따라 부과되므로, 예상 주행요금과 차이가 있을 수 있습니다." />
                </p>

                <div class="noti">
                    <h5><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt7.gif' alt="계산기이용하기" /></h5>
                    <ol>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt8.gif' alt="1. 지도서비스에서 출발, 도착지를 설정후 자동차 길찾기를 하세요." /></li>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt9.gif' alt="2. 길찾기 결과의 총거리를 확인하세요." /></li>
                    <li><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt10_n.gif' alt="3. 차종과 총거리를 입력하고 주행요금을 미리 예상해보세요." /></li>
                    </ol>

                    <dl>
                    <dt><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt11.gif' alt="지도서비스" /></dt>
                    <dd><a href="http://map.daum.net/?target=car" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt12.gif' alt="다음" /></a></dd>
                    <dd><a href="http://map.naver.com/index.nhn?menu=route" target="_blank"><img src='//web-assets.socar.kr/template/asset/images/common/oil_txt13.gif' alt="네이버" /></a></dd>
                    </dl>
                </div>
            </div>
            <!-- //주행요금 계산기 -->
			

			<div id="askzone_div" class="requestL mwCont">
				<h4 style="height:29px;margin-left:0;"><img src='//web-assets.socar.kr/template/asset/images/common/request_txt3.gif' alt="우리동네 쏘카존 신청하기!!" /></h4>
				<p class="txt" style="height:50px;margin-left:0;">
					<img src='//web-assets.socar.kr/template/asset/images/common/request_txt2.gif' alt="여러분의 의견을 듣고 함께하는 쏘카! 신청서를 작성해주시면 쏘카존을 만들때 참고하겠습니다." />
					<span style="padding-left:33px;">
					
					</span>
				</p>

				<form name="request" method="post" action="">
					<fieldset>
						<div class="requestForm" style="padding-bottom:15px;">
							
							<input type="text" id="search_ask_address" name="search_ask_address" data-in="false" class="input" style="width:420px;height:30px;padding-left:10px;color:#999;" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" onclick="alert('로그인 후 작성이 가능합니다.');return false;" />
							<input type="hidden" id="search_lat" value="0" />
							<input type="hidden" id="search_lng" value="0" />
							
							<div class="wrap_loSoting" style="display:none;" id="addr_layer">
								<ul class="result"></ul>
							</div>
							<div class="wrap_loSoting" style="display:none;" id="search_none_addr_layer">
								<ul>
									<li><a href="#">검색된 결과가 없습니다.</a></li>
								</ul>
							</div>
							<textarea id="layer_askzone_text" cols="" rows="" class="textarea" data-in="false" style="width:420px;height:64px;margin-top:10px;color:#999;" onclick="alert('로그인 후 작성이 가능합니다.');return false;">자세한 내용을 적어주세요. (선택사항)</textarea>
							<div style="width:432px;padding-top:9px;margin-top:12px;border-top:1px solid #eaeaea;text-align:center;">
								<input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_socarzone_submit.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" alt="신청하기">
							</div>
							
						</div>
					</fieldset>
				</form>
				<div class="box_titsoting">
					<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/common/txt_socarzone.gif' alt="쏘카존 신청현황" /></div>
					<div class="soting">
						
						<a href="#" id="search_all">전체</a>
						<span class="txt_bar">|</span>
						<a href="#" id="search_region">지역별 찾기 <span style="font-size:11px;font-family:arial" id="search_arrow">▼</span></a>
					</div>
					<div class="lay_location" id="search_region_layer" style="display:none;">
						<span class="lay_tit">다른지역 찾기</span>
						<input type="text" id="search_address" name="search_address" data-in="false" class="input" style="width:263px;height:26px;padding-left:10px;border-right:0 none;color:#999" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" />
						<a href="#" id="search_askzone_submit"><img src='//web-assets.socar.kr/template/asset/images/common/btn_search.gif' /></a>
					</div>
					<div class="wrap_loSoting" id="addr_search_layer" style="display:none;">
						<ul class="result"></ul>
					</div>
					<div class="wrap_loSoting" style="display:none;" id="search_none_addr_search_layer">
						<ul>
							<li><a href="#">검색된 결과가 없습니다.</a></li>
						</ul>
					</div>
				</div>
				<div id="requestList_wrap" style="margin-top:14px; width:466px; height:295px; border:1px solid #d3d3d3; overflow-y:scroll;overflow-x:hidden;">
					<div id="requestList">
						<div id="askzone_wrap" class="wrap">
						</div>
					</div>
					<input type="hidden" name="last_id" id="last_id" value="" />
				</div>
				<p id="btn_askzone_close" class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" title="닫기"></a></p>
			</div>
			<!-- 친구추천 -->
			<div class="inviteL mwCont">
				<div class="inbox">
					<h4><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt1.gif' alt="친구야! 쏘카같이타자!" /></h4>
					<p class="txt">
						<img src='//web-assets.socar.kr/template/asset/images/common/invite_txt2_20151015.png' alt="친구, 지인들에게 카셰어링 쏘카를 추천하시고, 추천 받은 분이 쏘카에 가입하면, 초대한 사람에게 1만원+1만원 무료 쿠폰을 드립니다." />
					</p>
					<ol>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt3_20151015.png' alt="Step1 함께 하는 마음 담아 쏘카 초대 메일 발송" /></li>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt4.gif' alt="Step2 친구가 받은 메일의 링크를 통해 회원가입하기" /></li>
					<li><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt5_20151015.png' alt="Step3 친구가 SO회원 가입 완료하면 1만원+1만원 쿠폰 자동 발급" /></li>
					</ol>
					<form name="invite" method="post" action="">
						<fieldset>
							<div class="inviteForm">
								<dl>
								<dt><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt6.gif' alt="받는 사람" /></dt>
								<dd>
									<label for="inviteMail" class="i_label">여러명인 경우 쉼표(,)로 구분해주세요.</label>
									<input type="text" id="inviteMail" class="input i_text" />
								</dd>
								</dl>
								<p class="tip1">최대 5개의 메일주소 입력이 가능</p>
								<dl>
								<dt><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt7.gif' alt="초대 메세지" /></dt>
								<dd>
									<label for="inviteCont" class="i_label">메세지를 입력해주세요.</label>
									<textarea id="inviteCont" class="textarea i_text" cols="" rows=""></textarea>
								</dd>
								</dl>
								<!-- <p class="tip2"><em>1</em> / 100</p> -->
							</div>
							<p class="centerBtn">
								<input id="inviteSubmit" type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_send.gif' alt="발송하기" />
							</p>
						</fieldset>
					</form>
				</div>
				<div class="info">
					<h5><img src='//web-assets.socar.kr/template/asset/images/common/invite_txt8.gif' alt="알려드립니다." /></h5>
					<ul>
						<li>초대받은 친구가 결제카드 등록 및 면허승인을 완료하면, 두분 모두에게 친구초대 쿠폰을 드려요.</li>
					</ul>
				</div>
			</div>
			<!-- //친구추천 -->


		<div id="askcar_div" class="car_requestL mwCont" style="display: block;">
			<h4 style="height:57px;padding-bottom:40px"><img src='//web-assets.socar.kr/template/asset/images/garage/pop_tit.jpg' alt="쏘카로 원하는 차종 신청하기 !!" title="쏘카로 원하는 차종 신청하기 !!"></h4>
			<form name="request" method="post" action="">
				<fieldset>
					<div class="requestForm">
						
						<textarea id="layer_askcar_text" cols="" rows="" class="textarea" onclick="alert('로그인 후 작성이 가능합니다.');return false;"></textarea>
						<input type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_request.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" class="submit" alt="신청">
						
					</div>
				</fieldset>
			</form>
			<p id="btn_askcar_close" class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif' alt="닫기" title="닫기"></a></p>
		</div>


			<div class="socarcardLayer mwCont">
				<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/mypage/socarcardLayer_tit.gif' alt="쏘카카드 발급 신청하기" /></div>
				<p class="txt">쏘카카드 발급 신청과 동시에 1,500원이 결제됩니다.</p>
				<p class="more">※ 기본정보에서 우편 수취가 가능한 주소인지 확인해주세요.</p>
				<div class="centerBtn">
					<a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_confirm.gif' id="socarcard_request" alt="확인" /></a>
					<a href="#"><img src='//web-assets.socar.kr/template/asset/images/customer/btn_cancel.gif' id="socarcard_request_cancel" alt="취소" /></a>
				</div>
				<div id="member_card_regist_indicator" style="display:none;
					background:url('//web-assets.socar.kr/template/asset/images/common/loading.gif') no-repeat 50% 50%;
					background-size:auto 32px;
					position:absolute;
					top:0;bottom:0;left:0;right:0;
					margin-top:auto;
					margin-bottom:auto;
					margin-left:auto;
					margin-right:auto;
					width:100%;
					height:100%;
					background-color:#fff;
					opacity:.7;
					-moz-opacity:.7;
					filter:alpha(opacity=70);
					z-index: 100000;">
				</div>
			</div>
<style type="text/css">
.result_none {width: 100%; height: 40px; line-height: 40px; text-align: center; background-color: #fafafa; border: 1px solid #d3d3d3;}
.result_none p {font-size: 1.2em; font-weight: bold; line-height:40px;}
</style>

<script type="text/javascript">


var $base_url = 'https://www.socar.kr/';


var sns_proc = null;

$(function(){
	$('.lg1').click(function() {
		var cookie = get_cookie('approach_from_nanumcar');
		if (cookie === 'true') {
			set_cookie('approach_from_nanumcar', null);
			location.href = "http://www.seoulnanumcar.com/member/registForm";
			return false;
		}

		location.assign('/join');
	});

	switch(window.location.hash) {
	case '#quick1':
		$(".aside .quick1").click();
		break;
	case '#quick2':
		$(".aside .quick2").click();
		break;
	case '#quick3':
		$(".aside .quick3").click();
		break;
	case '#quick4':
		$(".aside .quick4").click();
		break;
	case '#quick6':
		$(".aside .quick6").click();
		break;
	default:
		break;
	}



	//SNS 로그인 by tary 2014-02-05
	var options = {
		auth_token : '',
		currentURL : (document.URL.split('?')[0]).split('#')[0],
		fb_init : true,
		naver_init : true,
		kakao_init : true,
		sns_logout_url	: "https://api.socar.kr/user/sns_connect_close",
		fb_request_uri	: "https://api.socar.kr/facebook/get_oauth_uri",
		fb_oauth_uri	: "https://api.socar.kr/facebook/get_access_token",
		naver_request_uri: "https://api.socar.kr/naver/get_request_token",
		naver_oauth_uri	: "https://api.socar.kr/naver/get_access_token",
		kakao_request_uri	: "https://api.socar.kr/kakao/get_request_token",
		kakao_oauth_uri	: "https://api.socar.kr/kakao/get_access_token",
	
		conType : 'login',
		handler : {
			fb_login_hdlr : SNSlogInHdlr,
			fb_logout_hdlr : SNSlogOutHdlr,
			naver_login_hdlr : SNSlogInHdlr,
			naver_logout_hdlr : SNSlogOutHdlr,
			kakao_login_hdlr : SNSlogInHdlr,
			kakao_logout_hdlr : SNSlogOutHdlr
		}
	
	};

	sns_proc = $().snsInterlock(options);

	$("#fb_login").unbind("click");
	$("#naver_login").unbind("click");
	$("#kakao_login").unbind("click");

	$("#fb_login, #naver_login, #kakao_login").bind("click", function() {
		var id = $(this).attr("id");
		var redirect = $('#redirect').val();
		var redirect_data	= $('#redirect_data').val();

		set_cookie('tmp_login_redirect', redirect);
		set_cookie('tmp_login_redirect_data', redirect_data);

		if(id == 'fb_login') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_login'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}

		return false;
	});

	$("#fb_close").unbind("click");
	$("#naver_close").unbind("click");
	$("#kakao_close").unbind("click");

	$("#fb_close").bind("click", sns_proc.fb_logout);
	$("#naver_close").bind("click",sns_proc.naver_logout);
	$("#kakao_close").bind("click",sns_proc.kakao_logout);

	$("#fb_join").unbind("click");
	$("#naver_join").unbind("click");
	$("#kakao_join").unbind("click");

	$("#fb_join, #naver_join, #kakao_join").bind("click", function() {
		set_cookie('tmp_ref_type','join');

		var id = $(this).attr("id");

		if(id == 'fb_join') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_join'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}
		return false;
	});

	$("#email_join").unbind("click");
	$("#email_join").bind("click", function() {
		var email = $("#join_input_email").val();

		if($.trim(email) == '') {
			alert('가입하실 이메일을 입력해주세요');
			return false;
		}

		if(!is_email(email)){
			alert('이메일 형식이 잘못되었습니다. 다시 입력해주세요.');
			return false;
		}

		var invite = '';
	//친구추천 URL
	

		//제휴코드를 직접 입력했을 경우
		var tmp_invite = $.cookie('tmp_invite');
		if(tmp_invite != null && tmp_invite != '') {
			set_cookie('tmp_invite', null);
			invite = tmp_invite;
		}

		$("#invite").val(invite);
		showJoinLayer(true, email);
		return false;
	});

	bindSNSInterlock();


	var $askTimeSet = false;
	var $askTimerId = null;
	$('#search_ask_address').bind('keyup', function (e) {
		if($askTimeSet == true){
			clearInterval($askTimerId);
		}
		$askTimerId = setInterval(function(){
			$askTimeSet = false;
			clearInterval($askTimerId);
			var input = $('#search_ask_address').val();
			if(input == '' || input.length == 0){
				$("#addr_layer").hide();
				return;
			}

			getAddr('addr_layer','search_ask_address', $askTimeSet, $askTimerId);
		},200 );
		$askTimeSet = true;
	});

	var $sTimeSet = false;
	var $sTimerId = null;
	$('#search_address').bind('keyup', function (e) {
		if($sTimeSet == true){
			clearInterval($sTimerId);
		}
		$sTimerId = setInterval(function(){
			$sTimeSet = false;
			clearInterval($sTimerId);
			var input = $('#search_address').val();
			if(input == '' || input.length == 0){
				$("#addr_search_layer").hide();
				return;
			}

			getAddr('addr_search_layer','search_address', $sTimeSet, $sTimerId);
		},200 );
		$sTimeSet = true;
	});

	var searchStr = '주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교';
	$('#search_ask_address').focusin(function(){
		$(this).css('border-color','#8c8c8c');

		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(searchStr).css("color","#999");
		}

		return false;
	});

	var comment = '자세한 내용을 적어주세요. (선택사항)';
	$('#layer_askzone_text').focusin(function(){
		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(comment).css("color","#999");
		}

		return false;
	});

	var searchListStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동';
	$('#search_address').focusin(function(){
		$(this).css('border-color','#8c8c8c');

		if( $(this).attr("data-in") == 'false'){
			$(this).val('').css('color','#222');
		}

		return false;
	}).focusout(function(){
		$(this).css('border-color','#c6cace');

		if( $.trim($(this).val()) != "" ){
			$(this).attr("data-in","true");
		}
		else{
			$(this).attr("data-in","false");
			$(this).val(searchListStr).css("color","#999");
		}

		return false;
	});

	$('#layer_askzone_submit').bind('click', function(){
		if($('#askzone_div').data('disabled')){
			return false;
		}

		var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
			commendStr = '자세한 내용을 적어주세요. (선택사항)';

		var address = $('#search_ask_address').attr('data-in'),
			contents = $('#layer_askzone_text').attr('data-in');

		if(address == 'false' || $.trim($('#search_ask_address').val()) == addrStr){
			alert('쏘카존으로 신청하실 주소를 입력해주세요.');
			return false;
		}
		else{
			address = $.trim($('#search_ask_address').val());
		}

		var lat = $('#search_lat').val(),
			lng = $('#search_lng').val();

		if(contents == 'false'){
			contents = '';
		}
		else{
			contents = $('#layer_askzone_text').val();
		}

		var writer = null, password=null;


		writer = $.trim($('#layer_askzone_email').val());
		password = $.trim($('#layer_askzone_password').val());

		if(writer == '' || writer == null){
			alert('이메일을 입력해 주세요.');
			return false;
		}

		if(!is_email(writer)){
			alert('이메일 형식이 잘못되었습니다. 다시 입력해주세요.');
			return false;
		}

		if(password == '' || password == null){
			alert('비밀번호를 입력해 주세요. 글 삭제시 필요합니다.');
			return false;
		}

		$.ajax({
			type: 'POST',
			url: "https://api.socar.kr/zone/candidate_ex/create",
			data: {
				auth_token: '',
				address : address,
				lat : lat,
				lng : lng,
				contents: contents,
				writer : writer,
				password : password,
				channel: 'www',
				user_agent : navigator.userAgent
			},
			dataType: 'json',
			beforeSend: function(){
				$('#askzone_div').data('disabled',true);
			},
			success : function(res){
				$('#search_ask_address').val('').focusout();
				$('#layer_askzone_text').val('').focusout();


				$('#layer_askzone_email').val('');
				$('#layer_askzone_password').val('');

				$('#search_region_layer').hide();
				$("#addr_search_layer").hide();
				$('#search_arrow').text('▼');
				$('#search_none_addr_search_layer').hide();
				$('#search_address').val('').focusout();

				alert("쏘카존 신청이 잘 접수되었습니다. 동네에 쏘카존이 열리면 가장 먼저 알려드릴게요!");

				build_list(true);
			},
			error : function(xhr){
				$('#askzone_div').data('disabled',false);
				alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요. [code: ' + xhr.status + ']');
			},
			complete: function(){
				$('#askzone_div').data('disabled',false);
			}
		});

		return false;
	});

	$('#search_askzone_submit').bind('click', function(){
		var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
			address = $('#search_address').attr('data-in');

		if(address == 'false' || $.trim($('#search_address').val()) == addrStr){
			alert('검색하실 주소를 입력해주세요.');
			return false;
		}

		$(document).data('my_request', 0);

		build_list(true);

		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();

		return false;
	});

	$("#search_all").bind('click',function(){
		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();
		$('#search_address').val('').focusout();
		$(document).data('my_request', 0);

		build_list(true);

		return false;
	});

	$('#my_requests').click(function(){
		$('#search_region_layer').hide();
		$("#addr_search_layer").hide();
		$('#search_arrow').text('▼');
		$('#search_none_addr_search_layer').hide();
		$('#search_address').val('').focusout();
		$(document).data('my_request', 1);

		build_list(true);

		return false;
	});

	$('#search_region').bind('click',function(){
		var $search_layer = $('#search_region_layer'),
			$search_arrow = $('#search_arrow'),
			$search_layer_list = $("#addr_search_layer");

		if($search_layer.css('display') == 'none'){
			$search_layer.show();
			$search_arrow.text('▲');
			$('#search_address').val('').focusout();
		}
		else{
			$search_layer.hide();
			$search_layer_list.hide();
			$search_arrow.text('▼');
			$('#search_none_addr_search_layer').hide();
		}

		return false;
	});

	$('body').on('click.agree', 'a[class^=agree_count]', function(e){
		if($(document).data("disabled")) {
			alert('추천 처리중입니다.');
			return false;
		}

		var id = $(e.currentTarget).data("id");

		if($(e.currentTarget).hasClass('hit')){
			alert('이미 추천하셨습니다.');
			return false;
		}

		vote(id,1);

		return false;
	});

	$('body').on('click.dellayer', 'a[class^=deleteBtn]', function(e){
		var id = $(e.currentTarget).data("id"),
			ismine = $(e.currentTarget).data("mine");

		if(ismine){
			removeItem(id);
		}
		else{
			$('#pw_'+id).show();
		}

		return false;
	});

	$('body').on('click.delcancel', 'input[class^=deleteCancel]', function(e){
		var id = $(e.currentTarget).data("id");
		$('#delitem_'+id).val('');
		$('#pw_'+id).hide();

		return false;
	});

	$('body').on('click.delok', 'input[class^=deleteOk]', function(e){
		var id = $(e.currentTarget).data("id"),
			pwd = $('#delitem_' + id).val();

		if($.trim(pwd) == ''){
			alert('비밀번호를 입력해 주세요.');
			return false;
		}

		removeItem(id,pwd);

		return false;
	});

	$('body').on('click.disagree', 'a[class^=disagree_count]', function(e){
		if($(document).data("disabled")) {
			alert('비추천 처리중입니다.');
			return false;
		}

		var id = $(e.currentTarget).data("id");

		if($(e.currentTarget).hasClass('hit')){
			alert('이미 비추천하셨습니다.');
			return false;
		}

		vote(id,0);

		return false;
	});
});

function build_list(init){
	var $list = $('#requestList_wrap');

	if($list.data("disabled-vscroll")) {
		return;
	}

	if(init){
		$("#last_id").val('');
		$(document).data('post-count', 0);
	}

	var last_id = $.trim($("#last_id").val()),
		$askzone_wrap = $('#askzone_wrap'),
		output = new StringBuffer();

	if(last_id == ''){
		$askzone_wrap.empty();
	}

	var addrStr = '동/읍/면 이름을 입력해주세요!  ex) 합정동',
		address = $('#search_address').attr('data-in');

	if(address == 'false' || $.trim($('#search_address').val()) == addrStr){
		address = '';
	}
	else{
		address = $.trim($('#search_address').val());
	}

//	console.log($('document').data('my_request'));

	$.ajax({
		type: 'GET',
		url : "https://api.socar.kr/zone/candidate_ex",
		crossDomain: true,
		data: {
			auth_token: '',
			last_id: last_id,
			address : address,
			my_request : $(document).data('my_request')
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$list.data("disabled-vscroll",true);
			output.append('<div id="list-indicator" style="width:auto;height:32px;background:url(\'//web-assets.socar.kr/template/asset/images/common/loading.gif\') 50% 50% no-repeat;"></div>');

			$list.append(output.toString());
			output.clear();
		},
		success: function(res){
			if(res.retCode == 1){
				var last_list_id = res.result.last_list_id,
					result = res.result.data;

				if(result.length > 0){
					for(var i in result){
						var replyItem = $("<div />",{
							id : 'unit_' + result[i].id,
							class: 'unit'
						});

						output.append('<h1>' + result[i].writer + '</h1>');

						if(result[i].address !== '' && result[i].address != null){
							output.append('<p class="location">' +  result[i].address + '</p>');
						}

						output.append('<p class="txt">' + result[i].contents + '</p>');
						output.append('<p class="date">' + result[i].created_at + '<a href="#" style="margin-left: 5px;" class="deleteBtn" data-id="' + result[i].id + '" data-mine="' + result[i].is_mine + '">');
						output.append('<img src=\'//web-assets.socar.kr/template/asset/images/common/btn_delete.gif\' alt="삭제"></a></p>');
						output.append('<div class="pw" id="pw_' + result[i].id + '">비밀번호&nbsp;<input type="password" class="input" name="delitem_' + result[i].id + '" id="delitem_' + result[i].id + '" value="" />');
						output.append('<input type="image" class="deleteOk" data-id="' + result[i].id + '" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_delete.gif\' alt="확인">&nbsp;');
						output.append('<input type="image" class="deleteCancel" data-id="' + result[i].id + '" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_cancel.gif\' alt="취소"> </div>');

						var agree_class = "agree_count",
							disagree_class = "disagree_count";

						if(result[i].agree_mine == 1) agree_class += " hit";
						if(result[i].disagree_mine == 1) disagree_class += " hit";

						output.append('<ul><li class="good"><a href="#" class="' + agree_class +'" id="agree_' + result[i].id + '" data-id="' + result[i].id + '">' + result[i].agree_count + '</a></li>');
						output.append('<li class="notgood"><a href="#" class="' + disagree_class + '" id="disagree_' + result[i].id + '" data-id="' + result[i].id + '">' + result[i].disagree_count + '</a></li></ul>');
						output.append('</div>');

						$(replyItem).append(output.toString());
						output.clear();

						$askzone_wrap.append(replyItem);
					}

					$("#last_id").val(last_list_id);

					//현재까지 로딩한 게시물 수 업데이트
					var current_count = $(document).data('post-count');
					$(document).data('post-count', parseInt(current_count) + parseInt(result.length));
				}
				else{
					$askzone_wrap.append('<div class="unit" style="text-align:center;">검색된 결과가 없습니다.</div>');
				}
			}
		},
		error : function(xhr){
			$list.data("disabled-vscroll",false);
			$("#list-indicator").remove();

			alert('일시적인 오류가 발생하였습니다. 잠시 후 다시 시도해 주세요');
		},
		complete: function(){
			$list.data("disabled-vscroll",false);
			$("#list-indicator").remove();
		}
	});

	return;
}

function vote(id, type){
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/zone/candidate_ex/vote",
		crossDomain: true,
		data: {
			auth_token: '',
			candidate_id: id,
			type: type
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$(document).data("disabled",true);
		},
		success: function(json){
			if(json.retCode == 1){
				var res = json.result,
					candidate_id	= res.candidate_id,
					agree_count		= res.agree_count,
					disagree_count	= res.disagree_count;

				if(type == 0){
					$('#disagree_' + candidate_id).addClass('hit').empty().text(disagree_count);
				}
				else{
					$('#agree_' + candidate_id).addClass('hit').empty().text(agree_count);
				}
			}
			else{
				alert(json.retMsg);
			}
		},
		error: function(){
			alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
			$(document).data("disabled",false);
		},
		complete: function(){
			$(document).data("disabled",false);
		}
	});

	return;
}

function removeItem(id,passwd){
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/zone/candidate_ex/remove",
		crossDomain: true,
		data: {
			auth_token: '',
			candidate_id: id,
			password: passwd
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$(document).data("disabled",true);
		},
		success: function(json){
			if(json.retCode == 1){
				$("#unit_" + id).remove();
				alert('정상적으로 삭제되었습니다.');
			}
			else{
				alert(json.retMsg);
			}
		},
		error: function(){
			alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
			$(document).data("disabled",false);
		},
		complete: function(){
			$(document).data("disabled",false);
		}
	});

	return;
}

function initVirtualScroll(){
	var $scrlBody = $('#requestList_wrap');
	$(document).data('post-count', 0);

	$scrlBody.unbind("scroll.data");
	$scrlBody.bind("scroll.data", function(){
		//현재까지 로딩한 게시물이 30개 넘어가면 더 이상 스크롤 안함
		if (parseInt($(document).data('post-count')) >= 30) {
			return false;
		}
		var scrlTop = $scrlBody.scrollTop();
		var offsetBtm = $('#requestList').height() - $scrlBody.height();

		if(scrlTop == offsetBtm){
			build_list();
		}
	});

	return;
}

function SNSlogInHdlr($data) {
/*
	console.log("member_id: " + $data.member_id);
	console.log("email:" + $data.email);
	console.log("provider: " + $data.provider);
	console.log("username: " + $data.username);
	console.log("oauth_uid: " + $data.oauth_uid);
*/
	var member_id	= $data.member_id,
		email		= $data.email,
		provider	= $data.provider,
		username	= $data.username,
		oauth_uid	= $data.oauth_uid;

	//SNS 간편로그인
	if(member_id !== null && member_id != '') {
		var redirect = get_cookie('tmp_login_redirect');
		var redirect_data = get_cookie('tmp_login_redirect_data');

		set_cookie('tmp_login_redirect', null);
		set_cookie('tmp_login_redirect_data', null);

		$.doPost('https://www.socar.kr/user/login', {
			join_type	: 'sns',
			member_id	: member_id,
			email		: $.trim(email),
			oauth_uid	: oauth_uid,
			provider	: provider,
			redirect	: redirect,
			redirect_data	: redirect_data
		});
	}
	else {
		alert('연동된 SNS계정이 없습니다. 신규가입이나 쏘카계정 로그인을 해주세요.');
		document.location.href=document.URL.split('?')[0];
	}

	return;
}

function SNSlogOutHdlr(provider) {
	if(provider == 'facebook') {
		$("#fb_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"fb_interlock\"><span>연결하기</span></a>");
	}
	else if(provider == 'naver'){
		$("#naver_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"naver_interlock\"><span>연결하기</span></a>");
	}
	else{
		$("#kakao_interlock_info").empty()
		.html("<a href=\"#\" class=\"btnS\" id=\"kakao_interlock\"><span>연결하기</span></a>");
	}

	bindSNSInterlock();
	return;
}

function bindSNSInterlock() {
	$("#fb_interlock").unbind("click");
	$("#naver_interlock").unbind("click");
	$("#kakao_interlock").unbind("click");

	$("#fb_interlock, #naver_interlock, #kakao_interlock").bind("click", function() {
		set_cookie('tmp_ref_type','interlock');

		var id = $(this).attr("id");

		if(id == 'fb_interlock') {
			sns_proc.fb_login();
		}
		else if(id == 'naver_interlock'){
			sns_proc.naver_login();
		}
		else{
			sns_proc.kakao_login();
		}

		return false;
	});
}

function SNSIntlckHdlr() {
	document.location.href='https://www.socar.kr/mypage';
	return;
}

function SNSJoinHdlr($data) {
	var invite		= '',
		id			= $data.id,
		email		= $data.email,
		provider	= $data.provider,
		username	= $data.username,
		oauth_uid	= $data.oauth_uid;

	if(provider == 'kakao' || provider == 'naver') username = '';



	var tmp_invite = $.cookie('tmp_invite');
	if(tmp_invite != null && tmp_invite != '') {
		set_cookie('tmp_invite', null);
		invite = tmp_invite;
	}

	showJoinLayer(false);

	$("#join_name").val(username);
	$("#join_email").val(email);
	$("#sns_connect_id").val(id);
	$("#oauth_uid").val(oauth_uid);
	$("#provider").val(provider);
	$("#join_type").val('sns');
	$("#invite").val(invite);

	$('#mwCont .close').unbind('click');
	$('#mwCont .close').bind('click',function(){
		document.location.href=document.URL.split('?')[0];
	});

	return;
}

function showJoinLayer(bPassword,email){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('joinSNS_Wrap');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .joinSNS_Info').css('display','block');

	// 인증 후 변경 불가 상태 복구
	$("#join_name, #join_mobile").css('border-color','#cdcdcd');
	$("#join_name, #join_mobile").prop('readonly', false);
	$("#join_name, #join_mobile").css('color','#222');
	$("#btn_confirm_num, .tip_auth").show();

	if(bPassword) {
		$("#join_type").val('email');
		$("#join_email").val(email);
		$("#password_input").css('display','block');
	}

	return;
}

function showLoginLayer(alertMessage, redirect_to, redirect_data) {
	if ( redirect_to ) $('#mwCont .login #redirect').val( redirect_to );
	if ( typeof redirect_data == 'object' ) {
		$('#mwCont .login #redirect_data').val( JSON.stringify(redirect_data) );
	}

	if(alertMessage) alert('로그인이 필요합니다.');
	$('#header .util1').click();
}

var $cur_page = 1;
// jQuery.fn.center = function() {
//     return this.each(function(){
//             var el      = $(this);
//             var w       = el.width();
//             var w_box   = $(el).parent().width();
//             var w_total = (w_box - w)/2 + 20; //400
//             var css     = {"position": 'absolute', "left": w_total+"px", "bottom": "15px"};
//             el.css(css)
//     });
// };
$('.require_login').click(function(){
	if ( $(this).data('href') ) {
		showLoginLayer(true, $(this).data('href') );
	} else {
		showLoginLayer(true);
	}
});

$(".aside .quick1").click(function(){
	
				showLoginLayer(true,window.location.pathname+window.location.search+'#quick1');
	

	return false;
});

$('#inviteSubmit').bind('click', function () {
	var mail = $('#inviteMail').val();
	var cont = $('#inviteCont').val();

	if(mail == ''){
		alert('이메일 주소를 입력해주세요.');
		return false;
	}
	else if(cont == ''){
		alert('초대 메세지를 입력해주세요.');
		return false;
	}
	$.blockUI.defaults.css = {
		padding:        10,
		margin:         0,
		width:          '30%',
		top:            '40%',
		left:           '35%',
		textAlign:      'center',
		color:          '#000',
		border:         '2px solid #aaa',
		backgroundColor:'#fff',
		cursor:         'wait'
	};
	$.blockUI( { baseZ: 9999999, message: '<h1 style="font-size: 1.5em;"> 잠시만 기다려 주세요.</h1>'} );
	$.ajax({
		url : $base_url + 'user/invite',
		type : "POST",
		data : {
			email: mail,
			content: cont
		},
		dataType: "json",
		success : function(data){
			$.unblockUI();
			if(data.retCode == '1'){
				alert('초대 메일이 전송되었습니다.');
				$('#inviteMail').val('');
				$('#inviteCont').val('');
				$('#inviteMail').focus();
			}
			else{
				alert(data.retMsg + ' 코드 : ' + data.retCode);
			}
		},
		error : function(){
			$.unblockUI();
			alert('err');
		}
	});

	return false;
});

/* quick oil */
$(".aside .quick2").click(function(){
	$.ajax({
		url : $base_url + 'mypage/json_data',
		type : "POST",
		 data: {
			url: 'cs/oil_price'
		 },
		 dataType: 'json',
		 success: function(json){
			if(json.retCode == 1){

				var result = json.result;
				var car_list = $('#oil_carlist');
				car_list.empty();
				car_list.append('<option value="" selected="selected">차종 선택</option>');
				for(var i in result){
					if(result[i].state==1){
					car_list.append(
					'<option value="' + result[i].oil_price  + '">' +
															result[i].car_name  + ' ('  +
															result[i].oil_price + '원/km)' +
					'</option>');
					}
				}
				$('.oilForm .oilCarList a').click(function(){
					var $car = $(this).attr('title');
					var basic_price = $(this).next().text();

					$('#layer_oil_basic').text(basic_price);

					$('#oilCarSelect').attr('value',$car);
					$('#oilCarSelect').prev('.i_label').css('display','none');
					//$('.oilForm .oilCarList').removeClass('show');
					return false;
				});
			}
			else{
				alert(json.retMsg + ' 코드 : ' + json.retCode);
			}
		 },
		 error: function(){
			  alert('err');
		 }
	});

	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('oilLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .oilL').css('display','block');
	return false;
});

// side_menu - askzone
/*
$(".aside .quick3").click(function(){

	if($('#askzone_iframe').length == 0){
		var iframe         = document.createElement('iframe');
		iframe.id          = 'askzone_iframe';
		iframe.src         = '/cs/askzone';
		iframe.scrolling   = 'yes';

		$('#btn_askzone_close').before(iframe);
	}

	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('requestLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .requestL').css('display','block');

	return false;
});
*/

$(".aside .quick3").click(function(){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('requestLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .requestL').css('display','block');

	build_list(true);
	initVirtualScroll();

	return false;
});

/* coupon book */
$(".aside .quick4").click(function(){
	document.location.href="/couponbook";
	return false;
});

$(".aside .quick5").click(function(){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('company_member_invite_layer');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .company_member_invite_layer_content').css('display','block');
});

$(".aside .quick6").click(function(){
	document.location.href="/reserve/so_together";
	return false;
});

/* 쏘카존 신청 레이어 오픈시 초기화할 함수
var init_askzone = function(json) {
	alert(json.retMsg);
	$('#layer_askzone_text').val('');
	$('#layer_askzone_text').focus();
	$('#layer_askzone_name').val('');
	$('#layer_askzone_password').val('');

	var r = json.result;
	var wrap = $('#askzone_iframe').contents().find('.wrap');
	var created = r.created_at.substr(0, 10) + ' ' + r.created_at.substr(11, 8);

	var div = document.createElement('div');
	$(div).addClass('unit');

	$(div).append(
		'<h1>' + r.writer + '</h1>' +
		'<p class="txt">' + r.contents + '</p>' +
		'<p class="date">' + r.created_at +
			'<a href="#" style="margin-left: 5px;" class="deleteBtn">' +
				'<img src=\'//web-assets.socar.kr/template/asset/images/common/btn_delete.gif\' alt="삭제" />' +
			'</a>' +
		'</p>' +

		'<div class="pw">' +
			'비밀번호' +
			'<input type="text" class="input" />' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<input type="image" class="deleteOk" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_delete.gif\' alt="확인" />' +
			'<input type="image" class="deleteCancel" src=\'//web-assets.socar.kr/template/asset/images/common/btn_request_cancel.gif\' alt="취소" /> ' +
		'</div>' +

		'<ul>' +
		'<li class="good">' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<a href="#" class="hit agree_count">0</a>' +
		'</li>' +
		'<li class="notgood">' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<a class="disagree_count" href="#">0</a>' +
		'</li>' +
		'</ul>');

	$(wrap).prepend(div);

	$(div).find('.deleteBtn').click(function(){
		$(this).parent().next('.pw').css('display','block');
		return false;
	});
	$(div).find('.deleteCancel').click(function(){
		$(this).parent().css('display','none');
		return false;
	});
	$(div).find('.agree_count').click(function(){
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/vote',
				auth_token: '',
				type: 'agree',
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					var count = $(cur).text();
					count = parseInt(count) + 1;
					$(cur).text(count);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
	$(div).find('.disagree_count').click(function(){
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/vote',
				auth_token: '',
				type: 'disagree',
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					var count = $(cur).text();
					count = parseInt(count) + 1;
					$(cur).text(count);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
	$(div).find('.deleteOk').click(function() {
		var pass = $(this).prev().prev().val();
		var cur = $(this);
		$.ajax({
			url : $base_url + 'mypage/json_data',
			type : "POST",
			data: {
				url: 'zone/candidate/remove',
				auth_token: '',
				password: pass,
				candidate_id: $(this).prev().text()
			},
			dataType: 'json',
			success: function(json){
				if(json.retCode == 501){
					alert('로그인이 필요합니다.');
					return;
				}
				alert(json.retMsg);
				if(json.retCode == 1){
					$(cur).parent().css('display','none');
					$(cur).parent().parent().remove();
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	});
}

$('#layer_askzone_submit').bind('click', function () {
	var text = $('#layer_askzone_text').val();
	var name = $('#layer_askzone_name').val();
	var pass = $('#layer_askzone_password').val();

	$.ajax({
		url : $base_url + 'mypage/json_data',
		type : "POST",
		data: {
			url: 'zone/candidate/create',
			auth_token: '',
			writer: name,
			contents: text,
			password: pass
		},
		dataType: 'json',
		success: init_askzone,
		error: function(){
			alert('오류가 발생했습니다. 고객센터에 문의해주세요.');
		}
	});

	return false;
});

$("#requestList .deleteBtn").click(function(){
	$(this).parent().next('.pw').css('display','block');
	return false;
});
$("#requestList .deleteCancel").click(function(){
	$(this).parent().css('display','none');
	return false;
});
*/
</script>
<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505961969" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505961969" charset="utf-8"></script>


			<!-- 쏘카존 -->
<div class="socarzone mwCont">
	<h4 id="layer_zone_name">종각제일은행 주차장</h4>
	<div class="detailInfo" style="height:180px;overflow:auto;">
		<table cellspacing="0">
		<tr id="layer_vehicle_count_row">
			<th><span>운영차량</span></th>
			<td>
				총 <em id="layer_toal_num">5</em>대
				<!-- <a href="#">예약가능 쏘카 보기</a> -->
			</td>
		</tr>
		<tr>
			<th><span>위치</span></th>
			<td id="layer_zone_addr">서울시 강남구 개포1동 123-1 LG개포자이 101동 주차장</td>
		</tr>
		<tr>
			<th><span>운영시간</span></th>
			<td id="layer_oper_time">24</td>
		</tr>
		<tr>
			<th><span>찾아가기</span></th>
			<td id="layer_visit"></td>
		</tr>
		</table>
	</div>
	<div class="socarzoneMapArea">
		<ul>
		<li class="on">
			<span style="display:inline-block;padding-right:10px;height:41px;line-height:41px;font-weight:bold;color:#1ba4e7;">지도/스카이뷰</span>

		</li>
		</ul>

		<div class="socarzonMap">
			<div id="map_small" style="width:479px; height:231px"></div>
		</div>
	</div>
	<p class="centerBtn"><a href="#" class="close"><img src='//web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif' alt="확인" /></a></p>
</div>
<!-- //쏘카존 -->


			<!-- 쏘카보기 -->
<div class="socarDetail mwCont">
  <h4><img src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail.gif" alt="쏘카정보" /></h4>
  <div class="socarInfo">
    <p class="thumb"><img id="layer_car_img" width="250" height="124" src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail1.png"/></p>
    <h5 id="layer_car_name"></h5>
    <dl>
      <dt>기본요금</dt>
      <dd><em id="layer_car_basic_price"></em> (30분)</dd>
      <dt>주행요금</dt>
      <dd><em id="layer_oil_price">(별도고지)</em> (1km)</dd>
    </dl>
  </div>

  <div class="socarSpec first">
    <h6>기본제원</h6>
    <table cellspacing="0">
      <tr>
        <th>제조사</th>
      <td id="layer_car_maker"></td>
      </tr>
      <tr>
        <th>차종/외관</th>
        <td id="layer_car_visual"></td>
      </tr>
      <tr>
        <th>연료</th>
        <td id="layer_car_fuel"></td>
      </tr>
      <tr>
        <th>변속방식</th>
        <td id="layer_car_gearbox"></td>
      </tr>
      <tr>
        <th>승차정원</th>
        <td id="layer_car_capacity"></td>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class1" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class2" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class3" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class4" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class5" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class6" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class7" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />핸즈프리</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class8" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class9" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class10" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class11" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class12" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class13" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class14" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class15" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class16" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class17" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class18" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class19" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class20" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class21" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class22" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class23" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class24" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class25" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class26" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CDP/HUD<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class27" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CDP/HUD<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class28" style="display: none">
  <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class29" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class30" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class31" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class32" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class33" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB<br />브라이택스 카시트</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class34" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />CD플레이어<br />열선시트<br />AUX/USB<br />블루투스</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class35" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class36" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 말리부 -->
  <div class="socarSpec" id="car_class37" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />AUX/USB<br />블루투스</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 정윤) -->
  <div class="socarSpec" id="car_class38" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 K&12) -->
  <div class="socarSpec" id="car_class39" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 어니언) -->
  <div class="socarSpec" id="car_class40" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 GFX) -->
  <div class="socarSpec" id="car_class41" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 문크) -->
  <div class="socarSpec" id="car_class42" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 레이(아트쏘카 설찌) -->
  <div class="socarSpec" id="car_class43" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <!-- 레이(비엔날레) -->
  <div class="socarSpec" id="car_class44" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- K3(비엔날레) -->
  <div class="socarSpec" id="car_class45" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 아이오닉 -->
  <div class="socarSpec" id="car_class46" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <div class="socarSpec" id="car_class47" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>

  <!-- 볼트 -->
  <div class="socarSpec" id="car_class49" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 투싼 -->
  <div class="socarSpec" id="car_class50" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- i30 -->
  <div class="socarSpec" id="car_class51" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
      <th>부가옵션</th>
      <td>에어컨<br />AUX/USB<br />블루투스<br /></td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 레이(유채꽃) -->
  <div class="socarSpec" id="car_class52" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 아이오닉(유채꽃) -->
  <div class="socarSpec" id="car_class53" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 레이(노을) -->
  <div class="socarSpec" id="car_class54" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 아이오닉(노을) -->
  <div class="socarSpec" id="car_class55" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />열선시트<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 올뉴모닝 -->
  <div class="socarSpec" id="car_class56" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
        </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 스팅어 -->
  <div class="socarSpec" id="car_class57" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
      <tr>
        <th>안전옵션</th>
        <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션<br />지능형운전보조장치</td>
      </tr>
      <tr>
        <th>부가옵션</th>
        <td>에어컨<br />AUX/USB<br />블루투스</td>
      </tr>
      <tr>
        <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
      </tr>
    </table>
  </div>
  <!-- 그랜저(경유) -->
  <div class="socarSpec" id="car_class58" style="display: none">
    <h6>옵션정보</h6>
    <table cellspacing="0" style="width:100%">
    <tr>
      <th>안전옵션</th>
      <td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션</td>
    </tr>
    <tr>
      <th>부가옵션</th>
      <td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB</td>
    </tr>
    <tr>
      <th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
    </tr>
    </table>
  </div>

  <div class="clear"></div>
  <p class="centerBtn"><a href="#" class="close"><img src="/template///web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif" alt="확인" /></a></p>
</div>
<!-- //쏘카보기 -->


			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>

</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b0979573216988a82c1321345b2297a"></script>	
<script>
var mapContainer = document.getElementById('map'),

//지도 옵션
mapOption = {center: new daum.maps.LatLng(${zone_dto.soz_latitude}, ${zone_dto.soz_longitude}),//센터 위치
			level:9 //확대 레벨
			};
//지도 생성
var map = new daum.maps.Map(mapContainer,mapOption);



//모든 마커들 표시
var other = [];
var other_position = [];
var other_marker = [];
var other_iwContent = [];
var other_infowindow = [];
var size = ${fn:length(list)};

function close_info(){
	//상세보기 페이지 이기 때문
	//infowindow.close(map,marker);
	for(i=1;i<size+1;i++){
		other_infowindow[i].close(map,other_marker[i]);
	}
}
function move_map(){
	 map.setLevel(9);
	 //panTo안됨
	 map.setCenter(new daum.maps.LatLng(arguments[0], arguments[1]));
}


<c:forEach items="${list}" var="item" varStatus="loop">
	other_position[${loop.count}] = new daum.maps.LatLng(${item.soz_latitude}, ${item.soz_longitude});
	other_marker[${loop.count}] = new daum.maps.Marker({position:other_position[${loop.count}], clickable:true});
	other_marker[${loop.count}].setMap(map);
	other_iwContent[${loop.count}] = '<div style="padding:5px;"><b>${item.soz_name}</b></div><div>${item.soz_loc}</div><div>운영차량: <span style="color:blue">${item.soz_i_car}</span>대/${item.soz_maxcar}대</div><div><a href="<c:url value="/Reserve/SearchResult.do"/>"><img src="//web-assets.socar.kr/template/asset/images/reservation/btn_able_socar.png" alt="예약가능 쏘카 보기"/></a></div>',
	iwRemoveable = true;
	other_infowindow[${loop.count}] = new daum.maps.InfoWindow({content:other_iwContent[${loop.count}],removable:iwRemoveable});		
		<c:if test="${item.soz_code eq zone_dto.soz_code}">
			other_infowindow[${loop.count}].open(map,other_marker[${loop.count}]);
		</c:if>
	daum.maps.event.addListener(other_marker[${loop.count}],'click',function(){
		close_info();
	    move_map(${item.soz_latitude},${item.soz_longitude});
		other_infowindow[${loop.count}].open(map,other_marker[${loop.count}]);					
	});	 			
</c:forEach>

</script>
</html>