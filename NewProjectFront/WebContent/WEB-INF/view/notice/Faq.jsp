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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505264454"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505264454"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505264454"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505264454"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505264454"></script>
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
<link rel="stylesheet" href='${pageContext.request.contextPath}/template/css/pagination.css' />
<script type="text/javascript" src="/template/customer/../asset/js/jquery.pagination.js"></script>
<script type="text/javascript">
var $loaded = false;
jQuery.fn.center = function() {
	this.css('position', 'absolute');
	this.css('left', ((this.parent().width() - this.width()) / 2) + (this.width() / 2) + 'px');
	return this;
};
function loadContents(page_index){
	if(page_index < 0){
	return false;
	}
	if($loaded == false){
		$loaded = true;
		return false;
	}
	$.ajax({
		type: 'GET',
		url: "https://api.socar.kr/cs/faq",
		crossDomain: true,
		data: {
			category_id: '0',
			limit: 10,
			has_contents: 'true',
			page: page_index
		},
		dataType: 'jsonp',
		success: function(json){
			if(json.retCode == 1){
				var result = json.result.data;
				$('.faq-list').empty();
				for(var i in result){
					$('.faq-list').append(
						'<dt name="#faq' + (i+1) + '"><span>Q</span> ' + result[i].title +'</dt>' +
						'<dd><span>A</span> ' + result[i].content + '</dd>'
					);
				}
				setTimeout(function(){
					$(".faq dt:first").addClass('active');
					$(".faq dd:first").slideDown('slow');
				},100);
				$(".faq .faq-list dt").click(function(){
					$(".faq .faq-list dt").removeClass('active');
					$(this).addClass('active');
					$(".faq .faq-list dd").not($(this).next("dd")).slideUp();
					$(this).next("dd").slideToggle();
					return false;
				});
			}
			else{
			}
		},
		error: function(){
			alert('err');
		}
	});
	return false;
}

$(function(){
	if ( document.location.hash ) {
		setTimeout(function(){
			$('.faq-list dt[name=' + document.location.hash + ']').click();
		},100);
	}
	else{
		setTimeout(function(){
			$(".faq dt:first").addClass('active');
			$(".faq dd:first").slideDown('slow');
		},100);
	}
	var opt = {
		callback: loadContents,
		next_text: '>',
		prev_text: '<',
		num_edge_entries: 0,
		num_display_entries: 10,
		items_per_page: 10
	};
	

	$('.btn_category.0').parent().addClass('on');

	$('body').keydown(function(event) {
		if (event.which == 13) {
			$('#btn_search').click();
			event.preventDefault();
		}
	});

	$('.btn_category').bind('click', function () {
		var num = $(this).attr('href');
		window.location.href = '/faq/' + num;
		return false;
	});

	$('#btn_search').bind('click', function () {
		var keyword = $(this).prev().val();

		if(keyword == ''){
			alert('검색어를 입력해주세요.');
			return false;
		}

		$.doPost('https://www.socar.kr/cs/faq_search', {
			keyword: keyword,
			page: 0
		});
		return false;
	});
});
</script>
</head>

<body id="customer" class="faq">
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

	<!--<li><a href="javascript:alert('로그인이 필요합니다.');" title="1:1 문의하기" class="lnb3">1:1 문의하기</a></li>-->
	<li><a href="#" title="1:1 문의하기" class="lnb3 require_login" data-href="/inquiry">1:1 문의하기</a></li>
