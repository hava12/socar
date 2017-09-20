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
		<link href='${pageContext.request.contextPath}/template/image/header_logo.png' rel="image_src" />

		<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->
		

		
		<title>대한민국 1등 카셰어링 쏘카</title>

		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.banner.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/common.css' />

<script type="text/javascript">
$(function(){
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
});
</script>
</head>

<body id="footerMenu" class="media">
<div id="wrap">
	<jsp:include page="/template/Header.jsp"/>

	<div id="container">
		<div id="content">
			<div class="box">
				<h2><img src='${pageContext.request.contextPath}/template/image/policy_title.png' alt="개인정보처리방침" /></h2>
				<div class="rule" style="padding-top:30px;">
<!-- 개인정보 취급방침 -->
<p>주식회사 쏘카(이하 "쏘카")는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법, 통신비밀보호법, 전기통신사업법 등 정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 "회원"의 권익 보호에 최선을 다하고 있습니다. "쏘카"는 "회원"의 개인정보를 보호하고 개인정보와 관련한 "회원"의 고충을 원활하게 처리할 수 있도록 개인정보처리방침을 제정∙시행하며, "쏘카"가 개인정보처리방침을 개정하는 경우 "예약 사이트"의 공지사항(또는 개별공지)을 통하여 공지합니다.</p>

<h3>제 1조 개인정보의 수집 및 이용 목적</h3>
<p>"쏘카"는 "회원"의 동의가 있거나 법령의 규정에 의한 경우를 제외하고는 본 조에서 고지한 범위를 넘어 "회원"의 개인정보를 활용하지 않습니다. 수집한 개인정보 활용의 목적은 아래와 같습니다.</p>
<div class="pd15">
	<ul>
	<li>회원 관리: 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량 회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 연령확인, 불만처리 등 민원 상담 처리, 고지사항 등 최신 정보 전달</li>
	<li>서비스 제공에 관한 계약 이행 및 요금정산: 자동차 대여 예약, 서비스 요금 결제, 콘텐츠 제공, 물품 배송 또는 청구서 등 발송, 금융거래 본인 인증 및 금융 서비스, 요금추심 등</li>
	<li>마케팅 및 광고에 활용: 신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달, 인구 통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 "회원"의 서비스 이용에 대한 통계</li>
	<li>사고발생시 원인 규명 및 처리를 위한 수집 및 이용</li>
	</ul>
</div>

<h3>제 2조 개인정보의 수집 목적 및 항목</h3>
<div class="pd15">1. 수집하는 개인정보의 항목</div>
<div class="pd30">"쏘카"가 운영하는 회원 등급에 따라 제공되는 서비스 범위 및 수집되는 개인정보의 항목이 다를 수 있습니다. 서비스 이용에 필수로 필요한 항목과 "회원"의 선택에 따라 수집되는 항목이 있으며, 각 회원제별 필요 개인정보의 항목은 아래와 같습니다.</div>

<div class="pd30">① 준회원</div>
<div class="pd45">
	<div class="pd50">
		<table cellspacing="0" class="cols">
			<colgroup>
				<col width="15%">
				<col width="42.5%">
				<col width="42.5%">
			</colgroup>
			<thead>
			<tr>
				<th>유형</th><th>수집목적</th><th>수집항목</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td class="txt-center">필수</td><td>고유식별정보</td><td>성명, 아이디, 비밀번호, 이메일, 주소</td>
			</tr>
			<tr>
				<td class="txt-center">필수</td><td>본인인증</td><td>생년월일, 성별, 휴대전화번호, 연계정보(CI),<br />중복확인가입정보(DI), 통신사</td>
			</tr>
			<tr>
				<td class="txt-center">선택</td><td>커뮤니티</td><td>프로필 사진</td>
			</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="pd30">② SO회원</div>
<div class="pd45">
	<div class="pd50">
		<table cellspacing="0" class="cols">
			<colgroup>
				<col width="15%">
				<col width="42.5%">
				<col width="42.5%">
			</colgroup>
			<thead>
			<tr>
				<th>유형</th><th>수집목적</th><th>수집항목</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td class="txt-center">필수</td><td>고유식별정보</td><td>성명, 아이디, 비밀번호, 이메일, 주소</td>
			</tr>
			<tr>
				<td class="txt-center">필수</td><td>본인인증</td><td>생년월일, 성별, 휴대전화번호,<br />연계정보(CI), 중복확인가입정보(DI), 통신사</td>
			</tr>
			<tr>
				<td class="txt-center">필수</td><td>자동차 대여 서비스 제공</td><td>결제카드정보, 운전면허정보 </td>
			</tr>
			<tr>
				<td class="txt-center">선택</td><td>커뮤니티</td><td>프로필 사진</td>
			</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="pd30">③ 법인대표계정, 법인구성원</div>
