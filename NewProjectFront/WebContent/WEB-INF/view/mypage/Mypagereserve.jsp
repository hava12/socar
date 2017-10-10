<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<meta property="og:image" content="${pageContext.request.contextPath}/template/images/pc_m_web_meta_tag.jpg">
		<meta property="og:url" content="https://www.socar.kr/">

		<!-- 유투브 랜딩 연결 -->
		<meta name="google-site-verification" content="HINSnUVovAF2J7CwA3dQ9lqhGBKgkbZ5-cNvG3qazY4" />
	    <!-- 네이버 사이트 확인 -->
	    <meta name="naver-site-verification" content="070f0a98381321c1dbe5b675366712f03d6681d1"/>

		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="icon">
		<link href='//web-assets.socar.kr/template/asset/images/favicon.ico' type="image/x-icon" rel="shortcut icon">
		<link href='${pageContext.request.contextPath}/template/image/header_logo.png?v=20170428' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.banner.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505264825"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505264825"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505264825"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505264825"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505264825"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>


<script type="text/javascript" src="https://apis.daum.net/maps/maps3.js?apikey=9200376e38c344c4dc2ee20a76b6ba19b2605d06&libraries=services" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/css/mypage.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/css/jquery.ui.timepicker.css" />
<script src="${pageContext.request.contextPath}/template/js/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/template/js/jquery.ui.timepicker.js"></script>
<script type="text/javascript">
var $map_small = null;
var $map_small_marker = null;

function commify(n) {
	var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
	n += '';						  // 숫자를 문자열로 변환
	while (reg.test(n))
		n = n.replace(reg, '$1' + ',' + '$2');
	return n;
}

function number_format(yourNumber) {
	var n= yourNumber.toString().split(".");
	n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	return n.join(".");
}

function date_to_string(isostr){
	var p = isostr.match(/\d+/g);
	var return_date = new Date(p[0], p[1] - 1, p[2], p[3], p[4], p[5]);
	var week = new Array('일', '월', '화', '수', '목', '금', '토');
	return return_date.toLocaleDateString() + " " + week[return_date.getDay()] +"요일 "+ return_date.getHours() + ":" + return_date.getMinutes();
}

function dateFromISOType(isostr){
	var p = isostr.match(/\d+/g);
	return new Date(p[0], p[1] - 1, p[2], p[3], p[4], p[5]);
}