<!-- <c:url value='/Notice/Inquiry.do'/> -->
<li><a href="<c:url value='/Notice/Voc.do'/>" title="고객의견 반영절차" class="lnb4">고객의견 반영절차</a></li>
</ul>
<!-- //lnb -->
				<div class="section">
					<h3><img src='${pageContext.request.contextPath}/template/image/h3_faq.gif' alt="자주묻는 질문" /></h3>
					<!-- search -->
					<div class="search-box">
						<form name="search" method="post" action="">
							<fieldset>
								<select>
									<option selected="selected">전체</option>
								</select>
								<input type="text" class="input" />
								<input id="btn_search" type="image" class="submit" src='${pageContext.request.contextPath}/template/image/btn_faq_search.gif' alt="검색" />
							</fieldset>
						</form>
					</div>
					<!-- //search -->
					<form name="faq" method="post" action="">
						<fieldset>
							<!-- tab -->
							<div class="tab">
							<ul>
								
									<li><a href="0" class="btn_category tab1 0">자주묻는 질문</a></li>
								
									<li><a href="1" class="btn_category tab2 1">예약/결제문의</a></li>
								
									<li><a href="2" class="btn_category tab3 2">가입문의</a></li>
								
									<li><a href="3" class="btn_category tab4 3">차량이용/사고</a></li>
								
									<li><a href="4" class="btn_category tab5 4">프로모션/쿠폰</a></li>
								
									<li><a href="5" class="btn_category tab6 5">법인/단체</a></li>
								
									<li><a href="6" class="btn_category tab7 6">탈퇴</a></li>
								
									<li><a href="7" class="btn_category tab8 7">기타</a></li>
								
 							<!-- <li class="on"><a href="#" class="tab1">자주묻는 질문</a></li> -->
							</ul>
							</div>
							<!-- //tab -->
							<!-- list -->
 							<p class="count">총게시물 <strong></strong>개</p>
							<dl class="faq-list">
								
									<dt name="#faq1"><span>Q</span> 주유는 어떻게 해야 하나요? 비용은 누가 내나요?</dt>
									<dd><span>A</span> 차량 이용 중 주유가 필요할 때에는 가까운 주유소에 들러 주유해주세요.<p>유류비는 차량 내부에 비치된 '주유전용카드'로 결제해주세요.</p><p>결제하신 유류비는 쏘친님에게 부담되지 않으며, 반납 완료 후에 주행거리를 기준으로 주행요금이 산정되어 등록하신 결제카드로 결제됩니다.<br /><br />
※ 개인카드 및 현금으로 주유비를 결제하시면 환불이 불가합니다.</p><p>※ 주행요금은 유가변동에 따라 탄력적으로 운영됩니다.</p></dd>
								
									<dt name="#faq2"><span>Q</span> 내가 예약한 동안 차량은 다른 사람이 운전해도 되나요?</dt>
									<dd><span>A</span> 이용 시작 전 등록한 동승운전자에 한해 운전이 가능합니다. 동승운전자 등록 방법은 다음과 같습니다.<p>☞쏘카 앱▷마이페이지▷예약내역▷예약된 쏘카 선택▷동승운전자 등록</p><p>※ 제 3자 및 예약자 없이 동승운전자 단독 운행시 페널티가 발생하며 사고발생시 보험 적용이 불가합니다.</p></dd>
								
									<dt name="#faq3"><span>Q</span> 반납장소에 다른 차가 세워져 있으면 어떻게 하나요?</dt>
									<dd><span>A</span> 지정 반납 쏘카존에 다른 차량이 세워져있을 경우 고객센터(1661-3315)로 연락주시면 가까운 다른 주차장소를 안내해 드리겠습니다.</dd>
								
									<dt name="#faq4"><span>Q</span> 바로반납 혜택을 제공하는 기준은 어떻게 되나요?</dt>
									<dd><span>A</span> 반납 시 잔여대여시간의 50%가 크레딧으로 지급됩니다.<p>단, 받을 크레딧이 0원이면 1,000원 쿠폰이 지급됩니다.</p><p>쏘친님의 반납시점에 따라 혜택이 달라질 수 있으니, 반납 후 직접 확인해주세요.</p><p>바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.</p><p><a href="http://www.socar.kr/notice/586#windowopen" style="color:blue;">☞ 바로반납 크레딧 안내 자세히 보기 (PC)</a></p></dd>
								
									<dt name="#faq5"><span>Q</span> [부름서비스] 이용을 마친 후 차량 반납은 어떻게 하나요?</dt>
									<dd><span>A</span> 부름 이용 후 차량 반납은 예약 시 요청하셨던 곳에 주차해주세요.<div>그 다음 쏘카 APP에서 바로반납을 해주시면 쏘카가 차량을 찾아갑니다.&nbsp;<p>처음 출발한 곳에 주차가 원할하지 못한 경우 인근지역에 주차 후 반납위치를 남겨주시고, 반납이 원할하지 않는 경우엔 고객센터(1661-3315)로 연락주세요.</p></div></dd>
								
									<dt name="#faq6"><span>Q</span> [부름서비스] 부름 예약은 무엇인가요?</dt>
									<dd><span>A</span> 부름 서비스는 쏘친님이 요청한 장소에서 쏘카를 이용할 수 있는 서비스입니다. 원하는 시간에 원하는 장소로 원하는 차량을 부르면 쏘카가 쏘친님께로 달려갑니다.<div><br /></div><div>쏘카 App &gt; 예약하기 &gt; 부름예약을 통해 예약해보세요.</div></dd>
								
									<dt name="#faq7"><span>Q</span> 결제카드를 더 등록할 수 있나요?</dt>
									<dd><span>A</span> 결제카드는 최대 3장까지 등록이 가능합니다.<p>☞쏘카 앱▷마이페이지▷면허/결제카드/크레딧▷결제정보</p><p>☞쏘카 홈페이지▷마이페이지▷내 정보▷결제카드▷결제카드 추가</p></dd>
								
									<dt name="#faq8"><span>Q</span> 재발급 받은 면허라서 승인이 안돼요</dt>
									<dd><span>A</span> 면허를 취득하고 1년이 지났지만 재발급 등의 이유로 면허증에 기재된 면허취득 일자가 1년 미만일 경우에는 최초 면허 취득일 확인이 필요합니다.<p>민원24(www.minwon.go.kr)에서 운전 경력증명서를 발급 받으시고 해당 증명서를 사진으로 찍어 1:1문의에 첨부해주세요.</p><p>바로 확인하고 승인해드리겠습니다.<br /><br />