<div class="pd45">
	<div class="pd50">
		<table cellspacing="0" class="cols">
			<colgroup>
				<col width="15%">
				<col width="42.5%">
				<col width="42.5%">
			</colgroup>
			<thead>
			<tr>
				<th>유형</th><th>수집목적</th><th>수집항목</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td class="txt-center">필수</td><td>고유식별정보</td><td>성명, 아이디, 비밀번호, 이메일, 주소</td>
			</tr>
			<tr>
				<td class="txt-center">필수</td><td>본인 및 법인 인증</td><td>생년월일, 성별, 휴대전화번호,<br />연계정보(CI), 중복확인가입정보(DI), 통신사,<br />소속회사정보, 사업자등록증, 통장사본</td>
			</tr>
			<tr>
				<td class="txt-center">필수</td><td>자동차 대여 서비스 제공</td><td>결제카드정보, 운전면허정보 </td>
			</tr>
			<tr>
				<td class="txt-center">선택</td><td>커뮤니티</td><td>프로필 사진</td>
			</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="pd30">또한 "회원"의 서비스 이용 과정이나 업무 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</div>
<div class="pd45">
	<div class="pd50">
		<table cellspacing="0" class="cols">
			<colgroup>
				<col width="50%">
				<col width="50%">
			</colgroup>
			<thead>
			<tr>
				<th>수집시점</th><th>수집항목</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>유선 또는 온라인 상담 서비스</td><td>상담 내역 (서비스 이용 내역, 통화내용 등)</td>
			</tr>
			<tr>
				<td>계좌 이체를 통한 결제∙환불 서비스 이용시</td><td>계좌 정보 (예금주, 은행명, 계좌번호)</td>
			</tr>
			<tr>
				<td>예약 사이트 및 모바일 서비스 이용시</td><td>접속 기기 및 환경 정보 (IP Address, 쿠키, 방문일시 등)</td>
			</tr>
			<tr>
				<td>대여용 자동차 운행시</td><td>블랙박스 영상 (운행시 영상 촬영)</td>
			</tr>
		</tbody>
		</table>
	</div>
</div>

<div class="pd30">"쏘카"는 사고발생시 사고원인규명과 사고의 신속한 처리 등을 위하여 자동차 내부에 부착된 영상정보 수집장치를 통하여 자동차의 주행영상(정차 중인 경우 포함)을 촬영하여 녹화할 수 있으며, 이 과정에서 자동차 내부에서 발생하는 "회원"의 대화나 음성이 녹음될 수 있습니다.</div>

<div class="pd15">2. 개인정보 수집방법</div>
<div class="pd30">
	<p>"쏘카"는 다음과 같은 방법으로 개인정보를 수집합니다.</p>
	<p>
		<ol>
			<li>예약 사이트 및 모바일 서비스를 통한 회원 가입 및 정보 수정</li>
			<li>이벤트 경품 응모, 배송 요청</li>
			<li>제휴사로부터의 제공</li>
			<li>생성정보 수집 툴을 통한 자동 수집</li>
			<li>자동차 내 부착된 영상정보 수집장치를 통한 수집</li>
		</ol>
	</p>
</div>

<h3>제 3조 개인정보의 보유 및 이용기간</h3>
<p>"쏘카"는 "회원"이 회원자격을 유지하고 있는 동안 수집된 "회원"의 개인정보를 보유∙이용할 수 있으며, "회원"이 탈퇴하거나 자격을 상실할 경우에는 "회원"의 별도 요청이 없더라도 수집된 회원정보를 삭제 및 파기합니다. 단, "회원"의 탈퇴 또는 자격상실에도 불구하고 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존 합니다.</p>