$(function(){

	$("#mypage .rvCancelB").click(function(){
		var resv_id = $(this).parent().find('.reserve_id').text();
		$('#reserve_num').text(resv_id);

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/resv_info?resv_id=' + resv_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_cancel_car_name').text(result['car_class']);
					$('#layer_cancel_car_num').text(result['car_num']);
					$('#layer_cancel_duration').text(result['start_at'] + ' - ' + result['end_at']);
					$('#layer_cancel_zone_name').text(result['zone_name']);

					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('rvCancelLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .rvCancel').css('display','block');
				}
				else{
					alert(json.retMsg);
				}
			}
		});

		return false;
	});

	//예약 취소 버튼
	$('#btn_reserve_cancel').bind('click', function () {
		// $('.mwLayer').removeClass('open');
		// $('.mwLayer #mwCont').removeClass();
		// $('.mwLayer .mwCont').css('display','none');
		// $("#calendar").css('display','none');

		var num = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/reserve/cancel/" + num,
			type : "GET",
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					alert('예약취소가 완료되었습니다.');
					$('#mwCont .mypage .close').click();
					document.location.href = '/mypage/reserve';
				}
				else{
					alert(data.retMsg + ' 코드 : ' + data.retCode);
					$('#mwCont .mypage .close').click();
					document.location.href = '/mypage/reserve';
				}
			},
			error : function(){
				alert('err');
			}
		});
		return false;
	});

	//차량 상세 정보
	$('.carDetail').bind('click', function () {
		var car_id = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/car_info?car_id=' + car_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_car_name').text(result['car_name']);
					$('#layer_car_basic_price').text(number_format(result['base_price']) + '원');
					$('#layer_car_maker').text(result['maker']);
					$('#layer_car_visual').text(result['visual']);
					$('#layer_car_fuel').text(result['fuel']);
					$('#layer_car_gearbox').text(result['gearbox']);
					$('#layer_car_capacity').text(result['capacity']);
					$('#layer_car_img').attr('src', '//web-assets.socar.kr/template/asset/images' + result['car_img'][0]);
					$('#layer_oil_price').text(number_format(result['oil_price']) + '원');

					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('socarDetailLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .socarDetail').css('display','block');

//차종별로 상세보기 내역 보이도록 수정
					$('[class="socarSpec"][id^=car_class]').css('display','none');
					var class_selecter = '.mwLayer .socarDetail #car_class' + result['car_class'];
//by 금동
					$(class_selecter).css('display','block');
				}
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;

	}); //$('.view_detail_car') end


	//쏘카존 상세 정보
	$('.socarzoneDetail').bind('click', function () {
		var blank_text = "";
		$('#layer_zone_name').text(blank_text);
		$('#layer_able_num').text(blank_text);
		$('#layer_toal_num').text(blank_text);
		$('#layer_zone_addr').text(blank_text);
		$('#layer_oper_time').text(blank_text);
		$('#layer_oper_way').text(blank_text);
		$('#layer_visit').html(blank_text);

		var zone_id = $(this).prev().text();

		$.ajax({
			url : "https://www.socar.kr/mypage/json_data",
			type : "POST",
			data : {
				url: 'reserve/zone_info?zone_id=' + zone_id
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];

					$('#layer_zone_name').text(result['zone_name']);
					$('#layer_able_num').text(result['able_num']);
					$('#layer_toal_num').text(result['total_num']);
					$('#layer_zone_addr').text(result['zone_addr']);
					$('#layer_oper_time').text(result['oper_time']);
					$('#layer_oper_way').text(result['oper_way']);
										var visit_html = result['visit'];
										if (result['state']) {
											visit_html += result['visit_link'] ? ' <a href="'+result['visit_link']+'" target="_blank">길찾기</a>' : '';
											visit_html += result['link'] ? ' <a href="'+result['link']+'" target="_blank">상세안내</a>' : '';
											visit_html += result['notice'] ? '<p style="padding-top:5px">' + result['notice'] + '</p>' : '';
										}
										$('#layer_visit').html(visit_html);


					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('socarzoneLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .socarzone').css('display','block');

					//존 정보 레이어에 작은 맵 생성
					if($map_small == null){
						$map_small = new daum.maps.Map(document.getElementById('map_small'), {
							center: new daum.maps.LatLng(result['lat'], result['lng']),
							level: 5
						});
						var mapTypeControl = new daum.maps.MapTypeControl();
						$map_small.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
					}
					//마커 생성
					if($map_small_marker == null){
						$map_small_marker = new daum.maps.Marker({ position: new daum.maps.LatLng(result['lat'], result['lng'])});
						$map_small_marker.setMap($map_small);
					}
					else{
						var pos = new daum.maps.LatLng(result['lat'], result['lng']);
						$map_small.setCenter(pos);
						$map_small.setLevel(5);
						$map_small_marker.setPosition(pos);
					}
				} //if(retCode == 1)
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('err');
			}
		});

		return false;
	}); //$('.socarzoneDetail').bind


	//반납 연장 레이어 확인 버튼
	$('#layer_btn_extend').bind('click', function () {

		var reserve_id = $(this).prev().text();
		var end_date   = $('#layer_input_endDay').val();
		var end_time   = $('#layer_input_endTime').timepicker('getTime');
		var end_at	 = end_date.replace(/\./g, '-') + 'T' + end_time + ':00+09:00';

		// spock 연장하기 전에 연장 예정금액을 보여준다.
		var extend_car_id = $( "#"+reserve_id+"_car_id" ).html();
		var extend_way_type = $( "#"+reserve_id+"_reserve_way" ).html(); // 일단은 round로 통일 계산.
		var extend_start_at = $( "#"+reserve_id+"_reserve_end_at" ).html();
		var extend_end_at = end_at;
		var extend_zone_id = $( "#"+reserve_id+"_zone_id" ).html();
		var extend_price  = 0;
		var extend_oneway_id = $( "#"+reserve_id+"_oneway_id" ).html();

		if(extend_start_at == end_at){
			alert("예약 종료시간과 반납 연장시간이 일치합니다.\n다른 시간을 정해주십시오.")
			return;
		}
		if( dateFromISOType(extend_start_at) > dateFromISOType(end_at) ){
			alert("반납 연장시간이 예약 종료시간보다 이전입니다.\n다른 시간을 정해주십시오.")
			return;
		}

		$.ajax({
			type: 'POST',
			url : "https://www.socar.kr/mypage/json_data",
			data: {
				url: "reserve/price",
				way : extend_way_type,
				start_at : extend_start_at,
				end_at : extend_end_at,
				car_id : extend_car_id,
				zone_id : extend_zone_id,
				oneway_id : extend_oneway_id,
				reservation_id: reserve_id,
				extend : 1,
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc'
			},
			dataType: 'json',
			success: function(json){
				var retCode = json['retCode'];
				if(retCode == 1){
					var result = json['result'];
					extend_price = parseInt(result['price_dis'], 10);

					if (result.pre_deductible_type && result.protection_fee_table) {
						var protection_fee = result.protection_fee_table[result.pre_deductible_type].total_fee;
		        extend_price += parseInt(protection_fee, 10);
					}

					var message = "반납을 연장하시겠습니까? 연장후 취소는 불가합니다.\n";
					message += "·변경 반납일 : " + date_to_string(end_at)  + "\n";
					message += "·추가 과금액 : " + commify(extend_price) + "원";
					var end_at_timestamp = new Date(end_at).getTime() / 1000;

					if( confirm( message ) ) {
						$.ajax({
							url : "https://www.socar.kr/reserve/extend",
							type : "POST",
							data : {
								reservation_id: reserve_id,
								end_at: end_at_timestamp
							},
							dataType: "json",
							success : function(data){
								if(data.retCode == '1'){
									alert('반납연장 되었습니다.');
									$('#mwCont .mypage .close').click();
									window.location.href = '/mypage/reserve';
								}
								else{
									alert(data.retMsg + ' 코드: ' + data.retCode);
								}
							},
							error : function(){
								alert('err');
							}
						});
					}
					return false;
				}
				else{
					alert(json['retMsg'] + ' 코드 : ' + json['retCode']);
				}
			},
			error: function(){
				alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요');
			}
		});
		// end
	});

	//연장 버튼
	$("#mypage .rvExtendB").click(function(){


		var reserve_id = $(this).parent().find('.reserve_id').text();
		var start_at   = $(this).parent().find('.reserve_start_at').text();
		var end_at	 = $(this).parent().find('.reserve_end_at').text();

		$('#layer_reserve_id').text(reserve_id);

		$('#layer_input_endDay').datepicker({
			dateFormat: 'yy.mm.dd',
			showMonthAfterYear: true,
			minDate: new Date(end_at.substr(0,4),
							  end_at.substr(5,2) - 1,
							  end_at.substr(8,2), 0, 0, 0),
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
		});

		$('#layer_input_startDay').val(start_at.substr(0, 10).replace(/-/g, '.'));
		$('#layer_input_startTime').val(start_at.substr(11, 5));

		$('#layer_input_endDay').datepicker('setDate', new Date(  end_at.substr(0,4),
																  end_at.substr(5,2)-1,
																  end_at.substr(8,2), 0, 0, 0));
		$('#layer_input_endTime').val(end_at.substr(11, 5));

		$('#layer_input_endTime').timepicker({
			showPeriodLabels: false,
			defaultTime: end_at.substr(11, 5),
			atPosition: 'top bottom',
			hourText: '시',
			minuteText: '분',
			minutes: {starts: 0, ends: 50, interval: 10},
			showCloseButton: true,
			closeButtonText: '확인'
		})

		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('rvExtendLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .rvExtend').css('display','block');
		return false;
	});
	$('.btn_payment_detail').bind('click', function () {
		var url  = '/mypage/payment_detail/' + $(this).attr('value');
		window.open(url, 'payment', 'width=380,height=700, scrollbars=yes');

		return false;
	});

	$('.btn_reserve_print').bind('click', function () {
		var url  = '/receipt/' + $(this).attr('value');
		window.open(url, 'reserve_print', 'width=700,height=997, scrollbars=yes');

		return false;
	});

})
</script>
</head>