※ 운전경력증명서 발급 기관 (PC 전용)</p><p> - 민원24 : http://www.minwon.go.kr</p><p> - 이파인 : https://www.efine.go.kr</p><p> - 경찰청 : http://www.police.go.kr</p></dd>
								
									<dt name="#faq9"><span>Q</span> 차량 운행 중 편도에서 왕복으로, 왕복에서 편도로 변경 가능한가요?</dt>
									<dd><span>A</span> 운행 중 변경은 불가능합니다. 운행 시작 전 예약취소 후 재예약을 통해 변경해주셔야 합니다.</dd>
								
									<dt name="#faq10"><span>Q</span> 예약 시 쿠폰은 어떻게 적용하나요?</dt>
									<dd><span>A</span> 쿠폰은 예약 시 선택이 가능합니다.<p>대여 조건에 따라 적용 가능한 쿠폰이 활성화되어 선택하실 수 있습니다.</p></dd>
								
							</dl>
							<!-- //list -->
						</fieldset>
					</form>
					<!-- paginate -->
					<div id="pagination" class="pagination" style="margin-top: 15px;">
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
								<input type="image" src='${pageContext.request.contextPath}/template/image/btn_socarzone_submit.gif' onclick="alert('로그인 후 작성이 가능합니다.');return false;" alt="신청하기">
							</div>
							
						</div>
					</fieldset>
				</form>
				<div class="box_titsoting">
					<div class="tit"><img src='${pageContext.request.contextPath}/template/image/txt_socarzone.gif' alt="쏘카존 신청현황" /></div>
					<div class="soting">
						
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505264454" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505264454" charset="utf-8"></script>

						<!-- callCenter -->
			<div class="call mwCont">
				<div><img src='${pageContext.request.contextPath}/template/image/callcenter_img_20160516.gif' alt="콜센터 - 문의사항이 있거나 차량 운행 중 도움이 필요한 때 쏘카 전문 상담원이 빠르고 친절하게 도와드립니다. 예약및 이용중 차량안내 - 일반상담 1661-3315, 긴급상담 1661-4977 이고 일반상담의 경우 차량 고장 및 이용관련 문의, 예약관련 문의를 받고 긴급상담의 경우 사고접수 및 처리사항 확인 하실 수 있습니다. 기타 궁굼한점은 1:1문의나 카카오톡 상담을 이용해주세요." /></div>
        <a href="https://m.socar.kr/chat" class="click-btn"></a>
				<p class="centerBtn">
					<a href="#" class="close"><img src='${pageContext.request.contextPath}/template/image/btn_close.gif' alt="닫기" /></a>
				</p>
			</div>
			<!-- //callCenter -->

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>