<div class="pd15">1. "쏘카" 내부 규정에 의한 정보 보유</div>
<div class="pd30">
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="42.5%">
			<col width="42.5%">
			<col width="15%">
		</colgroup>
		<thead>
		<tr>
			<th>보존항목</th><th>보존근거</th><th>보존기간</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td class="txt-center">아이디, 성명, 휴대전화번호, 운전면허정보</td><td class="txt-center">재가입 제한 기간 확인 목적</td><td class="txt-center">3개월</td>
		</tr>
		</tbody>
	</table>
</div>

<div class="pd15">2. 관계법령에 의한 정보 보유 사유</div>
<div class="pd30">
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="42.5%">
			<col width="42.5%">
			<col width="15%">
		</colgroup>
		<thead>
		<tr>
			<th>보존항목</th><th>보존근거</th><th>보존기간</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td class="txt-center">계약 또는 청약철회 등에 관한 기록<br />(소비자 식별정보, 계약∙청약철회 기록 등)</td><td class="txt-center">전자상거래 등에서의 소비자보호에 관한 법률</td><td class="txt-center">5년</td>
		</tr>
		<tr>
			<td class="txt-center">대금결제 및 재화 등의 공급에 관한 기록</td><td class="txt-center">전자상거래 등에서의 소비자보호에 관한 법률</td><td class="txt-center">5년</td>
		</tr>
		<tr>
			<td class="txt-center">소비자의 불만 및 분쟁처리에 관한 기록</td><td class="txt-center">전자상거래 등에서의 소비자보호에 관한 법률</td><td class="txt-center">3년</td>
		</tr>
		<tr>
			<td class="txt-center">신용정보의 수집∙처리 및 이용 등에 관한 기록</td><td class="txt-center">신용정보의 이용 및 보호에 관한 법률</td><td class="txt-center">3년</td>
		</tr>
		<tr>
			<td class="txt-center">웹사이트 방문기록(로그기록, IP 등)</td><td class="txt-center">통신비밀보호법</td><td class="txt-center">3개월</td>
		</tr>
		</tbody>
	</table>
</div>

<div class="pd15">3. 휴면회원의 정보 보유</div>
<div class="pd30">"회원"이 마지막 접속일로부터 1년(365일) 이상 로그인을 하지 않은 경우 해당 "회원"의 아이디는 "휴면회원"이 되어 회원 로그인을 비롯한 모든 서비스에 대한 이용이 정지되고, "쏘카"는 "휴면회원"의 개인정보를 다른 아이디와 별도로 관리합니다. "쏘카"는 "휴면회원" 처리 예정일 30일 전 해당 사실을 이메일을 통하여 사전 안내하며, "회원"은 "휴면회원" 처리일 이후에 "예약 사이트" 및 "모바일 서비스"상에서 직접 본인 확인을 거쳐 휴면상태 해지신청을 하는 즉시 다시 정상적으로 서비스를 이용할 수 있습니다.</div>

<h3>제 4조 동의의 거부권 등</h3>
<p>"회원"은 개인정보 수집∙이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인정보 수집∙이용에 관한 동의를 거부하는 경우에는 자동차 임대차 계약 체결∙유지∙이행∙관리 등이 불가(본인 여부 및 계약 체결 의사 불명 이유)하고, 마케팅 활동 및 홍보를 위한 개인정보 수집∙이용 또는 선택적 수집∙이용에 관한 동의를 거부하는 경우에는 이벤트, 혜택에 대한 정보를 제공받지 못하거나 사은품∙판촉물 제공, 제휴서비스 이용, 할인 혜택 적용 및 포인트 적립 불가 등의 불이익이 발생할 수 있습니다.</p>

<h3>제 5조 개인정보의 파기절차 및 방법</h3>
<p>"쏘카"는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 다만, 관계법령에 따라 개인정보를 보존하여야 하는 경우에는 해당 기간 경과 후 지체없이 재생 불가능한 방법으로 파기하며, "쏘카"의 개인정보 파기절차 및 방법은 다음과 같습니다.</p>

<div class="pd15">1. 개인정보 파기절차</div>
<div class="pd30">"회원"이 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류함) 내부 규정 및 기타 관련 법령에 따라 일정기간 저장되거나 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.</div>