<body id="mypage" class="reservation">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src="${pageContext.request.contextPath}/template/image/h2.gif" alt="마이페이지
내 정보와 예약내역, 쿠폰 등을 확인할 수 있습니다." /></h2>

			<div class="box lnb">
				                <!-- lnb -->
                <ul class="lnb">
                <li><a href="<c:url value='/Mypage/Mypage.do'/>" title="내 정보" class="lnb1">내 정보</a></li>
                <li><a href="<c:url value='/Mypage/Mypagereserve.do'/>" title="예약내역" class="lnb3">예약내역 <span>${reserveCount}</span></a></li>
                <li><a href="<c:url value='/Mypage/Mypagecoupon.do'/>" title="내 쿠폰" class="lnb4">내 쿠폰 <span>${couponCount}</span></a></li>
                <li><a href="<c:url value='/Mypage/Mypagepayment.do'/>" title="결제내역" class="lnb5">결제내역</a></li>
                </ul>
                <!-- //lnb -->

				<div class="section">
					<div class="group">

						<h3 class="tit_corp">
							<img src="${pageContext.request.contextPath}/template/image/reservation_txt1.gif" alt="예약내역" /> <span>${reserveCount}</span> <img src="${pageContext.request.contextPath}/template/image/reservation_txt2.gif" alt="건" />
						</h3>

						<div class="gbx">
							<ul>
							<li>예약변경은 반납연장만 가능합니다. 대여기간 수정, 지역 및 차종 변경은 취소 후 새로 예약해주세요.</li>
							<li>반납연장은 반납 예정 시각 30분 이전까지만 가능하며, 다른 회원의 예약이 이미 존재하는 경우에는 반납연장이 불가합니다.</li>
							<li>예약취소 시 대여요금과 보험료의 각 10%에 해당하는 수수료가 부과될 수 있습니다.</li>
							</ul>
						</div>

						
							<table cellspacing="0" class="cols">
							<thead>
							<tr>
								<th colspan="2">예약</th>
								<th>총 요금</th>
								<th>상태</th>
								
							</tr>
							</thead>
							<tbody>
							
							<c:if test="${empty res_list }" var="existRes">
								<tr><td colspan="5">예약이 없습니다.</td></tr>
							</c:if>
							<c:if test="${not existRes }">
								<c:forEach items="${res_list}" var="item">
								<tr class="over">
									<td>
										<p class="thumb">
											<em class="car_id" style="display:none;">7268</em>
											<a href="#" class="carDetail">
												<img src="/NewProjectAdmin/Upload/${item.car_img}" alt="이미지에러"/>												
											</a>
										</p>
									</td>
									<td class="info">
										<h4>
											<em id="7292917_car_id" class="car_id" style="display:none;">7268</em>
											<a href="#" class="carDetail">${item.car_name}</a> (${item.car_i_num})
										</h4>
										<div class="desc">
											<fmt:formatDate value="${item.res_date_start}" pattern="yyyy.MM.dd E HH:mm"/> - <fmt:formatDate value="${item.res_date_end}" pattern="yyyy.MM.dd E HH:mm"/> <br />
											총<fmt:parseNumber value="${((item.res_date_end.time - item.res_date_start.time)/(1000*60))/60}" integerOnly="true" />시간 
											  <fmt:formatNumber value="${((item.res_date_end.time - item.res_date_start.time)/60000)%60}" maxFractionDigits="0" />분  <br />
											<em id="7292917_zone_id" style="display:none;">665</em>
												
													<a href="#" class="socarzoneDetail">${item.soz_name}</a>
													
										</div>
									</td>
									<td class="price">
										<a class="btn_payment_detail" href="#" value='uizyp'>${item.res_price + item.res_inscost - item.sale_price }원</a><em style="display:none;">7292917</em>
										
										
										<br />
										
									</td>
									<td class="status">${item.res_status}</td>
									
								</tr>
								</c:forEach>
							</c:if>
							
							</tbody>
							</table>
						

					</div>

					<!-- paginate -->
					<div class="paginate">
						
					</div>
					<!-- //paginate -->
				</div>
			</div>
		</div>


		
