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
		<meta property="og:image" content="${pageContext.request.contextPath}/template/image/pc_m_web_meta_tag.jpg">
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505263829"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505263829"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505263829"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505263829"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505263829"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/socar.css?v=20170731' />
<script type="text/javascript">
$(function(){
	var $socarManual = $('.js-socar-manaul');

	$socarManual.click(function () {
		ga('send', 'event', 'manual', 'manual', {'page' : this.href});
	});

	$('.menu a').click(function(){
		$('.menu li').removeClass('on');
		$(this).parent().addClass('on');
		$('.content').css('display','none');
		var $cont = $(this).attr('href');
		$($cont).css('display','block');
		return false;
	});
	$('.install .tab a').click(function(){
		$('.tab li').removeClass('on');
		$(this).parent().addClass('on');
		$('.inst').css('display','none');
		var $inst = $(this).attr('href');
		$($inst).css('display','block');
		return false;
	});

	if ( document.location.hash ) {
		$('.menu a[href=' + document.location.hash + ']').click();
	}

	if (document.location.pathname=='/impact')
	{
		$('.menu a[href=#socar5]').click();
	}
});
</script>
</head>

<body id="socar">
<div id="wrap">

    	<jsp:include page="/template/Header.jsp"/>


	<div id="container">
		<div id="content">
			<div class="index">
        <img src='${pageContext.request.contextPath}/template/image/top_menu_img_1.png' alt="쏘카에 대해 알아볼까요?" />
			</div>

			<div class="box">
				<div class="snb">
					<ul class="menu">
						<li class="on"><a href="#socar1" class="menu1">이용방법</a></li>
						<li><a href="#socar2" class="menu2">이용규칙</a></li>
						<li><a href="#socar3" class="menu3">모바일 이용안내</a></li>
						<li><a href="#socar4" class="menu4">쏘카 가이드</a></li>
						<li><a href="#socar5" class="menu5">쏘카 임팩트</a></li>
					</ul>

					<ul class="banner">
						<li><a href="https://www.facebook.com/socarsharing" target="_blank"><img src='${pageContext.request.contextPath}/template/image/banner1.gif' alt="쏘카 페이스북" /></a></li>
						<li><a href="http://talk.socar.kr" target="_blank"><img src='${pageContext.request.contextPath}/template/image/banner2_n.png' alt="쏘카 블로그" /></a></li>
						<li><a href="https://goo.gl/Aqsjr5" target="_blank"><img src='${pageContext.request.contextPath}/template/image/banner3.gif' alt="쏘카 인재채용" /></a></li>
					</ul>
				</div>

				
				<div id="socar1" class="content">
					<h3><img src='${pageContext.request.contextPath}/template/image/txt10.gif' alt="쏘카 이용방법" /></h3>
					<p class="txt"><img src='${pageContext.request.contextPath}/template/image/txt11.gif' alt="가입에서 예약 사용까지 간편하게 이용할 수 있는 편리하고 경제적인 쏘카의 이용방법을 알려드립니다. 쏘카와 함께 스마트 카셰어링을 경험해 보세요! " /></p>
					<div class="video-wrapper">
						<iframe class="how-to-use-video" src="https://www.youtube.com/embed/pKEI0rKAQ5Y?rel=0" frameborder="0" allowfullscreen></iframe>
					</div>
					<a class="js-socar-manaul" href="https://m.socar.kr/manual">
						<img src='${pageContext.request.contextPath}/template/image/socar-manual.jpg' />
					</a>
					<ul>
						<li class="rule1">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt12.gif' alt="회원 가입" /></h4>
							<p>카셰어링은 신뢰를 기반으로 한 회원제 서비스입니다.<br />
							운전면허 및 결제카드 등록 후 SO회원이 되시면 쏘카 이용이 가능합니다.</p>
						</li>
						<li class="rule2">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt13.gif' alt="차량 예약" /></h4>
							<p>SO회원 가입 승인 후 쏘카 예약이 가능합니다. 홈페이지 및 모바일앱을 이용해 예약하실<br />수 있고 정상적으로 예약완료된 경우 휴대폰으로 확인메시지가 전송됩니다.</p>
							<p>
								<img src='${pageContext.request.contextPath}/template/image/mobile.gif' alt="안드로이드폰, 아이폰" usemap="#mobile.gif" />
								<map name="mobile.gif">
								<area shape="rect" coords="1,0,98,23" href="https://play.google.com/store/apps/details?id=socar.Socar&referrer=utm_source%3Dwww-socar%26utm_medium%3Duser-guide%26utm_content%3Duser-guide" target="_blank" alt="안드로이드폰" />
								<area shape="rect" coords="99,0,166,23" href="https://itunes.apple.com/app/apple-store/id515173864?pt=117787400&ct=pc_web_guide&mt=8" target="_blank" alt="아이폰" />
								</map>
							</p>
						</li>
						<li class="rule3">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt14.gif' alt="쏘카 이용" /></h4>
							<p>쏘카앱 스마트키 잠금해제 버튼을 누르거나, 등록한 회원카드를 차량 앞 유리에 부착된 단말기에 접촉시켜 주세요. 경적음이 울린 후 차량 문이 열립니다.<br /> 예약한 시간 동안에는 회원카드 및 모바일앱 스마트키로 차량 문을 제어할 수 있습니다.</p>
						</li>
						<li class="rule4">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt15.gif' alt="차량 반납" /></h4>
							<p>반납 시간에 맞추어 차량을 반납 장소에 주차하신 후 모바일앱 스마트키 및 회원카드로 차량 문을 <br />잠가 주세요.<br/>
							제자리에 정상 반납 처리되면 휴대폰으로 확인 메시지가 발송됩니다.</p>
						</li>
						<li class="rule5">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt16.gif' alt="요금 결제" /></h4>
							<p>차량 이용에 따른 요금은 대여료와 주행요금으로 구분되며, 가입시 등록한 결제카드로 청구됩니다.<br />
							결제가 완료되지 않으면 차량 사용에 제한이 있을 수 있으니, 미리 결제카드의 유효여부를<br />확인해주세요. </p>
						</li>
					</ul>
				</div>
				

				
				<div id="socar2" class="content">
					<h3><img src='${pageContext.request.contextPath}/template/image/txt17.gif' alt="쏘카 이용규칙" /></h3>
					<ul>
						<li class="rule1">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt18.gif' alt="이용 후 대여한 쏘카존으로 반납 필수!" /></h4>
							<p>편도 이용을 제외한 모든 차량 반납은 대여한 쏘카존으로 하셔야 합니다. <br />만약 다른 차량이 주차되어 있거나 부득이한 사정이 생기신 경우는 고객센터로 연락주세요.</p>
						</li>
						<li class="rule2">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt19.gif' alt="반납시간을 준수해주세요!" /></h4>
							<p>다음 사용자를 위해 반납시간을 꼭 지켜주세요.<br />반납이 늦어지는 경우 페널티 또는 경고조치를 받을 수 있으며, 반납연장은 모바일앱에서 가능합니다.</p>
						</li>
						<li class="rule3">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt20.gif' alt="연료가 50%이상 남아있는지 확인해주세요!" /></h4>
							<p>다음 사용자를 위해 연료가 충분히 남았는지 확인해주세요.<br />모든 주유소에서 주유가 가능하며, 결제는 차량 내부에 비치된 주유카드로 진행하시면 됩니다.</p>
						</li>
						<li class="rule4">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt21.gif' alt="쏘카에서 흡연은 꼭 참아주세요!" /></h4>
							<p>함께 사용하는 분들을 위해 쏘카를 이용하는 동안 흡연은 꼭 참아주세요!<br />이용 후에는 차량 내부에 있는 쓰레기를 정리해 주시기 바랍니다.</p>
						</li>
						<li class="rule5">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt22.gif' alt="문제가 생긴 경우 고객센터로 즉시 연락주세요!" /></h4>
							<p>예약한 차량에 사고 흔적이 있거나 이용 중 사고 및 기타 문제로 인해 긴급출동이 필요한 경우에는 신속하게<br />고객센터로 상황을 알려주시기 바랍니다.</p>
						</li>
						<li class="rule6">
							<h4><img src='${pageContext.request.contextPath}/template/image/txt23.gif' alt="애완동물은 캐리어를 이용해주세요!" /></h4>
							<p>애완동물은 캐리어를 이용해 쏘카에 동반 탑승하실 수 있습니다.<br />단, 장애인 반려견은 캐리어 없이도 탑승 가능합니다.</p>
						</li>
					</ul>

					<h4><img src='${pageContext.request.contextPath}/template/image/txt24_n.gif' alt="페널티 규정" /></h4>
					<table cellspacing="0" class="cols">
					<colgroup>
						<col width="130" />
						<col width="130" />
						<col width="" />
					</colgroup>
					<thead>
					<tr>
						<th colspan="2" class="first">운전자 준수사항 미이행 내용</th>
						<th>페널티금액</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td rowspan="2" class="first">자동차 반납의 지연</td>
						<td>10분 이상 30분 미만</td>
						<td>10,000원</td>
					</tr>
					<tr>
						<td>30분 이상</td>
						<td>기본 반납 지연 페널티금액 10,000원과 자동차 반납 예정 시각으로부터 반납 시각까지의 시간 동안의 해당 자동차 이용 기준요금의 2배</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 반납시 잔여연료의 부족</td>
						<td>20,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 내에서의 흡연</td>
						<td>300,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">자동차 키 분실</td>
						<td>80,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">헤드라이트 소등 미실시</td>
						<td>20,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">쏘카존 쓰레기 투기 및 자동차 내부 상태 불량</td>
						<td>50,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">지정되지 않은 장소로의 자동차 반입</td>
						<td>페널티금액 50,000원 및 견인, 주차비 등 지정되지 않은 장소로의 자동차 반납으로 인하여 발생한 실비 일체</td>
					</tr>
					<tr>
						<td colspan="2" class="first">차량의 파손이나 도난 발견시<br />본사로 즉시 연락하지 않은 경우</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">동승운전자 미등록 운전</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">음주 및 약물복용 운전</td>
						<td>100,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">편도 핫딜 미운행 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">핸들 미션 불이행 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">전기자동차 반납 시 충전기 미연결 시</td>
						<td>30,000원</td>
					</tr>
					<tr>
						<td colspan="2" class="first">부름 차량이 목적지로 출발 후<br />예약 취소</td>
						<td>30,000원</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- //이용방법 -->

				<!-- 이용규칙 -->
				<div id="socar3" class="content">
					<h3><img src='${pageContext.request.contextPath}/template/image/txt26.gif' alt="모바일 이용안내" /></h3>
					<p class="txt"><img src='${pageContext.request.contextPath}/template/image/txt27.gif' alt="경제적이고 편리한 카셰어링을 이용하는 가장 쉽고 빠른 방법은?