<div class="pd15">2. 개인정보 파기기한</div>
<div class="pd30">
	<p>개인정보의 보유기간이 경과한 경우에는 그 경과한 날로부터, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 된 경우에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 각 지체 없이(정당한 사유가 없는 한 5일 이내) 해당 개인정보를 파기합니다.</p>
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
		<tr>
			<th>항목</th><th>파기기한</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>회원가입정보의 경우</td><td>회원탈퇴 또는 회원에서 제명된 때</td>
		</tr>
		<tr>
			<td>대금지급정보의 경우</td><td>대금의 완제일 또는 채권소멸 시효기간이 만료된 때</td>
		</tr>
		<tr>
			<td>배송정보의 경우</td><td>물품 또는 서비스가 인도되거나 제공된 때</td>
		</tr>
		<tr>
			<td>설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우</td><td>해당 설문조사, 이벤트 등이 종료한 때</td>
		</tr>
		</tbody>
	</table>
</div>

<div class="pd15">3. 개개인정보 파기방법</div>
<div class="pd30">전자적 파일 형태의 정보는 로우레벨포맷, 와이핑 방법 등 복구 및 재생이 되지 않는 기술적인 방법을 사용합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다</div>

<h3>제 6조 회원 및 법정대리인의 권리와 그 행사방법</h3>
<div class="pd15">
	<ul>
	<li>"회원"은 언제든지 등록되어 있는 "회원"의 개인정보를 열람하거나 수정할 수 있으며, "쏘카"의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청할 수 있습니다.</li>
	<li>"회원"의 개인정보 조회 및 수정을 위해서는 "회원정보수정", 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보 보호 업무 담당부서에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.</li>
	<li>"회원"이 개인정보의 오류에 대한 정정을 요청하신 경우, "쏘카"는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제 3자에게 이미 제공한 경우에는 정정 처리결과를 제 3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.</li>
	<li>"쏘카"는 "회원"의 요청에 의해 해지 또는 삭제된 개인정보는 제 3조에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</li>
	<li>만 14세 이상인 경우에만 회원 가입이 가능하며, 개인정보의 수집∙이용에 법정 대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 원칙적으로 수집하지 않습니다.</li>
	</ul>
</div>

<h3>제 7조 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h3>
<p>"쏘카"는 "회원"의 정보를 수시로 저장하고 찾아내는 "쿠키(cookie)" 등을 운용합니다. 쿠키란 "쏘카"의 "예약 사이트" 및 "모바일 서비스"를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 "회원"의 컴퓨터 하드디스크에 저장됩니다. 그러나 이 정보는 반드시 "회원"이 정보를 제공하였을 때만 저장되고, "예약 사이트"는 "회원"이 제공하지 않은 정보를 얻을 수 없으며, 컴퓨터에 저장되어 있는 다른 파일들에 접근할 수 없습니다. 쿠키의 사용 목적 및 쿠키 설정 거부 방법은 다음과 같습니다.</p>

<div class="pd15">1. 쿠키 등 사용 목적</div>
<div class="pd30">"회원"과 비회원의 접속 빈도나 방문 시간 등을 분석, "회원"의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스를 제공하기 위해 사용합니다.</div>

<div class="pd15">2. 쿠키 설정 거부 방법</div>
<div class="pd30">
	① "회원"은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, "회원"은 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 단, "회원"이 쿠키 설치를 거부하였을 경우 로그인이 필요한 일부 서비스 제공에 어려움이 있을 수 있습니다.<br />
	② 쿠키 설치 허용 여부를 설정하는 방법은 다음과 같습니다.
</div>
<div class="pd45">
	<ol>
	<li>Internet Explorer: 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보</li>
	<li>Google Chrome: 웹 브라우저 상단의 설정 > 고급 설정 > 개인정보</li>
	</ol>
</div>

<h3>제 8조 수집한 개인정보의 제 3자 제공</h3>
<p>"쏘카"는 "회원"의 개인정보를 제 1조에서 고지한 범위 내에서 사용하며, "회원"의 사전 동의 없이는 동의 범위를 초과하여 이용하거나 원칙적으로 "회원"의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</p>

<div class="pd15">
<ol>
	<li>"회원"이 사전에 제 3자 제공에 동의한 경우</li>
	<li>요금 정산을 위하여 필요한 경우</li>
	<li>법령의 규정에 의하거나, 수사, 조사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독당국의 요구가 있는 경우</li>
</ol>
</div>