<style type="text/css">

/* aside */
div.aside{position:fixed; top:111px; right:0; width:51px; height:150px; border-bottom:1px solid #dadada; z-index:10000;} /*height:225px*/
div.aside ul a{display:block; width:51px; height:73px; overflow:hidden; text-indent:-9999em; background:url('${pageContext.request.contextPath}/template/image/quick_side_menu_141111.gif') no-repeat;border-bottom:1px dotted #BBB;border-left:1px solid #BBB; }
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

	<jsp:include page="/template/Quick.jsp"/>

<!-- //quick -->
	</div>

<!-- footer -->
		<jsp:include page="/template/Footer.jsp"/>

<!-- //footer -->


	<div class="mwLayer">
		<div class="bg"></div>
		<div id="mwCont">

<!-- login -->
<jsp:include page="/template/Login.jsp" />
<!-- //login -->

<!-- finding id -->
<!-- finding pw -->
<jsp:include page="/template/FindingIdPw.jsp"/>


            <!-- 주행요금 계산기 -->
            <jsp:include page="/template/Faretem.jsp"/>
            <!-- //주행요금 계산기 -->
			

			<!-- 쏘카존 신청하기 -->
			<jsp:include page="/template/Socarzon.jsp"/>
			<!-- 친구추천 -->
			<jsp:include page="/template/Friend.jsp"/>
			<!-- //친구추천 -->


		<div id="askcar_div" class="car_requestL mwCont" style="display: block;">
			<h4 style="height:57px;padding-bottom:40px"><img src='${pageContext.request.contextPath}/template/image/pop_tit.jpg' alt="쏘카로 원하는 차종 신청하기 !!" title="쏘카로 원하는 차종 신청하기 !!"></h4>
			<form name="request" method="post" action="">
				<fieldset>
					<div class="requestForm">
						
						<textarea id="layer_askcar_text" cols="" rows="" class="textarea"></textarea>
						<input id="layer_askcar_submit" type="image" src='${pageContext.request.contextPath}/template/image/btn_request.gif' onclick="return false;" class="submit" alt="신청">
						
					</div>
				</fieldset>
			</form>
			<p id="btn_askcar_close" class="centerBtn"><a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/btn_close.gif' alt="닫기" title="닫기"></a></p>
		</div>


			<div class="socarcardLayer mwCont">
				<div class="tit"><img src='${pageContext.request.contextPath}/template/image/socarcardLayer_tit.gif' alt="쏘카카드 발급 신청하기" /></div>
				<p class="txt">쏘카카드 발급 신청과 동시에 1,500원이 결제됩니다.</p>
				<p class="more">※ 기본정보에서 우편 수취가 가능한 주소인지 확인해주세요.</p>
				<div class="centerBtn">
					<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_confirm.gif' id="socarcard_request" alt="확인" /></a>
					<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_cancel.gif' id="socarcard_request_cancel" alt="취소" /></a>
				</div>
				<div id="member_card_regist_indicator" style="display:none;
					background:url('${pageContext.request.contextPath}/template/image/loading.gif') no-repeat 50% 50%;
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
		auth_token : '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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


		$.ajax({
			type: 'POST',
			url: "https://api.socar.kr/zone/candidate_ex/create",
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
			auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
			last_id: last_id,
			address : address,
			my_request : $(document).data('my_request')
		},
		dataType: 'jsonp',
		beforeSend: function(xhr) {
			$list.data("disabled-vscroll",true);
			output.append('<div id="list-indicator" style="width:auto;height:32px;background:url(\'${pageContext.request.contextPath}/template/image/loading.gif\') 50% 50% no-repeat;"></div>');

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
						output.append('<img src=\'${pageContext.request.contextPath}/template/image/btn_delete.gif\' alt="삭제"></a></p>');
						output.append('<div class="pw" id="pw_' + result[i].id + '">비밀번호&nbsp;<input type="password" class="input" name="delitem_' + result[i].id + '" id="delitem_' + result[i].id + '" value="" />');
						output.append('<input type="image" class="deleteOk" data-id="' + result[i].id + '" src=\'${pageContext.request.contextPath}/template/image/btn_request_delete.gif\' alt="확인">&nbsp;');
						output.append('<input type="image" class="deleteCancel" data-id="' + result[i].id + '" src=\'${pageContext.request.contextPath}/template/image/btn_request_cancel.gif\' alt="취소"> </div>');

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
			auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
			auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
	
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('inviteLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .inviteL').css('display','block');
	

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
				'<img src=\'${pageContext.request.contextPath}/template/image/btn_delete.gif\' alt="삭제" />' +
			'</a>' +
		'</p>' +

		'<div class="pw">' +
			'비밀번호' +
			'<input type="text" class="input" />' +
			'<em style="display:none;">' + r.id + '</em>' +
			'<input type="image" class="deleteOk" src=\'${pageContext.request.contextPath}/template/image/btn_request_delete.gif\' alt="확인" />' +
			'<input type="image" class="deleteCancel" src=\'${pageContext.request.contextPath}/template/image/btn_request_cancel.gif\' alt="취소" /> ' +
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
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
			auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505264825" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505264825" charset="utf-8"></script>


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
	<p class="centerBtn"><a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/btn_confirm.gif' alt="확인" /></a></p>
</div>
<!-- //쏘카존 -->


			<!-- 쏘카보기 -->
<div class="socarDetail mwCont">
  <h4><img src="/template/${pageContext.request.contextPath}/template/image/socar_detail.gif" alt="쏘카정보" /></h4>
  <div class="socarInfo">
    <p class="thumb"><img id="layer_car_img" width="250" height="124" src="/template/${pageContext.request.contextPath}/template/image/socar_detail1.png"/></p>
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

  <div class="clear"></div>
  <p class="centerBtn"><a href="#" class="close"><img src="/template/${pageContext.request.contextPath}/template/image/btn_confirm.gif" alt="확인" /></a></p>
</div>
<!-- //쏘카보기 -->


			<!-- 예약변경 -->
			<div class="rvChange mypage mwCont">
				<form name="reservationChange" method="post" action="">
					<fieldset>
						<legend>예약변경</legend>
						<h3><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt1.gif" alt="예약변경" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt2.gif" alt="대여일" /></th>
								<td>
									<input type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<select>
										<option selected="selected">10:30</option>
									</select>
								</td>
							</tr>
							<tr>
								<th><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt3.gif" alt="반납일" /></th>
								<td>
									<input type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<select>
										<option selected="selected">10:30</option>
									</select>
								</td>
							</tr>
							</table>
						</div>
						<p class="txt">
							예약변경은 대여기간 수정만 가능합니다.<br /><br />
							※ 수수료 부과 안내<br /><br />
							단기대여(8시간 미만)의 예약 변경<br />
							대여 시작 3시간 이내에 대여 기간 단축 시<br />
							결제 예정 요금의 10%에 해당하는 수수료 부과<br /><br />
							장기대여(8시간 이상)의 예약 변경<br />
							대여 시작 12시간 이내에 대여 기간 단축 시<br />
							결제 예정 요금의 10%에 해당하는 수수료 부과
						</p>

						<p class="centerBtn">
							<input type="image" src="${pageContext.request.contextPath}/template/image/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="${pageContext.request.contextPath}/template/image/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //예약변경 -->

			<!-- 반납연장 -->
			<div class="rvExtend mypage mwCont">
				<form name="reservationExtend" method="post" action="">
					<fieldset>
						<legend>반납연장</legend>
						<h3><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt4.gif" alt="반납연장" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt2.gif" alt="대여일" /></th>
								<td>
									<input id="layer_input_startDay" type="text" class="input calendar disabled" disabled="disabled" style="width:103px;" value="2012.09.25" />
									<input id="layer_input_startTime" type="text" class="input disabled" style="width:35px;" readonly />
<!-- 									<select id="layer_selbox_startTime" class="disabled" disabled="disabled">
										<option selected="selected">10:30</option>
									</select> -->
								</td>
							</tr>
							<tr>
								<th><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt3.gif" alt="반납일" /></th>
								<td>
									<input id="layer_input_endDay" type="text" class="input calendar" style="width:103px;" value="2012.09.25" />
									<input id="layer_input_endTime" type="text" class="input" style="width:35px;" />
<!-- 									<select id="layer_selbox_endTime">
										<option selected="selected">10:30</option>
									</select> -->
								</td>
							</tr>
							</table>
						</div>
						<div class="txt">
							<ul>
							<li>대여기간 수정, 지역 및 차종 변경은 취소 후 새로<br />예약해주세요.</li>
							<li>다른 회원의 예약이 이미 존재하는 경우에는 반납연장이<br />불가합니다.</li>
							<li>반납 연장을 하지 않은 상태에서 임의로 차량을 계속<br />사용할 경우, 시간당 페널티가 과금될 수 있습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<em id="layer_reserve_id" style="display:none;"></em>
							<input id="layer_btn_extend" type="image" src="${pageContext.request.contextPath}/template/image/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="${pageContext.request.contextPath}/template/image/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //반납연장 -->

			<!-- 예약취소 -->
			<div class="rvCancel mypage mwCont">
				<form name="reservationCancel" method="post" action="">
					<fieldset>
						<legend>예약취소</legend>
						<h3><img src="${pageContext.request.contextPath}/template/image/ly_reservation_txt5.gif" alt="예약취소" /></h3>
						<div class="bx">
							<strong id="layer_cancel_car_name">쏘나타 하이브리드</strong>(<span id="layer_cancel_car_num">49허 1111</span>)<br/>
							<p class="" id="layer_cancel_duration">0000.00.00 일 00:00 - 0000.00.00 일 00:00</p>
							<p class="" id="layer_cancel_zone_name">서울시공영주차장</p>
						</div>
						<div class="txt">
							예약취소 시 위약금이 발생할 수 있습니다.<br />아래의 규정을 확인 후 진행해주세요.<br /><br />
							※ 위약금 부과 안내<br /><br />
							<ul>
							<li>대여 시작 3시간 이전에 예약 취소 시<br />: 별도 위약금 없음</li>
							<li>대여 시작 <em>3시간 이내</em>에 예약 취소 시<br />: <em>대여요금과 보험료의 각 10%</em>에 해당하는 위약금 부과</li>
							<li>특정 프로모션 예약의 경우, 사전 고지 또는 예약 시<br /> 동의한 내용에 따라 별도 취소 위약금이 부과될 수<br /> 있습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<em id="reserve_num" style="display:none"></em>
							<input id="btn_reserve_cancel" type="image" src="${pageContext.request.contextPath}/template/image/btn_ly_confirm.gif" onclick="return false;" alt="확인" />

							<a href="#" class="close"><img src="${pageContext.request.contextPath}/template/image/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //반납연장 -->

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	
	$('h3.tit_corp a').click(function(){
		alert ('[확인]을 누르면 다운로드가 시작됩니다.\n파일의 비밀번호는 SMS로 발송됩니다.');
		return true;
	});
	
});
</script>
</body>
</html>