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
		<link href='${pageContext.request.contextPath}/template/image/header_logo.png?v=20170428' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.banner.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505264660"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505264660"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505264660"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505264660"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505264660"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/customer.css?v=20170731' />
<style type="text/css">
.btn_submit {
	background-image: url('${pageContext.request.contextPath}/template/image/btn_confirm.gif');
	background-position:  0px 0px;
	background-repeat: no-repeat;
	border: none;
	width: 60px;
	height: 33px;
}
</style>
<script type="text/javascript">
</script>
</head>

<body id="customer" class="inquiry">
<div id="wrap">
		<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<h2><img src='${pageContext.request.contextPath}/template/image/h2.gif' alt="고객센터 쏘카에 대한 궁금증 해결을 도와드립니다." /></h2>
			<p class="callCenter"><img src='${pageContext.request.contextPath}/template/image/btn_callcenter_150225.gif' alt="1661-3315 콜센터 안내" /></p>
			<div class="box lnb">
				<!-- lnb -->
<ul class="lnb">
<li><a href="<c:url value='/Notice/Notice.do'/>" title="공지사항" class="lnb1">공지사항</a></li>
<li><a href="<c:url value='/Notice/Faq.do'/>" title="자주묻는 질문" class="lnb2">자주묻는 질문</a></li>

<li><a href="<c:url value='/Notice/Inquiry.do'/>" onclick="return requireLogin()"  title="1:1 문의하기" class="lnb3">1:1 문의하기</a></li>
<!-- <c:url value='/Notice/Inquiry.do'/> -->
<li><a href="<c:url value='/Notice/Voc.do'/>" title="고객의견 반영절차" class="lnb4">고객의견 반영절차</a></li>
</ul>
<!-- //lnb -->
				<div class="section">
					<h3><img src='${pageContext.request.contextPath}/template/image/h3_inquiry.gif' alt="1:1 문의하기" /></h3>
					<form action="<c:url value='/Notice/Inquiry.do'/>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
					<input type="hidden" name="smem_id" value="${smem_id}"/>
						<fieldset>
							<table cellspacing="0" class="rows">
							<tr>
								<th><img src='${pageContext.request.contextPath}/template/image/inquiry_txt2.gif' alt="문의분류" /></th>
								<td>
									<select style="width:165px" name='category' id='category'>
										<option value='A'>예약/결제문의</option>
										<option value='B'>가입문의</option>
										<option value='C'>차량이용/사고</option>
										<option value='D'>불편접수/건의</option>
										<option value='E'>프로모션/쿠폰</option>
										<option value='F'>법인/단체</option>
										<option value='G'>탈퇴</option>
										<option value='H'>쏘파라치</option>
										<option value='I'>핸들주차비 환급요청</option>
										<option value='J'>기타</option>										
									</select>
								</td>
							</tr>
							<tr>
								<th><img src='${pageContext.request.contextPath}/template/image/inquiry_txt3.gif' alt="제목 / 내용" /></th>
								<td>
									<input id="title" type="text" name="title" class="input" value="" style="width:400px" />
									<textarea id="contents" cols="" name="contents" rows="15" class="textarea" style="width:585px"></textarea>
								</td>
							</tr>
							<tr>
								<th><img src='${pageContext.request.contextPath}/template/image/inquiry_txt4.gif' alt="파일첨부" /></th>
								<td>
									<input type="file" class="input" name="userfile" value="" />
									<span class="tip ml10">이미지 파일은 jpg, png, gif 만 첨부가능합니다.</span>
								</td>
							</tr>
							</table>							
							<p class="centerBtn">
								<button type="submit" onclick="sendFunction()">확인</button>
							</p>
						</fieldset>
					</form>
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
			<!-- callCenter -->
			<div class="call mwCont">
				<div><img src='${pageContext.request.contextPath}/template/image/callcenter_img_20160516.gif' alt="콜센터 - 문의사항이 있거나 차량 운행 중 도움이 필요한 때 쏘카 전문 상담원이 빠르고 친절하게 도와드립니다. 예약및 이용중 차량안내 - 일반상담 1661-3315, 긴급상담 1661-4977 이고 일반상담의 경우 차량 고장 및 이용관련 문의, 예약관련 문의를 받고 긴급상담의 경우 사고접수 및 처리사항 확인 하실 수 있습니다. 기타 궁굼한점은 1:1문의나 카카오톡 상담을 이용해주세요." /></div>
        <a href="https://m.socar.kr/chat" class="click-btn"></a>
				<p class="centerBtn">
					<a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/btn_close.gif' alt="닫기" /></a>
				</p>
			</div>
			<!-- //callCenter -->


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
			<form name="request" method="post" action="<c:url value='/Notice/Inquiry.do'/>">
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

<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505264660" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505264660" charset="utf-8"></script>

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>