<p>그 밖에 보다 나은 서비스 제공을 위하여 개인정보 제 3자 제공이 필요한 경우, "쏘카"는 사전에 정보를 제공받는 자, 정보를 제공받는 자의 개인정보 이용목적, 제공하는 개인정보의 항목, 개인정보를 제공받는 자의 개인정보 보유 및 이용기간, 정보제공 동의를 거부할 권리가 있다는 사실 및 동의 거부 에 따른 불이익 등을 명시하여 "회원"의 동의를 구합니다.</p>

<div class="pd15">1. 정보를 제공받는 자 및 이용목적</div>
<div class="pd30">
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
		<tr>
			<th>구분</th><th>내용</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>제공받는 자의 명칭</td><td>(주)SK텔레콤</td>
		</tr>
		<tr>
			<td>제공받는 개인정보</td><td>T멤버십 카드번호, T멤버십 등급</td>
		</tr>
		<tr>
			<td>제공받는 자의 이용목적</td><td>T멤버십 서비스 제공</td>
		</tr>
		<tr>
			<td>보유 및 이용기간</td><td>이용목적 완료시까지</td>
		</tr>
		</tbody>
	</table>
</div>
<div class="pd30">단, 개인정보를 제공받은 제 3자는 제공 목적을 달성하거나 "회원"의 철회 요청이 있더라도, 내부보고, 감사 및 검사, 비용 정산(청구) 등 계약이행, 분쟁 대비를 위해 필요한 정보는 자동차 임대차 계약에 따른 거래관계의 종료 후 6개월까지, 미이행∙분쟁이 계속될 경우 이행 완료∙분쟁 해결 시까지 개인정보를 보유∙이용할 수 있으며, 상법 등 관련 법령에 특별한 규정이 있을 경우 그에 의하여 보관할 수 있습니다.</div>

<div class="pd15">2. 동의의 거부권</div>
<div class="pd30">"회원"은 위와 같은 "회원"의 개인정보 제공에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인정보 제공에 관한 동의를 거부하는 경우 자동차 임대차 계약의 체결∙유지∙이행∙관리 등이 불가능하거나 자동차 사고 처리 업무가 지연되는 등의 불이익이 있을 수 있습니다.</div>


<h3>제 9조 개인정보의 취급위탁</h3>
<p>"쏘카"는 서비스 제공을 위해 반드시 필요한 업무 중 일부를 외부 업체에게 위탁하여 수행하고 있으며, 위탁받은 업체(수탁자)가 개인정보 관련 법률에 따라 개인정보를 안전하게 취급하도록 위탁업무 수행목적 외 개인정보 처리 금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독, 손해배상 등 책임에 관한 사항을 "개인정보 처리 위탁 계약서" 등을 통해 규정하고 있습니다.</p>
<p>서비스 제공 계약 이행과 "회원"의 편의증진 등을 위해 개인정보의 처리 위탁이 필요한 경우, 정보통신망법 제 25조 제 2항에 따라 본 개인정보처리방침의 공개로 위탁동의를 갈음하며, 이와 관련한 처리위탁업무의 내용이나 수탁자가 변경될 경우, "쏘카"는 지체 없이 본 개인정보처리방침을 통하여 공개합니다.</p>
<p>"쏘카"는 서비스 제공 계약 이행과 회원 편의 증진을 위해 아래와 같은 업무를 외부 업체에 위탁하고 있습니다.</p>
<p>
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
		<tr>
			<th>위탁목적</th><th>수탁업체</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>고객 상담 서비스</td><td>엠피씨㈜한국코퍼레이션, ㈜유베이스, ㈜화이트커뮤니케이션즈</td>
		</tr>
		<tr>
			<td>고객 상담 시스템</td><td>㈜스펙트라, ㈜케이엘씨앤에스</td>
		</tr>
		<tr>
			<td>이메일 및 메시지 발송 관련 서비스</td><td>㈜스윗트래커, Appboy, Inc.</td>
		</tr>
		<tr>
			<td>알림톡 서비스 제공</td><td>㈜카카오</td>
		</tr>
		<tr>
			<td>자동차 보험 서비스</td><td>전국렌터카공제조합</td>
		</tr>
		<tr>
			<td>자동차 위탁 운영 및 긴급출동∙정비 서비스</td><td>SK네트웍스㈜</td>
		</tr>
		<tr>
			<td>자동차 탁송 서비스</td><td>(주)위컴바인</td>
		</tr>
		<tr>
			<td>전자 결제 서비스</td><td>나이스페이먼츠㈜,㈜엘지유플러스, ㈜케이지이니시스,<br />한국정보통신㈜, ㈜NHN한국사이버결제</td>
		</tr>
		<tr>
			<td>휴대폰 본인인증 및 신용정보 조회∙등록 서비스</td><td>나이스평가정보㈜</td>
		</tr>
		<tr>
			<td>IT 시스템 운영</td><td>㈜가비아, Amazon Web Services, Inc.</td>
		</tr>
		</tbody>
	</table>
