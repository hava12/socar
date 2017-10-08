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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.banner.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505961969"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505961969"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505961969"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505961969"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505961969"></script>
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
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/jquery-ui.css' />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />


<script src="${pageContext.request.contextPath}/template/js/jquery-ui.js"></script>
<script src="//web-assets.socar.kr/template/reservation/../asset/js/jquery-collision.js?1505961969"></script>
<script type="text/javascript" src="//web-assets.socar.kr/template/reservation/../asset/js/common_reservation.js?1505961969"></script>


<style type="text/css">
.list .section {cursor:pointer}
.car_class_item {display:block; height: 35px; color: #333; line-height: 36px; padding-left: 13px}
/*.oneway_item {display:block; height: 35px; color: #333; line-height: 36px; padding-left: 13px}*/
.oneway_item {display:block; padding:7px 0 7px 13px; color: #333; line-height:18px;}
#oneway_list {width: 280px;}

.cliked{
/* 		margin-top:35px !important; */
		height:1.7em;
		width:600px;
}
.clikedChild{
		height:1.7em;
		width:0.2em;
}

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
.ui-slider-handle{
	width:0.1em !important;
	top:0 !important;
	background : black !important;
	color : black !important;
	border : none !important;
	
}



</style>



<script>


$( function() {
	

	var maxVal = 1000*60*60*24;
	
		<c:if test="${not empty param.startTime}" var="emptyTimeVar" >
	 		var before_start_at = '${param.startDay}';
	 		var before_end_at = '${param.endDay}';
	 		var start_Time = '${param.startTime}';
	 		var end_Time = '${param.endTime}';
	 		var stDate = new Date(  before_start_at.substr(0,4),
					before_start_at.substr(5,2)-1,
					before_start_at.substr(8,2)
					);
	 		
	 		var startDate = new Date(  before_start_at.substr(0,4),
									before_start_at.substr(5,2)-1,
									before_start_at.substr(8,2),
				 				 	start_Time.split(":")[0],start_Time.split(":")[1]
				  		 		  );
	  		 var endDate = new Date(  before_end_at.substr(0,4),
						before_end_at.substr(5,2)-1,
						before_end_at.substr(8,2),
	 				 	end_Time.split(":")[0],end_Time.split(":")[1]
	  		 		  );
	  		 
	  		 maxVal = (endDate.getDate()+1 - startDate.getDate())*60*1000*60*24;
		</c:if>
	
	$("div[name='slider-range']").each(function(){

	  $(this).slider({
	    range: true,
	    min: 0,
	    max: maxVal,
	    values: [ startDate.getTime()-stDate.getTime(),endDate.getTime()-stDate.getTime()],
	    create:slider_change,
	    slide:slider_change,
	    change:slider_change,
	    disabled: true

	  });///////////////////////////////////////////////////////

	  $(this).css("margin-top","15px");
		
	});
	
	function slider_change(){
		
		var values_one = $(this).slider( "option", "values")[0];
		var values_two = $(this).slider( "option", "values")[1];
		
		$(this).children("#banned-range").remove();
		var start_per = (values_one)/maxVal*100;
		var end_per = (values_two)/maxVal*100;
		var parent_px = $(this).width();
		
	     	$(this).children(".slider-range-div").css("left",(values_one/maxVal*100)+"%");
	     	$(this).children(".slider-range-div").css("width",((values_two-values_one)/maxVal*100)+"%");
	 	
	     	$(this).children("a[name='reserved-range']").each(function(){
				
					var left_per = $(this).css("left").replace("px","")/parent_px*100;
					var width_per = $(this).css("width").replace("px","")/parent_px*100;
	     			var right_per = left_per+width_per;
					
				
	     			if(start_per > left_per && start_per <right_per && end_per > right_per){
	     				$(this).parent().append("<a href='#' id='banned-range' name='banned-range' style='left:"+start_per+"%; width:"+(right_per-start_per)+"%; height:.5em; border:1px solid red; margin-left:-.6em; position:absolute; background-color: red;'>");
	     			}
	     			if(start_per < left_per && end_per  > right_per){
	     				$(this).parent().append("<a href='#' id='banned-range' name='banned-range' style='left:"+left_per+"%; width:"+width_per+"%; height:.5em; border:1px solid red; margin-left:-.6em; position:absolute; background-color: red;'>");	
	     			}
	     			if(end_per > left_per && end_per < right_per && start_per < left_per ){
	     				$(this).parent().append("<a href='#' id='banned-range' name='banned-range' style='left:"+left_per+"%; width:"+(end_per-left_per)+"%; height:.5em; border:1px solid red; margin-left:-.6em; position:absolute; background-color: red;'>");		
	     			}
	     			if(start_per > left_per && end_per < right_per){
	     				$(this).parent().append("<a href='#' id='banned-range' name='banned-range' style='left:"+start_per+"%; width:"+(end_per-start_per)+"%; height:.5em; border:1px solid red; margin-left:-.6em; position:absolute; background-color: red;'>");			
	     			}
	     	});	
	     	
	     	if($(this).children("#banned-range").length != 0){
	     		$(this).parent().children("#reserveMessage").css("color","red").html("이미 예약이 있습니다. 다른 시간을 선택해주세요");
	     	}
	     	else{
	     		$(this).parent().children("#reserveMessage").html("");
	     		
	     			var term = Math.round(($(this).slider( "option", "values")[1] - $(this).slider( "option", "values")[0])/600000);
	     		for(var i = 0 ; i < 2 ; i++){
	     			var res_time = new Date();
	     			res_time.setTime(stDate.getTime()+$(this).slider( "option", "values")[i]);
	     			var status = i==0?"부터":"까지";
	     			
					var res_minute = Math.round(res_time.getMinutes()/10)*10;
					res_time.getHours();
					if(res_minute==60){
						res_time.setHours(res_time.getHours()+1);
						res_minute =0;
					}
					$(this).parent().children("#reserveMessage").css("color","blue").append(res_time.getFullYear()+"년 "+(res_time.getMonth()+1)+"월 "+res_time.getDate()+"일 "+res_time.getHours()+"시 "+res_minute+"분"+status+"&nbsp;&nbsp;");	
					
		    	}
	     			console.log(term);
					console.log($(this).parent().parent().parent().find("#car_price_so_wd_sample").html());
  	   				$(this).parent().parent().parent().find("#car_price_so_wd").html($(this).parent().parent().parent().find("#car_price_so_wd_sample").html()*term);
 	   	
	     	};

		
	}///////////////////////////////////////////////////////////////////////////////////

	
});
  </script>



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
var $tmp_start_at         = '2017-09-28T12:00:00+09:00';

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

 	<c:if test="${not empty param.startTime}" var="emptyTimeVar" >
 		var before_start_at = '${param.startDay}';
 		var before_end_at = '${param.endDay}';
 		
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
		
  		$('#selbox_startTime').val('${param.startTime}');
  		$('#selbox_endTime').val('${param.endTime}');
		
 	</c:if>
	
 	<c:if test="${not emptyTimeVar}" >
 					var before_start_at = new Date();
					var before_end_at   = new Date();
					before_end_at.setTime(before_start_at.getTime()+1000*60*30);
					
					$('#startDay').datepicker('setDate', new Date(  before_start_at.getFullYear(),
																	before_start_at.getMonth(),
																	before_start_at.getDate(),
																	0,
																	0,
																	0
																));
					$('#endDay').datepicker('setDate', new Date(  before_end_at.getFullYear(),
																  before_end_at.getMonth(),
																  before_end_at.getDate(),
																  0,
																  0,
																  0
																));
					
					var minutes=Math.ceil(before_start_at.getMinutes()/10)*10;
					var hours = before_start_at.getHours()
					if(minutes==60){
						if(hours=="00"){hours=0;}
						hours = hours + 1;
						if(hours==24){hours="00";}
						minutes="00";
					}
					if(minutes==0){minutes="00";}
					
					$('#selbox_startTime').val(hours+":"+minutes);
					
					if(minutes == "00"){
						minutes = 0;
					}
					minutes = minutes + 30;
					
					if(minutes >= 60){
						if(hours=="00"){hours=0;}
						hours = hours + 1;
						if(hours==24){hours="00";}
						minutes = minutes - 60;
						if(minutes==0){minutes="00";}
					}
					
				$('#selbox_endTime').val(hours+":"+minutes);

	</c:if>
// 	$('#input_location').val($.cookie('tmp_loc'));

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

	//예약 버튼 눌렀을때!
	$('.btn_reserve').bind('click', function () {
		var startDayString = '${param.startDay}';
		var defaultTime=  new Date(  before_start_at.substr(0,4),
									startDayString.substr(5,2)-1,
									startDayString.substr(8,2),
									0,
									0,
									0);
		
		var startTime = $(this).parent().parent().find("#slider-range").slider( "values", 0 )+defaultTime.getTime();
		var endTime = $(this).parent().parent().find("#slider-range").slider( "values", 1 )+defaultTime.getTime();
		var car_i_code = $(this).parent().parent().find("#car_i_code").html();
		var price = $(this).parent().parent().find("#car_price_so_wd").html();
		
		var datemodify = new Date(startTime);
		datemodify.setSeconds(0);
		if(datemodify.getMinutes>=55){
			if(datemodify.getHours==23){
				datemodify.setDate(datemodify.getDate()+1);
			}
			datemodify.setHours(datemodify.getHours()+1);
		}
		datemodify.setMinutes(Math.round(datemodify.getMinutes()/10)*10);
		startTime = datemodify.getTime();
		
		datemodify.setTime(endTime);
		datemodify.setSeconds(0);
		if(datemodify.getMinutes>=55){
			if(datemodify.getHours==23){
				datemodify.setDate(datemodify.getDate()+1);
			}
			datemodify.setHours(datemodify.getHours()+1);
		}
		datemodify.setMinutes(Math.round(datemodify.getMinutes()/10)*10);
		endTime = datemodify.getTime();
		
 		$.doPost('<c:url value="/Reserve/ReserveConfirm.do"/>', {
			startTime : startTime,
			endTime : endTime,
			car_i_code : car_i_code,
			price : price
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


	$('#reservation .list .door').click(function(){
		var timeline = $(this).next().text();
		$(this).parent('.section').toggleClass('open');
		$(this).toggleClass('op');
		
		if($(this).hasClass('op')){
			$(this).siblings().find("div[name='slider-range']").slider( "option", "disabled", false ).addClass("cliked");
			$(this).siblings().find("div[name='slider-range']").children().css("height","1.7em");
			$(this).siblings().find("#reservation_image").css("display","block");
			$(this).siblings().find("#reserveMessage").css("display","block");
			
			$(this).html('접기');
			// $c_width = 590;
			// $b_width = 350;
		} else {
			
			$(this).siblings().find("div[name='slider-range']").slider( "option", "disabled", true ).removeClass("cliked");
			$(this).siblings().find("div[name='slider-range']").children().css("height",".5em");
			$(this).siblings().find("#reservation_image").css("display","none");
			$(this).siblings().find("#reserveMessage").css("display","none");
			
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


		
// 			$('#selbox_endTime').empty().data('options');
// 			for(var i = 0; i < 24; i++){
// 				var option;
// 				for(var j = 0; j < 60; j += 10){
// 					option = '<option value=' + i.zeroPad(10) + ':' + j.zeroPad(10) + '>' +
// 							 i.zeroPad(10) + ':' + j.zeroPad(10) + '</option>';
// 					$('#selbox_endTime').append(option);
// 				}
// 			}
//		}
		
// 		$('#selbox_endTime').val('12:30');
	//}
});


function goSearchResult(soz_code){
	$(function(){
		var startDay = $("#startDay").val();
		var endDay = $("#endDay").val();
		var startTime = $("#selbox_startTime option:selected").val();
		var endTime = $("#selbox_endTime option:selected").val();
 		location.href = '<c:url value="/Reserve/SearchResult.do?soz_code='+soz_code+'&startDay='+startDay+'&endDay='+endDay+'&startTime='+startTime+'&endTime='+endTime+'"/>';
	})
}

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
											<th></th>
											<td>
												<label for="type1"><input style="display: none;" id="radio_round" value="round" type="radio" name="type" id="type1" /></label>
												<label for="type2"><input style="display: none;" id="radio_oneway" value="oneway" type="radio" name="type" id="type2" /></label>
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

			<c:if test="${not empty car_list}" >
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
						
						
					
							<c:forEach items="${car_list}" var="item" varStatus="loop">
							<div class="section">
									<div class="arti">
										<h4 class="zone_info_popup" value="5237">${item.soz_name}</h4>
										<em style="display:none;">5237</em>
										<!-- <span>0.4km</span> -->
									</div>
									<div class="carInfo">
										<p class="thumb"><a href="#" class="carDetail"><img src='//web-assets.socar.kr/template/asset/images/car_image/car046.png' /></a></p>
										<div class="desc">
												<span id="car_i_code" style="display: none">${item.car_i_code}</span>
												<h5>${item.car_name}<strong>${item.car_nick}</strong> </h5>
											
											<em style="display:none;">8471</em>
											<div class="spec">
												유종 : <em>${item.car_fuel}</em><br />
												옵션 : ${item.car_trans},${item.car_i_safe_option},${item.car_i_add_option}
												<!--<a href="#" class="more carDetail view_detail_car">더보기</a>-->
											</div>
											
											<img id="reservation_image" src="https://web-assets.socar.kr/template/asset/images/reservation/list_noti.gif" style="display: none; margin-top: 35px;" />
											
										<div id="slider-range" name="slider-range" class="slider-range ${loop.count}">
											<a href="#" class="slider-range-div" style="height:.5em; margin-left:-.6em; border:1px solid black; position:absolute; background-color: deepskyblue; " ></a>
											<c:forEach items="${res_list}" var="res_item">
													<c:if test="${res_item.car_i_code eq item.car_i_code}">
														<script>

															$(function(){
																var maxVal = $( "#slider-range" ).slider( "option", "max");
																var before_start_at = '${param.startDay}';
														 		
															 		var start_day = new Date(before_start_at.substr(0,4),
																						before_start_at.substr(5,2)-1,
																						before_start_at.substr(8,2),
																						0,
																						0,
																						0
																					)
																var left_per = ('${res_item.res_date_start.time}' - start_day.getTime())/maxVal*100;
															 	var width_per = (('${res_item.res_date_end.time}' - start_day.getTime())/maxVal*100)-left_per;
																if(left_per + width_per > 0){
														 			$("."+'${loop.count}').append("<a href='#' id='reserved-range' name='reserved-range' style='left:"+left_per+"%; width:"+width_per+"%; height:.5em; border:1px solid lightgray; margin-left:-.6em; position:absolute; background-color: lightgray;'>");
																}
															});
														</script>
													</c:if>
											</c:forEach>
											
										</div>
										<div id="reserveMessage" style="display:none; margin-top: 0.7em;"></div>
										</div>
									</div>

									<!-- 타임라인 -->
										
										
										
										
										
									<!-- //타임라인 -->

									<!-- 대여요금 -->
									<div class="price price_info">
									<!-- 기준요금이  할인가보다  클  경우에만  기준요금  표시 -->
									
										<dl>
											<dt>SO회원 할인가</dt>
											<dd style="display: none;" id="car_price_so_wd_sample">${item.car_price_so_wd}</dd>
											<dd><strong id="car_price_so_wd">${item.car_price_so_wd}</strong><strong>원</strong></dd>
										</dl>
									
									</div>
									<!-- //대여요금 -->

									<!-- 주행요금 -->
									
									<div class="oil">${item.car_drive_price}원/km</div>
									
									<!-- //주행요금 -->

									<div class='rvBtn '>
										
										<a id="round" class="btn_reserve" title='' href="#">
											<img src='//web-assets.socar.kr/template/asset/images/reservation/btn_list_reservation.gif' alt="예약" />
										</a>
										<em style="display:none;">5237</em>
										<em style="display:none;">8471</em>
									</div>

									<a href="#" class="door">자세히</a>
									<em style="display:none;">timeline0</em>
								
									
			
								</div>								
							
							</c:forEach>
						

					</fieldset>
				</form>
			</div>
			<!-- //list -->
			</c:if>

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
<script type="text/javascript" src="//web-assets.socar.kr/template/./asset/js/kakao.min.js?1505961969" charset="utf-8"></script>
<script type="text/javascript" src="//web-assets.socar.kr/template/./asset/js/sns_interlocking.js?1505961969" charset="utf-8"></script>


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
mapOption = {center: new daum.maps.LatLng(37.478683, 126.878633, 37.478683, 126.878633),//센터 위치
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
	other_position['${loop.count}'] = new daum.maps.LatLng('${item.soz_latitude}', '${item.soz_longitude}');
	other_marker['${loop.count}'] = new daum.maps.Marker({position:other_position['${loop.count}'], clickable:true});
	other_marker['${loop.count}'].setMap(map);
	other_iwContent['${loop.count}'] = '<div style="padding:5px;"><b>${item.soz_name}</b></div><div>${item.soz_loc}</div><div>운영차량: <span style="color:blue">${item.soz_i_car}</span>대/${item.soz_maxcar}대</div><div><a href="#" onclick="goSearchResult(\'${item.soz_code}\')" ><img src="//web-assets.socar.kr/template/asset/images/reservation/btn_able_socar.png" alt="예약가능 쏘카 보기"/></a></div>',
	iwRemoveable = true;
	other_infowindow['${loop.count}'] = new daum.maps.InfoWindow({content:other_iwContent['${loop.count}'],removable:iwRemoveable});		
		<c:if test="${item.soz_code eq zone_dto.soz_code}">
			other_infowindow['${loop.count}'].open(map,other_marker['${loop.count}']);
		</c:if>
	daum.maps.event.addListener(other_marker['${loop.count}'],'click',function(){
		close_info();
	    move_map('${item.soz_latitude}','${item.soz_longitude}');
		other_infowindow['${loop.count}'].open(map,other_marker['${loop.count}']);					
	});	 			
</c:forEach>




</script>
</html>