언제 어디서나 스마트폰만 있으면 예약부터 사용까지 OK!
모바일에서도 쏘카를 이용해보세요." /></p>
					<div class="install">
						<h4><img src='${pageContext.request.contextPath}/template/image/txt28.gif' alt="접속 및 설치방법" /></h4>
						<ul class="tab">
						<li class="on"><a href="#install1"><img src='${pageContext.request.contextPath}/template/image/tab1.gif' alt="모바일" /></a></li>
						<li><a href="#install2"><img src='${pageContext.request.contextPath}/template/image/tab2.gif' alt="PC" /></a></li>
						</ul>

						<div id="install1" class="inst">
							<img src='${pageContext.request.contextPath}/template/image/txt29.gif' alt="QR 코드스캔
스마트폰의 코드스캔앱으로 QR코드를 스캔하면,
모바일웹으로 이동합니다.
https://m.socar.kr" usemap="#txt29" />
							<map name="txt29">
							<area shape="rect" coords="74,55,135,68" href="https://m.socar.kr" target="_blank" alt="https://m.socar.kr" />
							</map>
						</div>

						<div id="install2" class="inst">
							<img src='${pageContext.request.contextPath}/template/image/txt30.gif' alt="PC에서 설치
각 링크를 클릭하시면, 해당 스마트폰 OS 앱스토어로 이동합니다.
안드로이드 폰
아이폰" usemap="#txt30" />
							<map name="txt30">
							<area shape="rect" coords="0,43,98,61" href="https://play.google.com/store/apps/details?id=socar.Socar&referrer=utm_source%3Dwww-socar%26utm_medium%3Duser-guide%26utm_content%3Duser-guide" target="_blank" alt="안드로이드 폰" />
							<area shape="rect" coords="0,64,61,78" href="https://itunes.apple.com/app/apple-store/id515173864?pt=117787400&ct=pc_web_guide&mt=8" target="_blank" alt="아이폰" />
							</map>
						</div>
					</div>

					<div class="function">
						<h4><img src='${pageContext.request.contextPath}/template/image/txt31.gif' alt="주요기능안내" /></h4>
						<ul>
						<li>
							<h5><img src='${pageContext.request.contextPath}/template/image/txt32.gif' alt="1. 빠르고 편리한 쏘카 예약하기" /></h5>
							<p class="txt">현 위치에서 가까운 쏘카존이나 원하는 지역을 검색하세요.<br />이용 가능한 차량을 쉽고 빠르게 예약할 수 있습니다.</p>
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/features-1.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='${pageContext.request.contextPath}/template/image/txt33.gif' alt="2. 모바일로 작동가능한 스마트키" /></h5>
							<p class="txt">회원카드 없이도 스마트키를 이용하여 예약한 차량의 문을 열고<br />닫거나, 경적을 울릴 수 있습니다.</p>
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/features-2.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='${pageContext.request.contextPath}/template/image/txt34_n.gif' alt="3. 예약내역은 마이페이지" /></h5>
							<p class="txt" style="height:76px;">내 정보와 보유한 쿠폰을 확인할 수 있으며, 예약 내역에서 <br />예약을 변경하거나 취소할 수 있습니다.</p>
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/features-3.png' alt="" /></p>
						</li>
						<li>
							<h5><img src='${pageContext.request.contextPath}/template/image/txt35.gif' alt="4. 불편한점은 바로 고객센터" /></h5>
							<p class="txt" style="height:76px;">차량 이용 중 궁금한 점이나 불편한 점이 있으면 고객센터에서<br />도와드려요. 차량에 사고 흔적이 있으면 사진을 찍어 바로 신고도 <br />할 수 있습니다.</p>
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/features-4.png' alt="" /></p>
						</li>
						</ul>
					</div>
				</div>
				<!-- //이용규칙 -->

				<!-- 모바일 이용안내 -->
				<div id="socar4" class="content">
					<h3><img src='${pageContext.request.contextPath}/template/image/txt4.gif' alt="쏘카 가이드" /></h3>
					<p class="txt1"><img src='${pageContext.request.contextPath}/template/image/txt5.gif' alt="쏘카는 차를 소유하는 사람보다 공유하는 사람들이 훨씬 더 많아지는 날을 꿈꿉니다!" /></p>
					<p class="txt2"><img src='${pageContext.request.contextPath}/template/image/txt6.gif' alt="물론 공유는 소유보다 불편할 때도 있습니다. 타인과 무엇을 나눠 쓴다는 것이 쉽지만은 않지요. 하지만 쏘카는 이러한 불편과 거북함을 최소화시키기 위해 끊임없이 고민하려고 합니다. 개인의 재화로 인식되었던 자동차를 사회적 재화로 바꾸고, 전체적인 사회적 비용을 낮추어 지역사회에 재투자되도록 노력하겠습니다. 이용자의 편의를 최우선으로 합리적인 소비문화를 이끌어낼 수 있도록 노력하겠습니다." /></p>
					<div class="gallery">
						<h4><img src='${pageContext.request.contextPath}/template/image/txt7.gif' alt="쏘카 회원이 되시면, 쏘카가 준비하는 재미있는 일들을 함께하실 수 있습니다. " /></h4>
						<div class="list">
							<ul>
							<li><img src='${pageContext.request.contextPath}/template/image/thumb1.jpg' alt="" /></li>
							<li><img src='${pageContext.request.contextPath}/template/image/thumb2.jpg' alt="" /></li>
							<li><img src='${pageContext.request.contextPath}/template/image/thumb3.jpg' alt="" /></li>
							<li><img src='${pageContext.request.contextPath}/template/image/thumb4.jpg' alt="" /></li>
							</ul>
						</div>

						<p class="prev">
							<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_prev.gif' alt="이전" /></a>
						</p>

						<p class="next">
							<a href="#"><img src='${pageContext.request.contextPath}/template/image/btn_next.gif' alt="다음" /></a>
						</p>

						<ul class="txt">
						<li>쏘카 회원들과 함께 ‘제주올레걷기축제’ 코스튬플레이</li>
						<li>대동제와 함께하는 쏘카존 만들기 이벤트 진행</li>
						<li>Full Moon DJ Festival에 쏘카 회원 초대</li>
						<li>이마트와 함께 카셰어링 체험하기 이벤트 진행</li>
						<li>장롱면허 독립을 위한 2030 에코 드라이빙스쿨 진행</li>
						<li>GET Live(인디밴드 공연) 매월 쏘카 회원 정기 초청</li>
						<li>추석감사이벤트. 쏘카 트렁크에 숨겨둔 Thanks box 찾기</li>
						<li>이스타항공과 함께 여름 제주여행 패키지 제공</li>
						</ul>
					</div>

					<div class="qna">
						<h4><img src='${pageContext.request.contextPath}/template/image/txt8_1.gif' alt="쏘친들의 쏘카후기" /></h4>
						<p>쏘친들의 리얼 쏘카 이용 후기! 지역 곳곳에서 쏘카와 함께 한 쏘친들을 만나보세요!</p>

						<ul>
						<li class="first" style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/HyCFQs');return false;">
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/member_img1.jpg' alt="" /></p>
							<h5>박하승 회원 (20대 남)</h5>
							<p class="s_tit">쏘카와 함께 한 웨딩 촬영!</p>
							<p class="txt">"멀지 않은 거리를 이동해야 하고,<br />짐이 많았던 번거로움을 줄이기 위해<br />쏘카를 이용했어요! 완전 대 만족!"</p>
							<p class="more"><a href="http://goo.gl/HyCFQs" target="_blank">더보기</a></p>
						</li>
						<li style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/NG4K7k');return false;">
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/member_img2.png' alt="" /></p>
							<h5>김승현 회원(20대 여)</h5>
							<p class="s_tit">쏘카와 함께 한 부산 여행!</p>
							<p class="txt">"기차 타고 도착한 부산! 부산역에<br />있는 쏘카 미니와 함께 여행했어요!<br />쏘카 고마워요!"</p>
							<p class="more"><a href="http://goo.gl/NG4K7k" target="_blank">더보기</a></p>
						</li>
						<li class="first" style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/tYJn0t');return false;">
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/member_img3.jpg' alt="" /></p>
							<h5>박민욱 회원 (20대 남)</h5>
							<p class="s_tit">쏘카와 함께 떠난 농촌 지역 활성화</p>
							<p class="txt">"쏘카 타고 친구들과 함께 농촌 지역<br />활성화를 위한 봉사활동 다녀왔어요!"</p>
							<p class="more"><a href="http://goo.gl/tYJn0t" target="_blank">더보기</a></p>
						</li>
						<li style="cursor:pointer;" onclick="javascript:window.open('http://goo.gl/m0tkVi');return false;">
							<p class="thumb"><img src='${pageContext.request.contextPath}/template/image/member_img4.jpg' alt="" /></p>
							<h5>김재훈 회원 (30대 남)</h5>
							<p class="s_tit">제주여행은 공항에서부터 쏘카와!</p>
							<p class="txt">"사랑하는 가족과의 제주여행!<br />공항에서 바로 편리하게 쏘카했어요!"</p>
							<p class="more"><a href="http://goo.gl/m0tkVi" target="_blank">더보기</a></p>
						</li>
						</ul>
					</div>

				</div>
				<!-- //모바일 이용안내 -->
				<!-- 쏘카 임팩트 -->
				<div id="socar5" class="content">
					<h3><img src='${pageContext.request.contextPath}/template/image/tit_socar_5_1.gif' alt="쏘카 임팩트" /></h3>
					<p><img src='${pageContext.request.contextPath}/template/image/img_socar_5_1_20150904.png' alt="" /></p>
					<div class="blind">
						<h4>쏘카는 긍정적인 사회/환경적 영향을 고려하는 비즈니스 활동을 지향합니다. </h4>
						<p>합리적이고 대안적인 이동수단으로서 카셰어링 서비스를 제공하며, 이로 인한 다양한 사회/환경적 파급효과를 지속적으로 관찰하고 그 효과를 스스로 입증하고자 합니다.</p>
					</div>
					<p style="padding-top:20px">
						<a href="https://www.bcorporation.net/community/socar" target="_blank" title="B Corp 자세히 보기">
							<img src='${pageContext.request.contextPath}/template/image/impact_b_corp.png?v=3' role="presentation" />
						</a>
					</p>
					<div class="blind">
						<h4>쏘카는 B Corp 인증을 통해 기업의 사회/환경적 책임에 관한 글로벌 기준을 준수합니다. </h4>
						<p>쏘카는 자원의 효율적 활용을 통해서 사회/환경적 문제를 효과적으로 해결한다는 점에서 글로벌 인증을 획득하였으며, 투명한 경영, 건강한 근로 환경 구축을 통해 지역사회 안에서 지속가능하고 긍정적인 영향을 끼칠 수 있는 기업문화를 확산해가고자 합니다.</p>
						<h4>쏘카, 카셰어링 분야에서 세계 최초로 B Corp 인증 획득</h4>
						<p>글로벌 사회적기업 인증인 B Corp은 이윤창출을 넘어 사회 환경적 임팩트를 추구하는 'Benefit Corporation'을 의미합니다.</p>
					</div>
					<p  style="padding-top:20px">
						<img src='${pageContext.request.contextPath}/template/image/impact_ccm.png?v=3' role="presentation" />
					</p>
					<div class="blind">
						<h4>쏘카는 고객의 관점에서 서비스 가치를 극대화하기 위해 노력합니다.</h4>
						<p>쏘카는 회원들의 즐거운 쏘카 라이프를 위하여, 안전을 최우선으로 서비스 만족을 위해 소비자중심경영 활동을 수행하고 있습니다. 고객 목소리에 귀 귀울여 더 나은 서비스 제공을 위해 노력하고, 더욱 믿고 이용할 수 있는 카셰어링 서비스가 되고자 합니다.</p>
						<h4>쏘카, 카셰어링 분야 최초 CCM 인증 획득</h4>
						<p>소비자중심경영(CCM)은 기업이 수행하는 모든 활동을 소비자 관점에서, 소비자 중심으로 구성하고 관련 경영활동을 지속적으로 개선하고 있는지를 한국소비자원에서 평가하고, 공정거래위원회가 인증해주는 국가인증제도 입니다.</p>
					</div>
					<p style="padding-top:20px"><img src='${pageContext.request.contextPath}/template/image/impact_eco.png?v=4' role="presentation" /></p>
					<div class="blind">
						<h4>쏘카는 국내 대표 공유경제 모델로서 기업의 환경적 책임을 다합니다.</h4>
						<p>국내 대표 카셰어린 서비스인 쏘카는 자동차 공유를 통해 전체 자동차 대수를 줄이고 환경 영향을 저감시키는데 기여하고 있으며, 전체 서비스 차량 중 저공해 차량을 50% 이상 유지하고,
							에코 드라이빙 캠페인 및 대중교통 연계할인 등을 통해 온실가스 저감을 실천하고 있습니다.</p>
						<h4>쏘카, 국내 업계 최초 친환경 인증 획득</h4>
						<p>친환경 인증은 생산, 소비, 폐기 등 서비스를 제공하는 전 과정에 걸쳐 환경 부하를 줄이도록 체계화된 제품 및 서비스에 부여됩니다.
							환경마크 대상품목으로 카셰어링 부문이 지정된 이후 쏘카가 첫 번째 인증 사례가 되었습니다.</p>
					</div>
					<p style="padding-top:20px"><img src='${pageContext.request.contextPath}/template/image/img_socar_5_4_20150904.png' alt="" /></p>
					<div class="blind">
						<ul>
							<li>
								<strong>SHARE - 보다 합리적인 자동차 생활</strong>
								<em>평균 이동거리 40% 감소</em>
								카셰어링으로 차량을 이용하면 필요한 시간만큼 계획적인 자동차 생활이 가능합니다. 자차를 이용할 때보다 평균적으로 40%이상 이동거리가 줄어드는 효과가 있습니다.
							</li>
							<li>
								<strong>SAVE - 도심 대기 환경 개선</strong>
								<em>CO2 배출 저감량 957톤</em>
								계획적인 자동차 이용은 대기 중에 배출되는 CO2​량도 줄입니다. 쏘친들이 함께 줄인 CO2​배출량은 연간 소나무 20만 그루가 흡수하는 CO2​량과 같습니다.
							</li>
							<li>
								<strong>SMART - 저공해 차량 이용 권장</strong>
								<em>저공해 차량 보유율 65%</em>
								경형 및 하이브리드 등 저공해 차량​을 60%이상으로​ ​유지합니다. 저공해 차량은 일반차종에 비해 CO2​배출량이 낮아 카셰어링 서비스의 환경영향 저감​효과를 극대화할 수 있습니다.
							</li>
						</ul>
					</div>
					<p style="padding-top:20px"><img src='${pageContext.request.contextPath}/template/image/img_socar_5_4.jpg' usemap="#img_socar_5_4" alt="쏘카와 함께 하면 좋을 일들을 제안해주세요! - 지역사회를 연결하고 긍정의 에너지를 퍼트릴 수 있는 쏘친들의 다양한 아이디어를 기다립니다." /></p>
					<map name="img_socar_5_4" id="img_socar_5_4">
						
							<area shape="rect" coords="145,73,279,118" href="#login" class="require_login" data-href="/inquiry#D" alt="아이디어 제안하기"  />
						
					</map>
				</div>
				<!--// 쏘카 임팩트 -->
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
						
						<textarea id="layer_askcar_text" cols="" rows="" class="textarea" onclick="alert('로그인 후 작성이 가능합니다.');return false;"></textarea>
						<input type="image" src='${pageContext.request.contextPath}/template/image/btn_request.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" class="submit" alt="신청">
						
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505263829" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505263829" charset="utf-8"></script>


			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>