</p>

<h3>제 10조 개인정보의 안전성 확보 조치</h3>
<p>"쏘카"는 개인정보 보호법 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적 · 관리적 및 물리적 조치를 하고 있습니다.</p>
<div class="pd15">
	<ul>
	<li>정기적인 자체 감사 실시<br />개인정보 취급 관련 안정성 확보를 위해 정기적으로 자체 감사를 실시하고 있습니다.</li>
	<li>개인정보 취급 직원의 최소화 및 교육<br />개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.</li>
	<li>내부관리계획의 수립 및 시행<br />개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</li>
	<li>해킹 등에 대비한 기술적 대책<br />"쏘카"는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적 · 물리적으로 감시 및 차단하고 있습니다.</li>
	<li>개인정보의 암호화<br />"회원"의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</li>
	<li>접속기록의 보관 및 위변조 방지<br />개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.</li>
	<li>개인정보처리시스템 접근 제한<br />개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</li>
	<li>문서보안을 위한 잠금장치 사용<br />개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</li>
	<li>비인가자에 대한 출입 통제<br />개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</li>
	</ul>
</div>

<h3>제 11조 개인정보보호 업무 관련 담당부서 및 개인정보 관리책임자</h3>
<p>"쏘카"는 "회원"의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보 관리책임자를 지정하고 있습니다. "회원"은 "쏘카"의 서비스를 이용하실때 발생하는 모든 개인정보보호 관련 민원을 개인정보 관리책임자 혹은 담당부서로 신고하실 수 있습니다. "쏘카"는 "회원"의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>

<div class="pd15">1. 개인정보보호 업무 담당부서</div>
<div class="pd30">
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
		<tr>
			<th>구분</th><th>내용</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>담당부서</td><td>고객가치혁신팀</td>
		</tr>
		<tr>
			<td>연락처</td><td>1661-3315</td>
		</tr>
		<tr>
			<td>이메일</td><td>privacy@socar.kr</td>
		</tr>
		</tbody>
	</table>
</div>

<div class="pd15">2. 개인정보 관리책임자</div>
<div class="pd30">
	<table cellspacing="0" class="cols">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<thead>
		<tr>
			<th>구분</th><th>내용</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>책임자 성명</td><td>김명훈</td>
		</tr>
		<tr>
			<td>연락처</td><td>1661-3315</td>
		</tr>
		<tr>
			<td>이메일</td><td>privacy@socar.kr</td>
		</tr>
		</tbody>
	</table>
</div>

<h3>제 12조 개인정보처리방침의 개정 및 고지</h3>
<p>현 개인정보취급방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 "예약 사이트"의 첫 화면의 "공지사항"을 통해 고지할 것입니다. 현재 효력을 발생하는 본 방침의 공고일자와 시행일자, 이전 개인정보처리방침은 아래와 같습니다.</p>

<div class="pd15">
	<ol>
	<li>공고일자: 2017년 7월 24일</li>
	<li>시행일자: 2017년 7월 31일<br /><a href="/privacy/170328">이전 약관 보러가기</a></li>
	</ol>
</div>

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

<div class="aside_more"><img src='${pageContext.request.contextPath}/template/image/banner_more.png' alt="더보기" />
</div>

<!-- //quick -->
	</div>
<!-- footer -->
<div id="footer">
  <div class="gr">
    <ul class="footer-menu">
      <li><a href=https://www.socar.kr/about class="menu1" title="회사소개">회사소개</a></li>
      <li><a href="https://goo.gl/Aqsjr5" title="채용안내" target="_blank" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='${pageContext.request.contextPath}/template/image/footer_menu_recruit_new.png' alt="채용안내"></a></li>
      <li><a href="https://www.dropbox.com/sh/qiypdh3xl3mmktf/AAAlXsdhOZUY3HTPcvcwPXfCa?dl=0" target="_blank" class="menu2" title="보도자료">보도자료</a></li>
