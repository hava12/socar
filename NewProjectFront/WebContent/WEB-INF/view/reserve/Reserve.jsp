<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<link href='${pageContext.request.contextPath}/template/image/header_logo.png' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.banner.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505265015"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505265015"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505265015"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505265015"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505265015"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<%-- ${pageContext.request.contextPath}/template/js/maps3.json --%>
<script type="text/javascript" src="https://apis.daum.net/maps/maps3.js?apikey=9200376e38c344c4dc2ee20a76b6ba19b2605d06&libraries=services" charset="utf-8"></script>
<script type="text/javascript" src='${pageContext.request.contextPath}/template/js/socar-map.js'></script>
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/reservation.css' />
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/socarzone.list.css' />
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/jquery-ui.css' />
<!--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />-->
<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/jquery.mCustomScrollbar.css' />
<style type="text/css">

/*
	reservation/reservation.html
	리스트 아이템 오픈시 타임라인 제거 후 CSS 적용 코드
*/
.list .section {cursor:pointer}
.list .section .timelineWrap .timeline{background: none;}
.list .section.open .timelineWrap .timeline{background: none;}
.list .section.open{height:122px; background:#fff;}
.list .section.open .timelineWrap{position:absolute; top:105px; left:237px; padding-top:21px; width:714px; background: none;}

.car_class_item {display:block; height: 35px; color: #333; line-height: 36px; padding-left: 13px}
.oneway_item {display:block; padding:7px 0 7px 13px; color: #333; line-height:18px;}
#oneway_list {width: 280px;}
</style>
</head>

<body id="reservation" class="reservation">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='${pageContext.request.contextPath}/template/image/h2.gif' alt="쏘카예약" /></h2>
			<div id="zoneNavi">
				<ul>
					<li class="bar-short all">전국</li>
					<li class="bar-short seoul">서울</li>
					<li class="bar-short ggincheon">인천·경기</li>
					<li class="bar-short gangwon">강원</li>
					<li class="bar-short daejeon">대전·충청</li>
					<li class="bar-short daegu">대구·경북</li>
					<li class="bar-short gwangju">광주·전라</li>
					<li class="bar-short busan">부산·경남</li>
					<li class="bar-short jeju">제주</li>
				</ul>
				<span class="navi-title">지역 바로가기</span>
			</div>
			<!-- map -->
			<div id="mapArea">
				<!-- 나눔카 링크 -->

				<div id="NanumCar_btn" style="position:absolute;top:3px;right:99px;z-index:1000; display:'block';">
					<a href="#" onclick="javascript:openNanumCar();return false;"><img src='${pageContext.request.contextPath}/template/image/btn_all.png' alt="나눔카 전체보기" /></a>
				</div>

				<!-- 실시간 예약 -->
				<div id="setting" class="open">
					<div class="setting-box">
						<h3><img src='${pageContext.request.contextPath}/template/image/setting_title.png' alt="실시간 예약" /></h3>
						<div class="setting-option">
							<form name="reservation" method="post" action="">
								<fieldset>
									<div class="group">
										<table cellspacing="0">
										<tr>
											<th><img src='${pageContext.request.contextPath}/template/image/setting_txt1.gif' alt="여정" /></th>
											<td>
												<label for="type1">
													<input id="radio_round" value="round" type="radio" name="type" id="type1" checked="checked" />
													왕복
												</label>
												<label for="type2">
													<input id="radio_oneway" value="oneway" type="radio" name="type" id="type2" />
													편도
													
												</label>

											</td>
										</tr>
										</table>
									</div>
									<div class="group">
										<table cellspacing="0">
										<tr>
											<th><img src='${pageContext.request.contextPath}/template/image/setting_txt2.gif' alt="대여일" /></th>
											<td>
												<!-- <input id="startDay" type="text" class="input calendar" style="width:103px;" value="" /> -->
												<input id="startDay" type="text" class="input calendar" style="width:103px;" value="" readonly />
												<select id="selbox_startTime">
													<!-- <option selected="selected">10:30</option> -->
												</select>
											</td>
										</tr>
										<tr>
											<th><img src='${pageContext.request.contextPath}/template/image/setting_txt3.gif' alt="반납일" /></th>
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
											<th rowspan="2"><img src='${pageContext.request.contextPath}/template/image/setting_txt4.gif' alt="지역" /></th>
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
											<th><img src='${pageContext.request.contextPath}/template/image/setting_txt5.gif' alt="차종" /></th>
											<td>
												<input id="input_car_class" type="text" class="input socar" style="width:169px;" value="전체차종" />
												<em style="display:none;"></em>
											</td>
										</tr>
										</table>
									</div>
									<p class="btn">
										<input id="btn_search_socar" type="image" src='${pageContext.request.contextPath}/template/image/btn_setting_socar.gif' alt="쏘카찾기" onclick="return false;" />
									</p>

									<!-- 왕복 지역 -->
									<div id="socarzone" class="option-layer">
										<div class="search">
											<label for="input_loc" class="i_label">지역명, 쏘카존</label>
											<input type="text" id="input_loc" class="input i_text" style="width:225px" value="" /><input id="btn_search_loc" type="image" class="submit" src='${pageContext.request.contextPath}/template/image/btn_location_search.gif' alt="검색" />
										</div>
										<h4><a><span>최근 이용한 쏘카존</span></a></h4>
										<div id="recently_list_wrapper" class="result">
											<ul id="recently_list">
											<!-- <li><a href="#">강남역 교보빌딩 주차장</a></li> -->
											</ul>
											<!-- <p>최근 이용한 쏘카존이 없습니다.</p> -->
										</div>
										<div id="autoComplete">
											<ul id="ul_search_result">
<!-- 											<li class="exact"><a href="#"><em>구로</em> 디지털단지역 공영주차장</a></li> -->
											</ul>
										</div>
									</div>
									<!-- //왕복 지역 -->

									<!-- 편도 노선 -->
									<div id="oneway_list" class="option-layer">
										<h4><a><span>편도 노선선택</span></a></h4>
										<div class="list">
											<ul id="ul_oneway_search_result">
<!--                                            <li class="car2"><a href="#"><img src='${pageContext.request.contextPath}/template/image/car_title2.png' alt="쏘나타 하이브리드" /></a></li> -->
											</ul>
										</div>
									</div>
									<!-- 편도 노선 -->

									<!-- 차종 -->
									<div id="socar" class="option-layer">
										<h4><a><span>차종선택</span></a></h4>
										<div class="list">
											<ul id="ul_car_search_result">
<!-- 											<li class="car2"><a href="#"><img src='${pageContext.request.contextPath}/template/image/car_title2.png' alt="쏘나타 하이브리드" /></a></li> -->
											</ul>
										</div>
									</div>
									<!-- //차종 -->
								</fieldset>
							</form>
						</div>
						<div class="ico-desc">
						<!--
							<img src='${pageContext.request.contextPath}/template/image/ico_desc.png' alt="" />
						-->
							<img src='${pageContext.request.contextPath}/template/image/ico_desc_n.png' alt="" />
						</div>
						<div class="setting-refresh">
							<a id="btn_refresh" href="#"><img src='${pageContext.request.contextPath}/template/image/btn_refresh.png' alt="새로고침" /></a>
						</div>
						<div class="setting-hidden">
							<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_minus.png' alt="실시간 예약 접기" /></a>
						</div>
					</div>

					<div class="setting-show">
						<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_plus.png' alt="실시간 예약 펼치기" /></a>
					</div>
				</div>
				<!-- //실시간 예약 -->
				<div class="mapWrap">
					<div id="map" style="width:982px; height:474px"></div>
				</div>
			</div>
			<!-- //map -->
			<!-- 쏘카풀 배너 -->
			<!-- <div class="ban" style="padding:24px 0 11px;"><a href="http://www.socarpool.kr/" target="_blank"><img src='${pageContext.request.contextPath}/template/image/banner_socarpool_20150511.png' alt="편하고 믿을 수 있는 카풀앱 같이 가자 쏘카풀!"></a></div> -->
			<div style="height: 99px;"></div>

			
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
<div class="login mwCont">
	<form name="login" method="post" action="https://www.socar.kr/user/login">
		<input id="redirect" name="redirect" type="hidden" value=""/>
		<input id="redirect_data" name="redirect_data" type="hidden" value=""/>
		<fieldset>
			<dl>
				<dt><img alt="아이디" src='${pageContext.request.contextPath}/template/image/new/id.png' /></dt>
				<dd><input type="text" class="input" name="email" /></dd>
				<dt><img alt="비밀번호" src='${pageContext.request.contextPath}/template/image/new/pw.png' /></dt>
				<dd><input type="password" class="input" name="password" /></dd>
			</dl>
			<input type="image" src='${pageContext.request.contextPath}/template/image/new/btn_login.png' class="submit" id="login_btn" />

		</fieldset>
	</form>

	<ul>
		<li><a title="회원가입" class="lg1" href="https://www.socar.kr/join"><img src='${pageContext.request.contextPath}/template/image/new/join.png' alt="회원가입" /></a></li>
		<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img src='${pageContext.request.contextPath}/template/image/new/idpw.png' alt="아이디·비밀번호 찾기" /></a></li>
	</ul>

	<!-- SNS 로그인 -->
	<div class="box_sns">
		<a href="#" id="fb_login" class="left"><img src='${pageContext.request.contextPath}/template/image/new/fb3_n.png' alt="페이스북" /></a>
		<a href="#" id="naver_login" class="center"><img src='${pageContext.request.contextPath}/template/image/new/nv3_n.png' alt="네이버" /></a>
		<a href="#" id="kakao_login" class="right"><img src='${pageContext.request.contextPath}/template/image/new/cco3.png' alt="카카오톡" /></a>
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
				<dt><img src='${pageContext.request.contextPath}/template/image/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_email_name" type="text" class="input" /></dd>
				<dt><img src='${pageContext.request.contextPath}/template/image/finding_txt4.gif' alt="휴대폰" /></dt>
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
			<input id="btn_find_email" type="image" class="submit" src='${pageContext.request.contextPath}/template/image/btn_confirm_b.gif' />
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
				<dt><img src='${pageContext.request.contextPath}/template/image/finding_txt2.gif' alt="아이디 (이메일)" /></dt>
				<dd><input id="find_pw_email" type="text" class="input" /></dd>
				<dt><img src='${pageContext.request.contextPath}/template/image/finding_txt3.gif' alt="이름" /></dt>
				<dd><input id="find_pw_name" type="text" class="input" /></dd>
				<dt><img src='${pageContext.request.contextPath}/template/image/finding_txt4.gif' alt="휴대폰" /></dt>
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
			<input id="btn_find_pw" type="image" class="submit" src='${pageContext.request.contextPath}/template/image/btn_confirm_b.gif' />
		</fieldset>
	</form>
</div>
<!-- //finding pw -->

            <!-- 주행요금 계산기 -->
            <div class="oilL mwCont">
                <h4><img src='${pageContext.request.contextPath}/template/image/oil_txt1_n.gif' alt="주행요금 계산기" /></h4>
                <form name="oil" method="post" action="">
                    <fieldset>
                        <div class="oilForm">
                            <dl>
                            <dt><img src='${pageContext.request.contextPath}/template/image/oil_txt2.gif' alt="차종" /></dt>
                            <dd>
                            	<select id="oil_carlist" class='oilSelect' style="width:165px;height:28px;font-size: 12px;border-color: #c6cace;">
                            	<option selected='selected' value="">차종 선택</option>
								</select>
                            </dd>
                            <dt><img src='${pageContext.request.contextPath}/template/image/oil_txt3.gif' alt="거리" /></dt>
                            <dd>
                                <input type="text" id="oilDistance" class="input" />
                            </dd>
                            </dl>
                            <input type="image" src='${pageContext.request.contextPath}/template/image/btn_calculate.gif' class="submit" alt="계산" />
                        </div>
                        <p class="oilTxt">
                            <img src='${pageContext.request.contextPath}/template/image/oil_txt4.gif' alt="차종과 거리를 선택해주세요" />
                        </p>
                        <p class="oilResult">
                            <img src='${pageContext.request.contextPath}/template/image/oil_txt15_n.gif' alt="예상 주행요금은" />
                            <span>14,500</span>
                            <img src='${pageContext.request.contextPath}/template/image/oil_txt16.gif' alt="원 입니다." />
                        </p>
                    </fieldset>
                </form>

                <p class="txt">
                    <img src='${pageContext.request.contextPath}/template/image/oil_txt6_n.gif' alt="주행요금은 차량 이용 후 실제 이동거리에 따라 부과되므로, 예상 주행요금과 차이가 있을 수 있습니다." />
                </p>

                <div class="noti">
                    <h5><img src='${pageContext.request.contextPath}/template/image/oil_txt7.gif' alt="계산기이용하기" /></h5>
                    <ol>
                    <li><img src='${pageContext.request.contextPath}/template/image/oil_txt8.gif' alt="1. 지도서비스에서 출발, 도착지를 설정후 자동차 길찾기를 하세요." /></li>
                    <li><img src='${pageContext.request.contextPath}/template/image/oil_txt9.gif' alt="2. 길찾기 결과의 총거리를 확인하세요." /></li>
                    <li><img src='${pageContext.request.contextPath}/template/image/oil_txt10_n.gif' alt="3. 차종과 총거리를 입력하고 주행요금을 미리 예상해보세요." /></li>
                    </ol>

                    <dl>
                    <dt><img src='${pageContext.request.contextPath}/template/image/oil_txt11.gif' alt="지도서비스" /></dt>
                    <dd><a href="http://map.daum.net/?target=car" target="_blank"><img src='${pageContext.request.contextPath}/template/image/oil_txt12.gif' alt="다음" /></a></dd>
                    <dd><a href="http://map.naver.com/index.nhn?menu=route" target="_blank"><img src='${pageContext.request.contextPath}/template/image/oil_txt13.gif' alt="네이버" /></a></dd>
                    </dl>
                </div>
            </div>
            <!-- //주행요금 계산기 -->
			

			<div id="askzone_div" class="requestL mwCont">
				<h4 style="height:29px;margin-left:0;"><img src='${pageContext.request.contextPath}/template/image/request_txt3.gif' alt="우리동네 쏘카존 신청하기!!" /></h4>
				<p class="txt" style="height:50px;margin-left:0;">
					<img src='${pageContext.request.contextPath}/template/image/request_txt2.gif' alt="여러분의 의견을 듣고 함께하는 쏘카! 신청서를 작성해주시면 쏘카존을 만들때 참고하겠습니다." />
					<span style="padding-left:33px;">
					
					</span>
				</p>

				<form name="request" method="post" action="">
					<fieldset>
						<div class="requestForm" style="padding-bottom:15px;">
							
							<input type="text" id="search_ask_address" name="search_ask_address" data-in="false" class="input" style="width:420px;height:30px;padding-left:10px;color:#999;" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" />
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
							<textarea id="layer_askzone_text" cols="" rows="" class="textarea" data-in="false" style="width:420px;height:64px;margin-top:10px;color:#999;">자세한 내용을 적어주세요. (선택사항)</textarea>

							<div style="width:432px;padding-top:9px;margin-top:12px;border-top:1px solid #eaeaea;text-align:center;">
								<input id="layer_askzone_submit" type="image" src='${pageContext.request.contextPath}/template/image/btn_socarzone_submit.gif' onclick="return false;" alt="신청하기">
							</div>
							
						</div>
					</fieldset>
				</form>
				<div class="box_titsoting">
					<div class="tit"><img src='${pageContext.request.contextPath}/template/image/txt_socarzone.gif' alt="쏘카존 신청현황" /></div>
					<div class="soting">
						
						<a href="#" id="my_requests">내 신청내역</a>
						<span class="txt_bar">|</span>
						
						<a href="#" id="search_all">전체</a>
						<span class="txt_bar">|</span>
						<a href="#" id="search_region">지역별 찾기 <span style="font-size:11px;font-family:arial" id="search_arrow">▼</span></a>
					</div>
					<div class="lay_location" id="search_region_layer" style="display:none;">
						<span class="lay_tit">다른지역 찾기</span>
						<input type="text" id="search_address" name="search_address" data-in="false" class="input" style="width:263px;height:26px;padding-left:10px;border-right:0 none;color:#999" value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" />
						<a href="#" id="search_askzone_submit"><img src='${pageContext.request.contextPath}/template/image/btn_search.gif' /></a>
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
				<p id="btn_askzone_close" class="centerBtn"><a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/btn_close.gif' alt="닫기" title="닫기"></a></p>
			</div>
			<!-- 친구추천 -->
			<div class="inviteL mwCont">
				<div class="inbox">
					<h4><img src='${pageContext.request.contextPath}/template/image/invite_txt1.gif' alt="친구야! 쏘카같이타자!" /></h4>
					<p class="txt">
						<img src='${pageContext.request.contextPath}/template/image/invite_txt2_20151015.png' alt="친구, 지인들에게 카셰어링 쏘카를 추천하시고, 추천 받은 분이 쏘카에 가입하면, 초대한 사람에게 1만원+1만원 무료 쿠폰을 드립니다." />
					</p>
					<ol>
					<li><img src='${pageContext.request.contextPath}/template/image/invite_txt3_20151015.png' alt="Step1 함께 하는 마음 담아 쏘카 초대 메일 발송" /></li>
					<li><img src='${pageContext.request.contextPath}/template/image/invite_txt4.gif' alt="Step2 친구가 받은 메일의 링크를 통해 회원가입하기" /></li>
					<li><img src='${pageContext.request.contextPath}/template/image/invite_txt5_20151015.png' alt="Step3 친구가 SO회원 가입 완료하면 1만원+1만원 쿠폰 자동 발급" /></li>
					</ol>
					<form name="invite" method="post" action="">
						<fieldset>
							<div class="inviteForm">
								<dl>
								<dt><img src='${pageContext.request.contextPath}/template/image/invite_txt6.gif' alt="받는 사람" /></dt>
								<dd>
									<label for="inviteMail" class="i_label">여러명인 경우 쉼표(,)로 구분해주세요.</label>
									<input type="text" id="inviteMail" class="input i_text" />
								</dd>
								</dl>
								<p class="tip1">최대 5개의 메일주소 입력이 가능</p>
								<dl>
								<dt><img src='${pageContext.request.contextPath}/template/image/invite_txt7.gif' alt="초대 메세지" /></dt>
								<dd>
									<label for="inviteCont" class="i_label">메세지를 입력해주세요.</label>
									<textarea id="inviteCont" class="textarea i_text" cols="" rows=""></textarea>
								</dd>
								</dl>
								<!-- <p class="tip2"><em>1</em> / 100</p> -->
							</div>
							<p class="centerBtn">
								<input id="inviteSubmit" type="image" src='${pageContext.request.contextPath}/template/image/btn_send.gif' alt="발송하기" />
							</p>
						</fieldset>
					</form>
				</div>
				<div class="info">
					<h5><img src='${pageContext.request.contextPath}/template/image/invite_txt8.gif' alt="알려드립니다." /></h5>
					<ul>
						<li>초대받은 친구가 결제카드 등록 및 면허승인을 완료하면, 두분 모두에게 친구초대 쿠폰을 드려요.</li>
					</ul>
				</div>
			</div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505265015" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505265015" charset="utf-8"></script>


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
  <p class="centerBtn"><a href="#" class="close"><img src="/template/${pageContext.request.contextPath}/template/image/btn_confirm.gif" alt="확인" /></a></p>
</div>
<!-- //쏘카보기 -->


			<!--
<div class="listateL mwCont">
		<section class='listateForm'>
			<h1>회원님은 운전면허 갱신이 필요합니다.</h1>
			<section>
					<ul>
						<li style='color:red;'>운전면허 만료일로부터 1년 경과 후부터는 예약이 불가합니다.<br/><br/>
						<li>마이페이지에서 운전면허 정보를 수정하여 주세요.<br/><br/>
						<li>면허 정보 수정은 PC 홈페이지에서만 가능합니다.<br/><br/>
						<a href='/mypage'><em style='color:red; text-decoration: underline'>☞ 운전면허정보 수정하기</em></a>
					</ul>
					<br/>
					<h2>만료일 정보</h2>
					<ul>
						<li><em style='color:#00b7ff;'>갱신 기간 및 적성검사 기간: </em> ~ <span id='expiration_date'></span><br />
					</ul>
			</section>
		</section>
</div>
-->
<div class="renewal" style="display:none;">
	<div class="tit"><img src='${pageContext.request.contextPath}/template/image/tit_renewal.gif' alt="" /></div>
	<div class="txt"><img src='${pageContext.request.contextPath}/template/image/txt_renewal.gif' alt="" /></div>
	<div class="txt_num"><img src='${pageContext.request.contextPath}/template/image/txt_renewal2.gif' alt="" /><span id='expiration_date'></span></div>
	<div class="btn"><a href="/mypage#li_pos"><img src='${pageContext.request.contextPath}/template/image/btn_renewal.gif' alt="" /></a></div>
</div>

			<a href="#" class="close">닫기</a>
		</div>
		<!-- 카드 등록 -->
<div id="cardAdd">
	<form name="request" method="post" action="">
		<fieldset>
			<div class="cardForm">
				<input id="input_reg_card_num" type="text" class="input" />
				<input id="btn_reg_card" type="image" src='${pageContext.request.contextPath}/template/image/btn_card_add.png' class="submit" alt="등록" />
			</div>
		</fieldset>
	</form>
	<p class="txt"><img src='${pageContext.request.contextPath}/template/image/card_reg_required_txt.png' alt="회원번호를 입력해주세요!" /></p>
	<a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/card_close.png' alt="다음에 등록" /></a>
</div>
<!-- //카드 등록 -->
	</div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>


<script type="text/javascript">
//플래시 메시지 표시


//쿠키 초기화
set_cookie('tmp_selected_zone_id', null);
set_cookie('tmp_selected_lat', null);
set_cookie('tmp_selected_lng', null);
set_cookie('tmp_class_name', null);
set_cookie('tmp_class_id', null);

var $MAX_DAYS = '90';
var $MAX_DAYS_ONEWAY = '30';

var $map                = null;
var $beforePos          = null;
var $beforeLevel        = null;
var zIndex				= 10;


//이전 클릭마커기록
var beforeMarker = null;
var beforeMarkerzIndex = 0;

Number.prototype.zeroPad = Number.prototype.zeroPad || function(base){
	var nr = this, len = (String(base).length - String(nr).length)+1;
	return len > 0? new Array(len).join('0')+nr : nr;
};



function getStartDateTime() {
	var d = $('#startDay').datepicker('getDate');
	var t = $('#selbox_startTime').val();
	return new Date(d.getFullYear(),
		d.getMonth(),
		d.getDate(),
		t.slice(0,2),
		t.slice(3,5),
	0);
}

function getEndDateTime() {
	var d = $('#endDay').datepicker('getDate');
	var t = $('#selbox_endTime').val();
	return new Date(d.getFullYear(),
		d.getMonth(),
		d.getDate(),
		t.slice(0,2),
		t.slice(3,5),
	0);
}

//location hash 변경 함수
var change_location_hash = function(new_hash) {
	if (window.location.hash === new_hash) {
		return false;
	}
	window.location.hash = new_hash;
	return true;
}

//회원카드 레이어



//////////////////////////////////////////////////////////////////////////////////////
// spock zone 이동, 주사용지역 설정시 로그인 이벤트때 자동으로 주사용지역으로 지도 좌표 이동.

if (window.location.hash === '' || window.location.hash === null) {

	
		$("#NanumCar_btn").css("display","none");
		change_location_hash('#seoul');
	

	

	

	

	

	//부산 - 서면역 좌표
	

	

	
	
}

//time selectbox 채우기
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

//기본 표시 시간 설정 - 2시간 간격
var now       = new Date();
var s_newDate = new Date();
var e_newDate = new Date();

now.setMinutes( Math.ceil(now.getMinutes()/10)*10 + 10 );

s_newDate.setTime(now.getTime());
e_newDate.setTime(s_newDate.getTime() + 30 * 60 * 1000);

$('#startDay').datepicker('setDate', s_newDate);
$('#endDay').datepicker('setDate', e_newDate);

var s_time = s_newDate.getHours().zeroPad(10) + ':' + s_newDate.getMinutes().zeroPad(10);
var e_time = e_newDate.getHours().zeroPad(10) + ':' + e_newDate.getMinutes().zeroPad(10);

$('#selbox_startTime').val(s_time);
$('#selbox_endTime').val(e_time);


//위치정보 수집 가능한 브라우저인지 체크
if(navigator.geolocation){
	$('.currentPosition').css('display', 'block');
}




$('.zone_item').bind('click', function () {
	var zone_name = $(this).text();
	var zone_id   = $(this).next().text();

	set_cookie('loc_type', 2);
	$('#input_location').val(zone_name);
	$('#input_location_zone_id').text(zone_id);
	$('#input_location_lat').text('');
	$('#input_location_lng').text('');

	$('#btn_search_socar').click();
	return false;
});

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


$('.view_detail_car').bind('click', function () {
	var car_id = $(this).parent().prev().text();
	view_detail_car(car_id);
	return false;

});

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
	//}else{
		//$('#selbox_startTime').empty().data('options');
		//var limit_date = new Date();
	    //var limit_hour = new Date();
	    //limit_hour.setMinutes( Math.ceil(limit_hour.getMinutes()/10)*10 + 10 );
	    //var startDay = $('#startDay').datepicker('getDate');
	    //if(startDay.getDate() != limit_date.getDate()){
		//    for(var i = 0 ; i < 6 ; i++){
		//    	if(limit_hour.getDate() != limit_date.getDate()){
		//	        var option;
		//	        option = '<option value=' + limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '>' +
		//	                    limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '</option>';
		//	        selbox_startTime.append(option);
		//        }
		//        limit_hour.setMinutes(limit_hour.getMinutes() + 10);
		//    }
	    //}else{
	    //	for(var i = 0 ; i < 6 ; i++){
		//        var option;
		//        option = '<option value=' + limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '>' +
		//                    limit_hour.getHours().zeroPad(10) + ':' + limit_hour.getMinutes().zeroPad(10) + '</option>';
		//        selbox_startTime.append(option);
		//        limit_hour.setMinutes(limit_hour.getMinutes() + 10);
		//        if(limit_hour.getDate() != limit_date.getDate()){
		        	// 하루 초과 방지
		//        	break;
		//        }
		//    }
	    //}
	//}
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

//현재위치기능
$('#currentPosition').bind('click', function () {
	if($(this).is(':checked')){
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function (pos) {
				var ImageUrl = '${pageContext.request.contextPath}/template/image/pcpinhere.png';
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

//최근 이용 쏘카존
$('#input_location').bind('click', function () {
	$('#setting .option-layer').css('display','none');

	var type = $(':radio[name="type"]:checked').val();

	if(type == 'round'){
		$('#socarzone').css('display','block');
		$('#input_loc').focus();

		
			var url = "https://www.socar.kr/reserve/recent_list";
			bind_input_location_click(url);
		
	}
	else{
		// spock 최근이용쏘카존은 편도에서는 작동 안함.
		//var url = "https://api.socar.kr/reserve/oneway_zone_list";
		//view_oneway_list(url, start_zone_id);
	}

	return false;
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


$('#input_car_class').bind('click', function () {
	var url = "https://api.socar.kr/reserve/car_list";
	bind_input_car_class_click(url);
});

// enter submit 발생 막기
$('#input_location, #input_loc, #btn_search_loc, #input_car_class').keydown(function(event) {
	if (event.which == 13) {
		$('#btn_search_loc').click();
		event.preventDefault();
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
	// if($('#input_location').val() == ''){
	//     alert('지역을 입력해주세요');
	//     return false;
	// }

	var way = $(':radio[name="type"]:checked').val();

	if(way == 'round'){
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
		//alert('편도데이 예약은 2/11 09시 대여 ~21시 반납 사이 운행건에만 예약 가능합니다.');

		if( $('#select_one_way_start').val() == -1){
			alert('대여존을 선택해주세요.');
			return false;
		}
		if( $('#select_one_way_end').val() == -1){
			alert('반납존을 선택해주세요.');
			return false;
		}

		//alert( $('#select_one_way_start').val() );
		//alert( $('#select_one_way_end').val() );
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

//자세히 버튼
$('#reservation .list .door').click(function(){
	$(this).parent('.section').toggleClass('open');
	$(this).toggleClass('op');

	if($(this).hasClass('op')){
		$unit24 = 590/30;
		$unit48 = 590/54;
		$unit72 = 590/78;

		$(this).html('접기');
	} else {
		$unit24 = 350/30;
		$unit48 = 350/54;
		$unit72 = 350/78;

		$(this).html('자세히');
	}

	return false;
});

$('#reservation .list .section').click(function() {
	$(this).find('.door').click();
	return false;
});

var i_text = $('.i_label').next('.i_text');
$('.i_label').css('position','absolute');
i_text
	.focus(function(){
		$(this).prev('.i_label').css('visibility','hidden');
	})
	.blur(function(){
		if($(this).val() == ''){
			$(this).prev('.i_label').css('visibility','visible');
		} else {
			$(this).prev('.i_label').css('visibility','hidden');
		}
	})
	.change(function(){
		if($(this).val() == ''){
			$(this).prev('.i_label').css('visibility','visible');
		} else {
			$(this).prev('.i_label').css('visibility','hidden');
		}
	})
	.blur();

//금동 추가
var expiration_state = $.cookie('tmp_li_expiration_state');
var expiration_date = $.cookie('tmp_li_expiration_date');

if(expiration_state>=1)
{
	document.getElementById("expiration_date").innerHTML = "~" + expiration_date;
	//회원카드 등록 레이어가 떠야 할 상황이라면 먼저 보여주지 않는다.
	
		$('.mwLayer').addClass('open');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .renewal').css('display','block');
		set_cookie('tmp_li_expiration_state',null);
		set_cookie('tmp_li_expiration_date',null);
	
	$("#mwCont").css("left","40%");
};

var previous_hash = null;
var load_socarzone_list = $.Deferred();
$('.zone1').bind('click', function (event, load_socarzone_list) {
	var code = $(this).attr('href').replace('#', '');
	$('.list .tab').find('li').removeClass('on');
	$(this).parent().addClass('on');
	$('#result_list .group:visible').hide();
	var promise = $('#result_list .group.'+ code).show().promise();

	promise.done(function(){
		if (load_socarzone_list !== undefined) {
			load_socarzone_list.resolve(code);
		}
		else {
			daum_map.move_map_to_city(code);
			change_location_hash('#'+code);
		}
	});
	return false;
});

var load_zone_list_force = function(load_socarzone_list, code) {
	if (load_socarzone_list !== undefined) {
		load_socarzone_list.resolve(code);
	} else {
		daum_map.move_map_to_city(code);
		change_location_hash('#'+code);
	}
}

$(window).bind('hashchange', function() {
	if (previous_hash === '' && previous_hash !== window.location.hash)  {
		return false;
	}
	if (previous_hash === window.location.hash) {
		return false;
	}
	previous_hash = window.location.hash;
	switch (window.location.hash) {

	case '#all':
		set_cookie("hash","all");
		$("#NanumCar_btn").css("display","none");
		load_zone_list_force(load_socarzone_list, 'all');
		break;
	case '#jeju':
		set_cookie("hash","jeju");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#jeju"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'jeju');
		//$("#zoneNavi .jeju").click();
		break;
	case '#gangwon':
		set_cookie("hash","gangwon");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#jeju"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'gangwon');
		//$("#zoneNavi .jeju").click();
		break;
	case '#busan':
		set_cookie("hash","busan");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#busan"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'busan');
		//$("#zoneNavi .busan").click();
		break;
	case '#daegu':
		set_cookie("hash","daegu");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#daegu"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'daegu');
		//$("#zoneNavi .daegu").click();

		break;
	case '#ggincheon':
		set_cookie("hash","ggincheon");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#ggincheon"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'ggincheon');
		//$("#zoneNavi .ggincheon").click();
		break;
	case '#seoul':
		set_cookie("hash","seoul");
		$("#NanumCar_btn").css("display","block");
		//$('.zone1[href="#seoul"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'seoul');
		//$("#zoneNavi .seoul").click();
		break;
	case '#daejeon':
		set_cookie("hash","daejeon");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#daejeon"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'daejeon');
		break;
	case '#gwangju':
		set_cookie("hash","gwangju");
		$("#NanumCar_btn").css("display","none");
		//$('.zone1[href="#gwangju"]').trigger('click', [load_socarzone_list]);
		load_zone_list_force(load_socarzone_list, 'gwangju');
		break;
	default:
		break;
	}
}).trigger('hashchange');

var daum_map = {
	_daum : daum,
	map : null,
	map_small : null,
	map_small_marker : null,
	z_index : 1,
	location_info : {
		all:{
			lat : 35.7098564,
			lng : 127.678901,
			lev : 13
		},
		seoul:{
			lat : 37.59116215416438,
			lng : 126.91328647353782,
			lev : 9
		},
		jeju:{
			lat : 33.364944,
			lng : 126.422424,
			lev : 10
		},
		incheon:{
			lat : 37.5226632383789,
			lng : 126.73835684868,
			lev : 10
		},
		gangwon:{
			lat : 37.713925,
			lng : 128.117944,
			lev : 11
		},
		daegu:{
			lat : 36.2185441,
			lng : 128.2910803,
			lev : 11
		},
		busan:{
			lat : 35.2271958,
			lng : 128.4353206,
			lev : 11
		},
		daejeon:{
			lat : 36.586049,
			lng : 127.085336,
			lev : 10
		},
		gwangju:{
			lat : 34.9456448,
			lng : 125.8049746,
			lev : 12
		}
	},
	move_map_to_all : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.all.lat, this.location_info.all.lng
		));
		this.map.setLevel(this.location_info.all.lev);
	},
	move_map_to_seoul : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.seoul.lat, this.location_info.seoul.lng
		));
		this.map.setLevel(this.location_info.seoul.lev);
	},
	move_map_to_jeju : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.jeju.lat, this.location_info.jeju.lng
		));
		this.map.setLevel(this.location_info.jeju.lev);
	},
	move_map_to_busan : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.busan.lat, this.location_info.busan.lng
		));
		this.map.setLevel(this.location_info.busan.lev);
	},
	move_map_to_incheon : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.incheon.lat, this.location_info.incheon.lng
		));
		this.map.setLevel(this.location_info.incheon.lev);
	},
	move_map_to_gangwon : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.gangwon.lat, this.location_info.gangwon.lng
		));
		this.map.setLevel(this.location_info.gangwon.lev);
	},
	move_map_to_daegu : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.daegu.lat, this.location_info.daegu.lng
		));
		this.map.setLevel(this.location_info.daegu.lev);
	},
	move_map_to_daejeon : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.daejeon.lat, this.location_info.daejeon.lng
		));
		this.map.setLevel(this.location_info.daejeon.lev);
	},
	move_map_to_gwangju : function() {
		if (this.map === null) {
			return false;
		}
		this.map.setCenter(new daum.maps.LatLng(
			this.location_info.gwangju.lat, this.location_info.gwangju.lng
		));
		this.map.setLevel(this.location_info.gwangju.lev);
	},
	initialize : function() {
		//맵 초기화
		var window_width = $(window).width();
		var deferred = $.Deferred();
		this.map = new this._daum.maps.Map(document.getElementById('map'), {
			//제주
			// center: new daum.maps.LatLng(33.364944, 126.422424),
			//서울 - 새절역 좌표
			center: new daum.maps.LatLng(37.59116215416438, 126.91328647353782),
			//제주 레벨 10
			level: 9,
			scrollwheel: window_width > 1024 ? true : false
		});
		return deferred.promise(this.map);
	},
	add_control : function() {
		var zoomControl = new daum.maps.ZoomControl();
		this.map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		var mapTypeControl = new daum.maps.MapTypeControl();
		this.map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
	},
	beforeInfoWindow : null,
	add_maker_and_pin : function(lat, lng, zone_id, attr) {
		var pin = new daum.maps.MarkerImage(
			'${pageContext.request.contextPath}/template/image/pin'+attr+'/pin1.png?v=20170208',
			new daum.maps.Size(40, 38),
			new daum.maps.Point(13,32)
		);

		//마커 생성
		var marker = new daum.maps.Marker({
			position: new daum.maps.LatLng(lat, lng),
			image: pin
		});
		marker.setZIndex(parseInt(marker.getZIndex()+attr,10));
		marker.setMap(this.map);
		var that = this;
		var _daum = daum;
		var _zone_id = zone_id;

		//마커 클릭 이벤트 리스너
		daum.maps.event.addListener(marker, "click", function(){
			that.map.panTo(new _daum.maps.LatLng(lat, lng));
			if(that.beforeInfoWindow != null) {
				that.beforeInfoWindow.setMap(null);
				that.beforeInfoWindow = null;
			}

			//기존 마커 정보 있으면 원복
			if(beforeMarker){
				beforeMarker.setZIndex(parseInt(beforeMarkerzIndex,10));
			}

			//클릭한 마커 마커 z-index 조정
			marker.setZIndex(parseInt(marker.getZIndex() + 50 ,10));
			//클릭한 마커 원 정보 저장
			beforeMarker = marker;
			beforeMarkerzIndex = parseInt(marker.getZIndex() - 50 ,10);
			//that.z_index = marker.getZIndex();
			that.show_info_window(marker, lat, lng, _zone_id);
		});

		//맵 클릭 이벤트 리스너 - 열려있는 InfoWindow 제거
		daum.maps.event.addListener(this.map, "click", function() {
			if(that.beforeInfoWindow != null){
				that.beforeInfoWindow.setMap(null);
				that.beforeInfoWindow = null;
			}
		});
	},
	show_info_window : function(marker, lat, lng, zone_id){
		var that = this;
		var _daum = daum;
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
					var zone_addr = result['zone_addr'] + '';
					var zone_addr_cut;

					if(zone_addr.length > 18){
						zone_addr_cut = zone_addr.substring(0, 18) + '...';
					}
					else{
						zone_addr_cut = zone_addr;
					}

					// 제주공항 존인 경우 차량 대수를 노출하지 않습니다.
					var vehicleCountDetails = parseInt(zone_id, 10) !== 105 ?
						'운영차량 : 총 <em>' + result['total_num'] + '</em>대' :
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
								  '<img src=\'${pageContext.request.contextPath}/template/image/btn_able_socar.png\' alt="예약가능 쏘카 보기" /></a></p>' +
								  '<a href="#" class="close">' +
								  '<img src=\'${pageContext.request.contextPath}/template/image/btn_layer_close.png\' alt="닫기" /></a></div>';

					var overlayInfoWindow = new _daum.maps.InfoWindow({
						content: infoTag
					});
					overlayInfoWindow.setZIndex(999);
					overlayInfoWindow.open(that.map, marker);

					that.beforeInfoWindow = overlayInfoWindow;

					$('.myInfoWindow .close').bind('click', function () {
						that.beforeInfoWindow.setMap(null);
						that.beforeInfoWindow = null;
						return false;
					});
					$('.myInfoWindow .map_zone_name').bind('click', function () {
						var zone_id = $(this).find('.map_zone_id').text();
						var url = "https://api.socar.kr/reserve/zone_info?zone_id=";
						that.show_zone_detail_layer(zone_id, url);
					}); //$('.myInfoWindow .map_zone_name')

					//쏘카 찾기 !! - 오버레이 윈도우 예약가능 쏘카보기 버튼
					$('.btn_overlay_search').bind('click', function () {
						// spock 편도는 무조건 검색 UI 쓰도록...
						var type = $(':radio[name="type"]:checked').val();
						if( type == 'oneway' ){

							if ( true == verify_set_oneway_start_zone( $(this).prev().text() ) ) {
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
		});
	},
	show_zone_detail_layer : function(zone_id, url) {
		var that = this;
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
					if (that.map_small == null) {
						that.map_small = new daum.maps.Map(document.getElementById('map_small'), {
							center : new daum.maps.LatLng(result['lat'], result['lng']),
							level : 5
						});
						var mapTypeControl = new daum.maps.MapTypeControl();
						that.map_small.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
					}
					//마커 생성
					if (that.map_small_marker == null) {
						that.map_small_marker = new daum.maps.Marker({
							position : new daum.maps.LatLng(result['lat'], result['lng'])
						});
						that.map_small_marker.setMap(that.map_small);
					} else {
						var pos = new daum.maps.LatLng(result['lat'], result['lng']);
						that.map_small.setCenter(pos);
						that.map_small.setLevel(5);
						that.map_small_marker.setPosition(pos);
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
	},
	move_map_to_city : function(code) {
		switch (code) {
			case 'all':
				daum_map.move_map_to_all();
				break;
			case 'seoul':
				daum_map.move_map_to_seoul();
				break;
			case 'ggincheon':
				daum_map.move_map_to_incheon();
				break;
			case 'jeju':
				daum_map.move_map_to_jeju();
				break;
			case 'busan':
				daum_map.move_map_to_busan();
				break;
			case 'daegu':
				daum_map.move_map_to_daegu();
				break;
			case 'gangwon':
				daum_map.move_map_to_gangwon();
				break;
			case 'daejeon':
				daum_map.move_map_to_daejeon();
				break;
			case 'gwangju':
				daum_map.move_map_to_gwangju();
				break;
		}
	}
}

load_socarzone_list.done(function(code){
	daum_map.initialize();
	daum_map.add_control();

	//마커 세팅
	
		
			daum_map.add_maker_and_pin(33.481152, 126.490219, 21, '2');
		
	
		
			daum_map.add_maker_and_pin(33.494148, 126.491417, 105, '19');
		
	
		
			daum_map.add_maker_and_pin(33.499702, 126.514511, 110, '0');
		
	
		
			daum_map.add_maker_and_pin(33.500179, 126.528336, 114, '0');
		
	
		
			daum_map.add_maker_and_pin(33.482491, 126.472000, 130, '2');
		
	
		
			daum_map.add_maker_and_pin(37.572979, 126.987991, 138, '2');
		
	
		
			daum_map.add_maker_and_pin(37.571003, 126.995918, 140, '0');
		
	
		
			daum_map.add_maker_and_pin(37.599251, 126.958946, 141, '0');
		
	
		
			daum_map.add_maker_and_pin(37.564697, 126.975189, 148, '2');
		
	
		
			daum_map.add_maker_and_pin(37.560429, 126.995445, 149, '0');
		
	
		
			daum_map.add_maker_and_pin(37.536835, 126.969696, 151, '2');
		
	
		
			daum_map.add_maker_and_pin(37.540009, 127.002625, 154, '2');
		
	
		
			daum_map.add_maker_and_pin(37.542034, 127.017395, 156, '2');
		
	
		
			daum_map.add_maker_and_pin(37.572552, 127.024399, 157, '0');
		
	
		
			daum_map.add_maker_and_pin(37.578087, 127.070602, 158, '0');
		
	
		
			daum_map.add_maker_and_pin(37.595203, 127.062729, 160, '0');
		
	
		
			daum_map.add_maker_and_pin(37.619789, 127.086288, 163, '0');
		
	
		
			daum_map.add_maker_and_pin(37.610676, 127.057991, 165, '0');
		
	
		
			daum_map.add_maker_and_pin(37.593063, 127.019234, 166, '0');
		
	
		
			daum_map.add_maker_and_pin(37.654831, 127.048912, 168, '0');
		
	
		
			daum_map.add_maker_and_pin(37.664539, 127.075890, 170, '0');
		
	
		
			daum_map.add_maker_and_pin(37.615356, 127.063240, 171, '0');
		
	
		
			daum_map.add_maker_and_pin(37.679218, 127.056061, 172, '0');
		
	
		
			daum_map.add_maker_and_pin(37.634495, 127.059319, 173, '0');
		
	
		
			daum_map.add_maker_and_pin(37.622578, 127.060814, 174, '0');
		
	
		
			daum_map.add_maker_and_pin(37.638229, 126.918907, 175, '0');
		
	
		
			daum_map.add_maker_and_pin(37.571552, 126.959663, 176, '2');
		
	
		
			daum_map.add_maker_and_pin(37.559978, 126.941910, 177, '17');
		
	
		
			daum_map.add_maker_and_pin(37.579830, 126.923447, 178, '0');
		
	
		
			daum_map.add_maker_and_pin(37.539410, 126.942818, 179, '2');
		
	
		
			daum_map.add_maker_and_pin(37.536880, 126.881172, 182, '2');
		
	
		
			daum_map.add_maker_and_pin(37.517155, 126.864655, 185, '2');
		
	
		
			daum_map.add_maker_and_pin(37.517616, 126.866882, 186, '0');
		
	
		
			daum_map.add_maker_and_pin(37.523750, 126.851410, 187, '0');
		
	
		
			daum_map.add_maker_and_pin(37.533836, 126.876534, 188, '0');
		
	
		
			daum_map.add_maker_and_pin(37.560436, 126.859543, 190, '0');
		
	
		
			daum_map.add_maker_and_pin(37.572208, 126.805000, 191, '0');
		
	
		
			daum_map.add_maker_and_pin(37.577251, 126.813286, 193, '2');
		
	
		
			daum_map.add_maker_and_pin(37.563465, 126.852669, 194, '0');
		
	
		
			daum_map.add_maker_and_pin(37.492851, 126.894188, 195, '2');
		
	
		
			daum_map.add_maker_and_pin(37.484634, 126.903992, 196, '0');
		
	
		
			daum_map.add_maker_and_pin(37.485348, 126.902458, 197, '2');
		
	
		
			daum_map.add_maker_and_pin(37.491928, 126.824104, 198, '0');
		
	
		
			daum_map.add_maker_and_pin(37.479504, 126.889412, 199, '2');
		
	
		
			daum_map.add_maker_and_pin(37.487343, 126.839211, 200, '0');
		
	
		
			daum_map.add_maker_and_pin(37.462700, 126.906441, 201, '0');
		
	
		
			daum_map.add_maker_and_pin(37.466496, 126.889717, 202, '2');
		
	
		
			daum_map.add_maker_and_pin(37.532478, 126.900848, 204, '19');
		
	
		
			daum_map.add_maker_and_pin(37.524204, 126.895493, 208, '0');
		
	
		
			daum_map.add_maker_and_pin(37.522663, 126.937386, 209, '2');
		
	
		
			daum_map.add_maker_and_pin(37.504299, 126.921150, 210, '0');
		
	
		
			daum_map.add_maker_and_pin(37.490322, 126.923210, 211, '17');
		
	
		
			daum_map.add_maker_and_pin(37.513134, 126.956917, 212, '2');
		
	
		
			daum_map.add_maker_and_pin(37.506199, 126.961945, 213, '0');
		
	
		
			daum_map.add_maker_and_pin(37.487411, 126.913292, 215, '0');
		
	
		
			daum_map.add_maker_and_pin(37.475697, 126.983223, 216, '17');
		
	
		
			daum_map.add_maker_and_pin(37.487373, 127.100021, 217, '0');
		
	
		
			daum_map.add_maker_and_pin(37.525913, 127.028519, 218, '0');
		
	
		
			daum_map.add_maker_and_pin(37.484592, 127.083740, 219, '2');
		
	
		
			daum_map.add_maker_and_pin(37.497005, 127.072540, 220, '0');
		
	
		
			daum_map.add_maker_and_pin(37.627159, 127.025154, 221, '0');
		
	
		
			daum_map.add_maker_and_pin(37.469597, 127.127625, 222, '0');
		
	
		
			daum_map.add_maker_and_pin(37.514755, 127.105316, 224, '0');
		
	
		
			daum_map.add_maker_and_pin(37.552322, 127.135063, 225, '2');
		
	
		
			daum_map.add_maker_and_pin(37.537846, 127.125443, 226, '17');
		
	
		
			daum_map.add_maker_and_pin(37.544830, 126.965317, 227, '0');
		
	
		
			daum_map.add_maker_and_pin(37.637005, 127.025337, 233, '0');
		
	
		
			daum_map.add_maker_and_pin(37.552269, 126.937767, 234, '0');
		
	
		
			daum_map.add_maker_and_pin(37.552319, 126.924805, 235, '2');
		
	
		
			daum_map.add_maker_and_pin(37.479103, 126.951126, 237, '2');
		
	
		
			daum_map.add_maker_and_pin(37.610779, 126.995010, 243, '0');
		
	
		
			daum_map.add_maker_and_pin(33.248318, 126.412109, 246, '2');
		
	
		
			daum_map.add_maker_and_pin(37.499077, 127.037262, 249, '19');
		
	
		
			daum_map.add_maker_and_pin(37.507687, 127.066147, 250, '2');
		
	
		
			daum_map.add_maker_and_pin(37.484711, 127.017784, 251, '0');
		
	
		
			daum_map.add_maker_and_pin(37.486298, 127.031029, 254, '2');
		
	
		
			daum_map.add_maker_and_pin(37.482590, 126.995949, 256, '0');
		
	
		
			daum_map.add_maker_and_pin(37.583443, 126.887840, 258, '2');
		
	
		
			daum_map.add_maker_and_pin(37.495399, 127.032974, 259, '0');
		
	
		
			daum_map.add_maker_and_pin(37.508205, 127.026840, 260, '2');
		
	
		
			daum_map.add_maker_and_pin(37.486900, 127.037788, 261, '0');
		
	
		
			daum_map.add_maker_and_pin(37.529175, 126.848946, 263, '0');
		
	
		
			daum_map.add_maker_and_pin(35.111504, 129.040085, 265, '19');
		
	
		
			daum_map.add_maker_and_pin(35.105385, 129.020340, 269, '0');
		
	
		
			daum_map.add_maker_and_pin(35.170475, 129.069702, 270, '0');
		
	
		
			daum_map.add_maker_and_pin(35.136799, 129.099533, 272, '0');
		
	
			daum_map.add_maker_and_pin(37.476170, 126.886078, 5826, '1');
		
	
		
			daum_map.add_maker_and_pin(37.516914, 127.038574, 5827, '1');
		
	
		
			daum_map.add_maker_and_pin(33.495689, 126.527420, 5828, '1');
		
	
		
			daum_map.add_maker_and_pin(36.121902, 128.173676, 5829, '1');
		
	
		
			daum_map.add_maker_and_pin(35.869915, 128.625183, 5830, '1');
		
	
		
			daum_map.add_maker_and_pin(35.866882, 128.635559, 5831, '1');
		
	
		
			daum_map.add_maker_and_pin(37.478218, 126.852684, 5832, '1');
		
	
		
			daum_map.add_maker_and_pin(37.552326, 127.126808, 5833, '1');
		
	
		
			daum_map.add_maker_and_pin(37.645695, 126.884659, 5834, '1');
		
	
		
			daum_map.add_maker_and_pin(37.542709, 126.968536, 5835, '1');
		
	
		
			daum_map.add_maker_and_pin(37.499996, 127.010429, 5836, '1');
		
	
		
			daum_map.add_maker_and_pin(37.542679, 126.993904, 5837, '1');
		
	
		
			daum_map.add_maker_and_pin(37.467468, 126.656708, 5838, '1');
		
	
		
			daum_map.add_maker_and_pin(37.618259, 126.931900, 5839, '1');
		
	
		
			daum_map.add_maker_and_pin(37.610855, 126.931137, 5840, '0');
		
	
		
			daum_map.add_maker_and_pin(37.397839, 127.121849, 5841, '0');
		
	
		
			daum_map.add_maker_and_pin(37.596783, 126.916069, 5842, '0');
		
	
		
			daum_map.add_maker_and_pin(37.622524, 126.917725, 5844, '0');
		
	
		
			daum_map.add_maker_and_pin(37.580456, 126.898911, 5845, '0');
		
	
		
			daum_map.add_maker_and_pin(37.533985, 126.639206, 5846, '1');
		
	
		
			daum_map.add_maker_and_pin(37.473892, 126.632690, 5847, '1');
		
	
		
			daum_map.add_maker_and_pin(34.777313, 127.649879, 5848, '1');
		
	
		
			daum_map.add_maker_and_pin(35.171894, 129.069824, 5849, '0');
		
	
		
			daum_map.add_maker_and_pin(35.117023, 129.018158, 5850, '0');
		
	
		
			daum_map.add_maker_and_pin(35.162960, 129.063950, 5851, '0');
		
	
		
			daum_map.add_maker_and_pin(35.138710, 129.108673, 5852, '0');
		
	
		
			daum_map.add_maker_and_pin(35.210533, 129.018036, 5853, '0');
		
	
		
			daum_map.add_maker_and_pin(35.178474, 129.080978, 5854, '0');
		
	
		
			daum_map.add_maker_and_pin(35.158749, 129.062515, 5855, '0');
		
	
		
			daum_map.add_maker_and_pin(37.426086, 126.683083, 5856, '1');
		
	
		
			daum_map.add_maker_and_pin(35.159679, 129.054916, 5857, '0');
		
	
		
			daum_map.add_maker_and_pin(35.149826, 129.113998, 5858, '0');
		
	
		
			daum_map.add_maker_and_pin(35.147739, 129.057892, 5859, '1');
		
	
		
			daum_map.add_maker_and_pin(35.157932, 129.025452, 5860, '1');
		
	
		
			daum_map.add_maker_and_pin(37.536285, 126.737007, 5861, '1');
		
	
		
			daum_map.add_maker_and_pin(35.145077, 129.067383, 5862, '1');
		
	
		
			daum_map.add_maker_and_pin(35.108170, 129.036331, 5863, '1');
		
	
		
			daum_map.add_maker_and_pin(35.190258, 129.082626, 5864, '1');
		
	
		
			daum_map.add_maker_and_pin(35.252628, 129.013809, 5865, '1');
		
	
		
			daum_map.add_maker_and_pin(35.177551, 128.795334, 5867, '1');
		
	
		
			daum_map.add_maker_and_pin(35.236031, 128.580383, 5868, '1');
		
	
		
			daum_map.add_maker_and_pin(35.234600, 128.669662, 5869, '1');
		
	
		
			daum_map.add_maker_and_pin(37.330856, 126.786049, 5870, '0');
		
	
		
			daum_map.add_maker_and_pin(35.199726, 128.710800, 5871, '1');
		
	
		
			daum_map.add_maker_and_pin(35.307911, 128.987366, 5872, '1');
		
	
		
			daum_map.add_maker_and_pin(35.174412, 128.062042, 5873, '1');
		
	
		
			daum_map.add_maker_and_pin(35.233227, 128.503357, 5874, '1');
		
	
		
			daum_map.add_maker_and_pin(37.557381, 126.900551, 5875, '0');
		
	
		
			daum_map.add_maker_and_pin(35.570942, 129.342941, 5876, '1');
		
	
		
			daum_map.add_maker_and_pin(37.554207, 126.841057, 5877, '0');
		
	
		
			daum_map.add_maker_and_pin(35.166145, 129.122681, 5878, '1');
		
	
		
			daum_map.add_maker_and_pin(37.529514, 126.836334, 5879, '0');
		
	
		
			daum_map.add_maker_and_pin(35.253803, 129.090134, 5880, '1');
		
	
		
			daum_map.add_maker_and_pin(35.196247, 129.103928, 5881, '1');
		
	
		
			daum_map.add_maker_and_pin(37.515255, 126.708130, 5882, '1');
		
	
		
			daum_map.add_maker_and_pin(36.354107, 127.334175, 5883, '1');
		
	
		
			daum_map.add_maker_and_pin(35.172676, 126.806686, 5884, '1');
		
	
		
			daum_map.add_maker_and_pin(37.690380, 126.718262, 5885, '0');
		
	
		
			daum_map.add_maker_and_pin(37.513626, 126.673615, 5886, '1');
		
	
		
			daum_map.add_maker_and_pin(37.494648, 127.119728, 5887, '0');
		
	
		
			daum_map.add_maker_and_pin(35.827530, 128.531113, 5888, '1');
		
	
		
			daum_map.add_maker_and_pin(35.899914, 128.621246, 5889, '1');
		
	
		
			daum_map.add_maker_and_pin(37.502193, 126.954559, 5891, '1');
		
	
		
			daum_map.add_maker_and_pin(37.587463, 127.018036, 5892, '1');
		
	
		
			daum_map.add_maker_and_pin(33.253162, 126.418724, 5894, '1');
		
	
		
			daum_map.add_maker_and_pin(35.153088, 129.056717, 5895, '1');
		
	
		
			daum_map.add_maker_and_pin(35.174686, 129.117371, 5896, '1');
		
	
		
			daum_map.add_maker_and_pin(35.837704, 127.151222, 5897, '1');
		
	
		
			daum_map.add_maker_and_pin(37.590126, 127.012642, 5899, '1');
		
	
		
			daum_map.add_maker_and_pin(37.562157, 126.964516, 5900, '1');
		
	
		
			daum_map.add_maker_and_pin(37.337170, 127.114944, 5901, '1');
		
	
		
			daum_map.add_maker_and_pin(35.169842, 129.131104, 5902, '1');
		
	
		
			daum_map.add_maker_and_pin(35.170990, 129.177673, 5903, '1');
		
	
		
			daum_map.add_maker_and_pin(37.481728, 126.924263, 5905, '1');
		
	
		
			daum_map.add_maker_and_pin(37.548286, 126.873047, 5906, '1');
		
	
		
			daum_map.add_maker_and_pin(37.568562, 126.819572, 5907, '1');
		
	
		
			daum_map.add_maker_and_pin(37.290272, 127.051674, 5908, '1');
		
	
		
			daum_map.add_maker_and_pin(35.807693, 128.548492, 5909, '1');
		
	
		
			daum_map.add_maker_and_pin(37.481407, 127.144875, 5910, '1');
		
	
		
			daum_map.add_maker_and_pin(37.193661, 127.074806, 5911, '1');
		
	
		
			daum_map.add_maker_and_pin(36.344139, 127.382858, 5913, '1');
		
	
		
			daum_map.add_maker_and_pin(37.249031, 127.057312, 5914, '1');
		
	
		
			daum_map.add_maker_and_pin(35.895447, 128.619659, 5915, '1');
		
	
		
			daum_map.add_maker_and_pin(35.179394, 126.810410, 5916, '1');
		
	
		
			daum_map.add_maker_and_pin(35.166660, 129.133224, 5917, '1');
		
	
		
			daum_map.add_maker_and_pin(37.575905, 127.060303, 5918, '1');
		
	
		
			daum_map.add_maker_and_pin(33.519379, 126.690247, 5919, '1');
		
	
		
			daum_map.add_maker_and_pin(37.498154, 126.755417, 5920, '1');
		
	
		
			daum_map.add_maker_and_pin(37.266228, 127.038948, 5921, '1');
		
	
		
			daum_map.add_maker_and_pin(37.527058, 126.886909, 5922, '1');
		
	
		
			daum_map.add_maker_and_pin(37.470810, 126.927467, 5924, '1');
		
	
		
			daum_map.add_maker_and_pin(37.351055, 127.107803, 5925, '1');
		
	
		
			daum_map.add_maker_and_pin(37.601559, 126.926651, 5927, '1');
		
	
		
			daum_map.add_maker_and_pin(37.405758, 126.737984, 5928, '1');
		
	
		
			daum_map.add_maker_and_pin(37.313995, 126.869324, 5929, '1');
		
	
		
			daum_map.add_maker_and_pin(37.466030, 127.101433, 5930, '1');
		
	
		
			daum_map.add_maker_and_pin(35.865749, 128.599640, 5932, '1');
		
	
		
			daum_map.add_maker_and_pin(35.103580, 126.888374, 5934, '1');
		
	
		
			daum_map.add_maker_and_pin(35.796852, 127.137093, 5935, '1');
		
	
		
			daum_map.add_maker_and_pin(35.816353, 127.122375, 5936, '1');
		
	
		
			daum_map.add_maker_and_pin(35.859047, 128.600311, 5937, '1');
		
	
		
			daum_map.add_maker_and_pin(33.450607, 126.558334, 5938, '1');
		
	
		
			daum_map.add_maker_and_pin(37.494083, 126.491508, 5940, '1');
		
	
		
			daum_map.add_maker_and_pin(37.578224, 127.048759, 5941, '1');
		
	
		
			daum_map.add_maker_and_pin(37.393700, 126.960449, 5943, '1');
		
	
		
			daum_map.add_maker_and_pin(37.482281, 126.744591, 5944, '1');
		
	
		
			daum_map.add_maker_and_pin(37.488747, 126.945938, 5945, '1');
		
	
		
			daum_map.add_maker_and_pin(37.651176, 126.628761, 5946, '1');
		
	
		
			daum_map.add_maker_and_pin(37.300964, 127.109192, 5947, '1');
		
	
		
			daum_map.add_maker_and_pin(37.555443, 127.035309, 5948, '1');
		
	
		
			daum_map.add_maker_and_pin(35.166916, 126.929672, 5949, '1');
		
	
		
			daum_map.add_maker_and_pin(35.164062, 128.110046, 5950, '1');
		
	
		
			daum_map.add_maker_and_pin(36.305805, 127.351898, 5951, '1');
		
	
		
			daum_map.add_maker_and_pin(35.130718, 129.110306, 5953, '1');
		
	
		
			daum_map.add_maker_and_pin(35.199329, 128.070496, 5954, '1');
		
	
		
			daum_map.add_maker_and_pin(35.178314, 129.179916, 5955, '1');
		
	
		
			daum_map.add_maker_and_pin(37.517170, 126.889671, 5956, '1');
		
	
		
			daum_map.add_maker_and_pin(37.380032, 127.117828, 5957, '1');
		
	
		
			daum_map.add_maker_and_pin(37.505531, 127.078476, 5959, '1');
		
	
		
			daum_map.add_maker_and_pin(37.274803, 127.019066, 5960, '1');
		
	
		
			daum_map.add_maker_and_pin(37.397614, 127.112457, 5961, '1');
		
	
		
			daum_map.add_maker_and_pin(37.559776, 126.920197, 5963, '1');
		
	
		
			daum_map.add_maker_and_pin(35.206989, 126.900215, 5965, '1');
		
	
		
			daum_map.add_maker_and_pin(35.794529, 127.113678, 5966, '1');
		
	
		
			daum_map.add_maker_and_pin(37.568840, 126.818306, 5967, '1');
		
	
		
			daum_map.add_maker_and_pin(37.491421, 127.130013, 5968, '1');
		
	
		
			daum_map.add_maker_and_pin(33.475536, 126.476921, 5969, '1');
		
	
		
			daum_map.add_maker_and_pin(37.544575, 126.679550, 5970, '1');
		
	
		
			daum_map.add_maker_and_pin(37.490032, 127.030655, 5971, '1');
		
	
		
			daum_map.add_maker_and_pin(33.252865, 126.510239, 5972, '0');
		
	
		
			daum_map.add_maker_and_pin(37.565338, 126.993248, 5973, '1');
		
	
		
			daum_map.add_maker_and_pin(37.531574, 126.990448, 5974, '1');
		
	
		
			daum_map.add_maker_and_pin(37.613789, 127.077843, 5975, '1');
		
	
		
			daum_map.add_maker_and_pin(37.576591, 126.985191, 5977, '1');
		
	
		
			daum_map.add_maker_and_pin(37.403595, 126.946877, 5978, '1');
		
	
		
			daum_map.add_maker_and_pin(37.439964, 127.129745, 5980, '1');
		
	

	//////////////////////////////////////////////////////////////////////////////////////
	// spock zone 이동, UI 클릭에 따라.
	// 지도가 로드된 후에 이벤트 바인딩
	// 서울
	var _daum_map = daum_map;

	$("#zoneNavi .all").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#all');
		_daum_map.move_map_to_all();

	});

	$("#zoneNavi .seoul").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#seoul');
		_daum_map.move_map_to_seoul();

	});
	// 제주
	$("#zoneNavi .jeju").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#jeju');
		_daum_map.move_map_to_jeju();
	});
	// 부산경남
	$("#zoneNavi .busan").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#busan');
		_daum_map.move_map_to_busan();
	});
	// 인천경기
	$("#zoneNavi .ggincheon").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#ggincheon');
		_daum_map.move_map_to_incheon();
	});
	// 대구경북
	$("#zoneNavi .daegu").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}

		change_location_hash('#daegu');
		_daum_map.move_map_to_daegu();
	});

	// 대전충청
	$("#zoneNavi .daejeon").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#daejeon');
		_daum_map.move_map_to_daejeon();
	});

	// 강원
	$("#zoneNavi .gangwon").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}
		change_location_hash('#gangwon');
		_daum_map.move_map_to_gangwon();
	});

	// 광주전라
	$("#zoneNavi .gwangju").bind("click", function(){
		var $show = $('#setting .setting-show');
		if( $show.css('display') == "block" ) {
			$show.click();
		}

		change_location_hash('#gwangju');
		_daum_map.move_map_to_gwangju();
	});

	//지도 첫 로드시 중심점 이동
	daum_map.move_map_to_city(code);
});



$(document).ready(function(){
	// spock 페이지 오픈시 편도 시작점 UI 초기화
	var url = "https://api.socar.kr/reserve/oneway_zone_list";
	init_oneway_start_zone(url);

	$('#select_one_way_start').change( function () {
		var url = "https://api.socar.kr/reserve/oneway_zone_list";
		var start_zone_id = $('#select_one_way_start').val();
		view_oneway_list(url, start_zone_id);
	});

	$('#select_one_way_end').change( function () {
		// 반납시간대 검사.
		var start_zone_id = $('#select_one_way_start').val();
		var end_zone_id = $('#select_one_way_end').val();

	});

	



//$('.mwLayer').addClass('open');
//$('.mwLayer .mwCont').css('display','none');
//$('.mwLayer .auth').css('display','block');

});
</script>
<script type="text/javascript" src="/template/reservation/../asset/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="/template/reservation/../asset/js/common_reservation.js?1505265015"></script>
</html>