<!-- 2015.07.29 -->
      <li><a href=https://www.socar.kr/terms title="회원이용약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='${pageContext.request.contextPath}/template/image/footer_menu_member_n.png' alt="회원이용약관" /></a></li>
      <li><a href=https://www.socar.kr/privacy class="menu5" title="개인정보처리방침">개인정보처리방침</a></li>
      <li><a href=https://www.socar.kr/rent_terms title="자동차대여약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='${pageContext.request.contextPath}/template/image/footer_menu_rental_n2.png' alt="자동차대여약관" /></a></li>
      <li><a href=https://www.socar.kr/gis_terms title="위치기반서비스 이용약관" style="padding:3px 0 2px;background:none;text-indent:0;"><img src='${pageContext.request.contextPath}/template/image/footer_menu_location_n.png' alt="위치기반서비스 이용약관" /></a></li>

<!--// 2015.07.29 -->
    </ul>
    <address>
			<img src='${pageContext.request.contextPath}/template/image/footer_address.png' alt="(주) 쏘카 통신판매업 신고 : 제 2011-제주조천-0021호, 정보보호 담당자 : 김명훈, 사업자등록번호 : 616-81-90529  대표자 : 이재용
Tel : 1661-3315, Fax : 02-6969-9333, 주소 : 제주특별자치도 제주시 도령로 129, 5층 (연동, 드림플라자) 63126" />
		</address>
    <p class="copyright"><img style="margin-top:15px;" src='${pageContext.request.contextPath}/template/image/footer_copyright_n2.png' alt="Copyright © 2013 SOCAR  All rights reserved." /></p>
    <div class="ccm"><a href="/impact"><img style="margin-top:15px;" src='${pageContext.request.contextPath}/template/image/ccm.png' /></a></div>
    <div class="eco"><a href="/impact"><img style="margin-top:15px;" src='${pageContext.request.contextPath}/template/image/eco.png' /></a></div>
    <div class="bcorp"><a href="/impact"><img style="margin-top:15px;" src='${pageContext.request.contextPath}/template/image/bcorp.jpg' /></a></div>
    <div class="csa"><a href="http://carsharing.org/" target="_blank"><img style="margin-top:15px;" src='${pageContext.request.contextPath}/template/image/csa.png' /></a></div>
  </div>

  <ul class="sns">
  	<li><a href="https://www.facebook.com/socarsharing" target="_blank" class="sns1" title="SOCAR Facebook">SOCAR Facebook</a></li>
  	<li><a href="http://talk.socar.kr" target="_blank" class="sns3" title="SOCAR Blog">SOCAR Blog</a></li>
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
				<dt><img alt="아이디" src='${pageContext.request.contextPath}/template/image/id.png' /></dt>
				<dd><input type="text" class="input" name="email" /></dd>
				<dt><img alt="비밀번호" src='${pageContext.request.contextPath}/template/image/pw.png' /></dt>
				<dd><input type="password" class="input" name="password" /></dd>
			</dl>
			<input type="image" src='${pageContext.request.contextPath}/template/image/btn_login.png' class="submit" id="login_btn" />

		</fieldset>
	</form>

	<ul>
		<li><a title="회원가입" class="lg1" href="https://www.socar.kr/join"><img src='${pageContext.request.contextPath}/template/image/join.png' alt="회원가입" /></a></li>
		<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img src='${pageContext.request.contextPath}/template/image/idpw.png' alt="아이디·비밀번호 찾기" /></a></li>
	</ul>

	<!-- SNS 로그인 -->
	<div class="box_sns">
		<a href="#" id="fb_login" class="left"><img src='${pageContext.request.contextPath}/template/image/fb3_n.png' alt="페이스북" /></a>
		<a href="#" id="naver_login" class="center"><img src='${pageContext.request.contextPath}/template/image/nv3_n.png' alt="네이버" /></a>
		<a href="#" id="kakao_login" class="right"><img src='${pageContext.request.contextPath}/template/image/cco3.png' alt="카카오톡" /></a>
	</div>
</div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js" charset="utf-8"></script>

			<a href="#" class="close">닫기</a>
		</div>
	</div>
</div>
</body>
</html>