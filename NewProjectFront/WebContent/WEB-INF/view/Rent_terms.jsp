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
				<h2><img src='${pageContext.request.contextPath}/template/image/rental_title_150828.png' alt="자동차대여약관" /></h2>
				<div class="rule">
					<!-- 자동차대여약관 -->
					<h3>제 1 장 총 칙</h3>
					<div class="pd15"><strong>제1조 (목적)</strong></div>
						<div class="pd30">이 약관은 대여용자동차 임대인(이하 "회사"라 합니다)과 임차인(이하 "회원"이라 합니다) 사이의 대여용자동차 임대차계약(이하 "대여계약"이라 합니다)상의 권리·의무에 관한 사항을 규정함을 목적으로 합니다.<br /></div>
					<h3>제 2 장 대 여 계 약</h3>
					<div class="pd15"><strong>제2조 (예약의 체결)</strong></div>
						<div class="pd30">
							① 대여용자동차(이하 "렌터카"라 합니다)를 임차하려는 자는 미리 차종, 대여요금, 지연손해금, 임차예정일시, 임차장소, 임차기간, 반환장소, 운전자, 기타 임차조건 등을 확인하여 예약을 할 수 있습니다.<br />
							② 회원이 예약내용을 변경하고자 할 때에는 사전에 회사와 합의하여야 하며, 회사와 합의가 없는 경우에는 회원이용약관에 따릅니다.<br />
						</div>

					<div class="pd15"><strong>제3조 (예약의 취소)</strong></div>
						<div class="pd30">
							① 회원이 임차예정 시간을 경과하여 차량을 인수하였을 경우라도 미사용 시간에 대한 환불은 하지 않으며, 대여계약을 취소하지 않을 경우 전체 대여시간에 대한 미사용 시간에 대하여도 환불하지 아니합니다.<br />
							② 회원이 자신의 사정으로 임차예정 일시로부터 3시간 이전에 예약을 취소하는 경우에는 별도의 수수료가 발생하지 않습니다.<br />
							③ 회원이 자신의 사정으로 임차예정 일시 직전 3시간 이내로부터 예약 시작 시간 10분 전 사이에 예약을 취소하는 경우에는 차량대여요금의 10%에 해당하는 위약금이 발생합니다. 단 예약 시작 시간 10분 전부터는 예약의 취소가 불가능합니다.<br />
							④ 제2조에 따른 예약을 한 후 천재지변 등 불가항력적인 사유로 인하여 계약을 체결할 수 없게 된 경우에는 회사는 차량대여요금을 회원에게 반환합니다.<br />
						</div>

					<div class="pd15"><strong>제4조 (대여계약의 체결)</strong></div>
						<div class="pd30">
							① 대여계약의 체결은 임대차계약서에 의하며, 임대차계약서에는 제2조 제1항에서 열거한 사항을 명시하여야 합니다. 다만, 온라인 또는 전화상으로 대여 예약 또는 계약을 체결하는 경우에는, 회사와 회원 사이에 임대차계약서가 작성되지 않더라도 온라인 또는 전화상으로 입력되거나 진술된 내용에 따라 대여 예약 또는 계약이 체결된 것으로 봅니다.<br />
							② 회사는 대여계약 체결 시 회원이용약관의 주요 내용을 설명하여야 하며, 대여계약을 위해 회원의 정보를 수집, 이용, 제공한다는 사실을 고지하고 동의를 받아야 합니다. 또한 회사는 차량위치정보 확인이 가능한 자동차를 대여할 경우에는 그 사실을 회원에게 고지하고 동의를 받아야 합니다. 다만, 온라인 혹은 전화상으로 계약을 체결할 경우, 회원은 위 내용에 동의한 것으로 회사는 이에 관한 고지의 의무를 다한 것으로 합니다.<br />
							③ 온라인상으로 등록한 대여 예약 또는 계약의 내용은 사고발생시 보험사제출용, 과태료 부과 시 해당 경찰서 의견진술용으로 사용됩니다.<br />
							④ 회사는 회원이 다음 각 호의 어느 하나에 해당할 경우 대여계약의 체결을 거절할 수 있으며, 이 경우 지급받은 차량대여요금을 반환합니다.<br />
						</div>
							<div class="pd45">
								1. 회원(회원 아닌 자가 임대차계약서상의 운전자인 경우에는 운전자를 말한다, 이하 이 조에서 같다)이 렌터카운전에 필요한 운전면허증을 소지하지 아니한 경우(다만, 회사는 사고발생의 빈도 및 보험적용요율 등을 감안하여 회원의 연령 및 운전경력 등을 특약으로 정할 수 있습니다.)<br />
								2. 신원확인이 불가능하거나 회사의 질문 및 자료요구에 불응할 때<br />
								3. 회원이 음주상태에 있거나, 마약, 각성제, 신나 등 약물에 중독되었다고 판단될 때<br />
								4. 예약 당시 결정한 운전자와 렌터카 인수시의 운전자가 다를 때<br />
								5. 과거 렌터카 대여와 관련하여 대여요금의 체납이 있을 때<br />
								6. 과거 렌터카 대여와 관련하여 제15조 각호에 해당하는 행위가 있었을 때<br />
								7. 위 각호에 준하는 사항으로서 대여계약의 체결을 거절할 만한 객관적인 사유가 있을 때<br />
							</div>

					<div class="pd15"><strong>제5조 (렌터카의 대체)</strong></div>
						<div class="pd30">
							① 회사는 회원이 예약한 차종의 렌터카를 대여할 수 없을 경우에는 유사한 다른 차종의 렌터카로 대체할 수 있습니다.<br />
							② 제1항에 의한 대체 렌터카의 대여요금이 예약차종의 대여요금보다 비싼 경우에는 예약차종의 대여요금을, 예약차종의 대여요금보다 싼 경우에는 대체 렌터카의 대여요금을 각 적용합니다.<br />
							③ 회원은 제1항에 의한 대체 렌터카의 임차를 거절할 수 있으며, 이 경우 회사는 회원에게 예약금 전액을 반환합니다.<br />
						</div>

					<div class="pd15"><strong>제6조 (요금의 수령방법 등)</strong></div>
						<div class="pd30">
							① 사용시작시간 수 분전에 회원가입 시 등록한 결제카드로 차량대여요금이 자동 결제됩니다.<br />
							② 회원의 요구로 인하여 대여요금 외의 추가비용이 발생한 경우에는 회원은 그 추가비용을 부담하여야 합니다.<br />
							③ 회원은 임차기간을 초과하여 렌터카를 사용한 경우에는 해당 초과 사용 시간에 대한 대여요금에 더해서 기존 대여요금 및 페널티 금액을 포함한 대여요금을 지급하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제7조 (회사의 대여계약 해지)</strong></div>
						<div class="pd30">① 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 계약을 해지할 수 있습니다.<br /></div>
							<div class="pd45">
								1. 회원이 계약의 중요한 사항을 위반하여 계약을 유지하기 어려운 객관적인 사정이 존재할 때<br />
								2. 계약 당시 회원의 개인정보가 허위로 판명된 때<br />
								3. 대여요금을 분할납부하기로 한 경우로서 대여기간 중 차임연체액이 2기의 대여요금에 달한 때<br />
								4. 회원(회원 아닌 자가 임대차계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이 항에서 같다)의 운전면허가 취소 또는 정지된 때<br />
								5. 회원이 교통사고를 야기한 때<br />
								6. 렌터카 대여 후 회원이 음주운전을 한 때<br />
								7. 렌터카 대여 후 회원이 마약, 각성제, 신나 등 약물에 취한 채 운전한 때<br />
								8. 임대차계약서상의 운전자 이외의 자가 운전을 한 때<br />
								9. 제15조의 금지행위를 한 때<br />
							</div>
						<div class="pd30">② 제1항에 따라 계약이 해지된 경우 회사는 대여요금을 반환하지 않습니다.<br />
							③ 제1항 각호의 사유가 적발될 경우, 회원은 잔여기간 유무와 관계없이 즉시 렌터카를 반환하여야 합니다.<br /></div>

					<div class="pd15"><strong>제8조 (회원의 대여계약 해지)</strong></div>
						<div class="pd30">
							① 회원은 렌터카 인도이전의 하자로 인하여 렌터카를 사용할 수 없는 때에는 제20조 제3항에 의한 조치를 받거나 대여계약을 해지할 수 있습니다.<br />
							② 제1항에 따라 대여계약이 해지된 경우에는 회사는 수령한 대여요금 전액을 회원에게 반환합니다.<br />
							③ 회원의 사정에 의하여 대여계약을 해지하는 경우에는 제3조 및 회원이용약관 상의 예약의 취소와 변경에 관한 규정에 따릅니다. 다만, 6개월 이상 장기계약의 경우 회사와 회원과 회사는 중도해지시의 수수료를 별도로 약정할 수 있습니다.<br />
							④ 회원의 귀책사유로 렌터카의 사고 또는 고장이 발생한 경우 회원은 회사에 그 손해를 배상하고 계약을 해지할 수 있습니다.<br />
						</div>

					<div class="pd15"><strong>제9조 (불가항력 사유로 인한 대여계약 해지)</strong></div>
						<div class="pd30">
							① 임차기간 중 천재지변, 전쟁, 내란, 사변, 폭동, 소요 등 기타 불가항력 사유로 인하여 회원이 렌터카를 사용할 수 없는 경우에는 대여계약은 종료되며, 회원은 이와 같은 사실을 회사에 통보하여야 합니다.<br />
							② 제1항에 의하여 대여계약이 종료된 경우 회사는 수령한 대여요금에서 대여계약이 종료된 때까지의 대여요금을 공제한 나머지 금액을 회원에게 반환합니다.<br />
							③ 회원이 제1항의 사유로 인하여 렌터카를 반환할 수 없는 때에는 회사는 회원에게 이로 인하여 발생한 손해의 배상을 청구할 수 없습니다. 다만, 회원은 제1항의 사유가 발생한 경우 즉시 회사에 연락하고, 회사의 요청에 협조하여야 합니다.<br />
							④ 제1항의 사유로 인하여 회사가 렌터카를 대여할 수 없거나 대체 렌터카를 제공할 수 없을 때에는 회원은 회사에 이로 인하여 발생한 손해의 배상을 청구할 수 없습니다.<br />
						</div>

					<div class="pd15"><strong>제10조 (임차조건의 변경)</strong></div>
						<div class="pd30">
							① 회원이 대여계약의 체결 후 임차조건을 변경하고자 하는 경우에는 미리 회사의 승낙을 받아야 합니다.<br />
							② 회원이 임차기간을 연장하고자 하는 경우에는 다음 이용자가 없을 시에만 가능하며, 변경 후의 임차기간에 해당하는 대여요금을 지불하여야 합니다.<br />
							③ 회사는 변경된 임차조건에 따라 업무를 수행하기 어려운 경우에는 변경을 승낙하지 않을 수 있습니다.<br />
						</div>

					<h3>제 3 장 보험 및 점검 등</h3>

					<div class="pd15"><strong>제11조 (보험가입 등)</strong></div>
						<div class="pd30">
							① 회사는 회원에게 자동차손해배상보장법에 따라 책임보험과 자동차종합보험(대인배상, 대물배상, 자기신체사고)에 가입된 렌터카를 대여합니다. 이 경우, 회원은 자동차보험약관상 승낙피보험자가 됩니다.<br />
							② 회원은 차량사고 발생 시 회사가 고객을 보호하기 위해 운영하는 차량손해면책제도에 가입됩니다.<br />
							③ 회사는 계약 체결 시 회원에게 보험가입 및 보장금액에 관한 사항을 설명하여 드립니다. 다만, 온라인 혹은 전화상으로 계약을 체결할 경우, 회원은 회원가입 과정에서 보험 가입 및 보장금액에 관한 내용에 동의한 것으로 회사는 이에 관한 설명의 의무를 다한 것으로 합니다.<br />
						</div>

					<div class="pd15"><strong>제12조 (점검표 작성 등)</strong></div>
						<div class="pd30">
							① 회사는 회원과 함께 임대차계약서에 첨부된 점검표에 의해 일상점검과 차체외관, 기본공구의 적재, 연료량 등을 확인한 후 렌터카를 인도합니다. 단, 무인으로 차량 인도 및 반납의 경우에는 회원이 확인하여, 특별한 내용이 있을 시 회사에 통보합니다.<br />
							② 회사는 제1항에 따른 점검, 확인 시 렌터카의 정비불량 등을 발견한 경우에는 수리 또는 부품교환 등의 조치를 취하고 그 내용을 기록ㆍ유지하여야 합니다.<br />
						</div>

					<h3>제 4 장 책 임</h3>

					<div class="pd15"><strong>제13조 (회원의 점검의무)</strong></div>
						<div class="pd30">
							① 회원은 임차기간 중 렌터카를 사용하기 전에 타이어나 차체의 외관상태 및 시동 후 엔진상태 등을 점검하여야 합니다.<br />
							② 회원은 제1항의 점검결과 이상이 발견된 경우에는 즉시 회사에 이를 통보하여야 합니다.<br />
							③ 회원은 회사의 자동차 정기점검 요청 시 적극 협조하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제14조 (회원의 관리책임)</strong></div>
						<div class="pd30">회원은 렌터카를 인도받은 시점부터 회사에 반환하는 시점까지 선량한 관리자의 주의의무를 다하여 렌터카를 사용하고 보관하여야 합니다.<br /></div>

					<div class="pd15"><strong>제15조 (금지행위)</strong></div>
						<div class="pd30">회원은 임차기간 중에 다음 각 호의 어느 하나에 해당하는 행위를 하여서는 안됩니다.<br /></div>
							<div class="pd45">
								1. 렌터카를 자동차운송사업 또는 이와 유사한 목적으로 사용하는 행위<br />
								2. 렌터카의 매각, 전대 또는 담보제공 등 회사의 소유권을 침해하는 일체의 행위<br />
								3. 렌터카의 차량번호판을 위조 또는 변조하거나 렌터카를 개조하는 등 그 원상을 변경하는 행위<br />
								4. 회사의 허락을 받지 아니하고 렌터카를 운전연습 및 각종 시험ㆍ경기에 사용하거나 다른 차를 견인하거나 견인에 준하는 행위<br />
								5. 법령 또는 공서양속에 위반하여 사용하는 행위<br />
								6. 임대차계약서상의 운전자 이외의 자 또는 무면허자에게 운전을 시키는 행위<br />
								7. 음주운전을 하거나 마약, 각성제, 신나 등 약물에 취한 상태로 운전하는 행위<br />
								8. 석유 및 석유대체연료 사업법 제2조 제10호의 규정에 의한 유사석유제품을 렌터카의 연료로 사용하는 행위<br />
								9. 위 각 호에 준하는 행위로 객관적으로 보아 그로 인하여 렌터카를 손상시킬 우려가 있는 행위<br />
							</div>

					<div class="pd15"><strong>제16조 (배상책임)</strong></div>
						<div class="pd30">
							① 회원은 임차기간 중 제15조에 해당하는 행위 기타 회원의 책임 있는 사유로 인하여 회사 또는 제3자에게 손해를 끼쳤을 경우 그 손해를 배상할 책임을 집니다.<br />
							② 회원이 임차기간 중 주정차 위반과 교통법규 위반 등으로 인하여 부과 받은 과태료와 범칙금 등은 렌터카 반환 후에도 부담하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제17조 (페널티금액)</strong></div>
						<div class="pd30">회원은 이용 과정에서 아래 페널티 정책에 해당되는 행위를 할 경우 그에 상응하는 페널티금액을 회사에 납부하여야 합니다.<br /></div>
						<div class="pd30">
							<table cellspacing="0" class="cols">
								<colgroup>
								<col width="" />
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
									<td colspan="2" class="first">지정되지 않은 장소로의 자동차 반납</td>
									<td>페널티금액 50,000원 및 견인, 주차비 등 지정되지 않은 장소로의 자동차 반납으로 인하여 발생한 실비 일체</td>
								</tr>
								<tr>
									<td colspan="2" class="first">차량의 파손이나 도난 발견 시 본사로 즉시 연락하지 않은 경우</td>
									<td>100,000원</td>
								</tr>
								<tr>
									<td colspan="2" class="first">동승운전자 미등록 운전 페널티</td>
									<td>100,000원</td>
								</tr>
								<tr>
									<td colspan="2" class="first">음주 및 약물복용 운전 시</td>
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
							</tbody>
							</table>
						</div>
					<h3>제 5 장 자동차 사고의 조치 등</h3>

					<div class="pd15"><strong>제18조 (사고처리)</strong></div>
						<div class="pd30">
							① 회원은 렌터카 임차 중 사고가 발생한 때에는 부상자 후송 및 경찰서 신고 등 도로교통법상의 조치를 취함과 동시에 다음 각 호에서 정하는 바에 따라 처리하여야 하며, 별도의 협의 없이 각 호의 사항에 따르지 않을 때에는 보험처리가 불가 할 수 있습니다.<br />
						</div>
							<div class="pd45">
								1. 사고상황 등을 회사에 즉시 통보<br />
								2. 사고와 관련하여 보험회사가 요청하는 서류 또는 증거의 제출<br />
								3. 사고와 관련하여 제3자와 합의 또는 협의를 할 경우 사전에 회사와 협의<br />
								4. 렌터카의 수리는 특별한 사유가 있는 경우를 제외하고는 회사와 협의를 거쳐 확정한 공장 또는 자동차관리법령에서 규정한 자동차종합정비업체 등에 수리 의뢰<br />
							</div>
						<div class="pd30">
							② 회사는 제1항 제4호에 따라 렌터카를 수리하는 경우 사전에 예상비용을 회원에게 통지하고, 수리 후에는 소요된 비용을 회원에게 청구합니다.<br />
							③ 회원이 제1항 각 호의 어느 하나를 위반하거나 회사와 협의되지 아니한 곳으로 렌터카를 이동, 견인, 수리 등을 행하여 렌터카 운행에 지장이 초래되어 재수리 등으로 발생하는 추가비용은 회원이 부담하여야 합니다.<br />
							④ 회사와 회원은 사고해결을 위해 노력하여야 하며, 협조를 태만히 하여 상대방에게 손해를 입힌 경우에는 귀책사유에 따라 그 손해를 배상할 책임을 집니다.<br />
						</div>

					<div class="pd15"><strong>제19조 (보험처리 등)</strong></div>
						<div class="pd30">
							① 회원은 사고발생시 회사가 체결한 자동차보험 및 제11조 제2항에 의한 차량손해면책제도의 보장범위 내에서 손해를 보상받을 수 있습니다. 다만, 회원 또는 임대차계약서상 운전자의 다음 각 호의 어느 하나에 해당하는 사유로 발생한 손해와 자동차보험약관에서 정한 면책사항에 해당하는 경우에는 일부 또는 전부를 보상받지 못하며, 회원의 부담으로 회사에 발생한 손해를 전부 배상하여야 합니다.<br />
						</div>
							<div class="pd45">
								1. 고의로 인한 손해<br />
								2. 무면허운전 사고로 인한 손해<br />
								3. 영리를 목적으로 렌터카를 전대하거나 요금 또는 대가를 받고 렌터카를 사용하다가 생긴 사고로 인한 손해<br />
								4. 범죄를 목적으로 렌터카를 사용하다가 발생한 손해<br />
								5. 사고발생 후 회사에 즉시 통보하지 않아 방치된 손해<br />
								6. 음주운전 사고로 인한 손해<br />
								7. 마약, 각성제, 신나 등 약물에 취한 상태에서 운전하다가 생긴 사고로 인한 손해<br />
								8. 렌터카를 경기용이나 연습용 또는 시험용으로 사용하다가 생긴 사고로 인한 손해<br />
								9. 임대차계약서상의 운전자 이외의 자가 렌터카를 운전하다가 생긴 사고로 인한 손해<br />
							</div>
						<div class="pd30">
							② 회원은 제1항의 보상을 받음에 있어, 회원의 귀책사유로 인한 사고의 경우 자동차보험에 가입한 경우 보험사에, 차량손해면책제도에 가입한 경우는 회사에 자기부담금을 별도로 지급하여야 합니다.<br />
							③ 회원이 제11조 제2항의 차량손해면책제도에 가입하지 않고 사고가 발생하여 차량이 파손된 경우 회원은 사고당시 차량기준가액 등을 기준으로 회사에 손해를 배상하여야 합니다. <br />
							④ 제11조 제2항의 차량손해면책제도에 의한 최고면책금액이 회원의 배상책임금액보다 부족한 때에는 그 부족액은 다음 각 호에 따라 회원이 부담하여야 합니다.<br />
						</div>
							<div class="pd45">
								1. 차량손해면책제도에 가입한 경우에는, 회원은 자신이 가입한 차량손해면책제도의 최고면책금을 한도로 회사에 손해를 배상합니다. 단 차량손해면책제도에 가입하여 최고면책금을 납부하였다고 하더라도 휴차보상료는 면책되지 않습니다.<br />
							</div>
						<div class="pd30">
							⑤ 대여계약이 종료되었음에도 회원이 회사에 렌터카를 반환하지 않고 운행하다가 생긴 사고는 회사의 자동차보험이나 차량손해면책제도 가입에도 불구하고 회원이 손해배상책임을 져야 하며, 그 사고로 인하여 회사에 손해가 발생한 경우에는 회원은 회사에 그 손해를 배상하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제20조 (휴차손해 등 부담)</strong></div>
						<div class="pd30">
							① 회원은 회원의 귀책사유에 의한 사고로 렌터카를 수리할 경우에는 렌터카 수리비용과 별도로 그 수리기간의 영업손해를 배상하여야 하고, 렌터카가 수리 불가능할 정도로 파손되거나 도난 된 경우의 휴차손해 기간 결정은 해당차량의 차령 잔존기간으로 정합니다.<br />
							② 회사는 제1항에 의하여 회원이 부담할 손해액을 정하는 경우 동종차량의 대여요금 등을 감안한 객관적인 산정자료를 제시하여야 합니다.<br />
							③ 회사가 제2항에 의한 객관적인 산정자료를 제시하지 않는 경우 회원은 수리기간 또는 재구매 및 등록에 소요되는 기간에 해당하는 기준대여요금의 50%를 부담하여야 하며, 제 19조에 따라 보험 적용이 불가한 경우 기준대여요금의 100%를 부담해야 합니다.<br />
						</div>

					<div class="pd15"><strong>제21조 (회원의 렌터카 이상 또는 고장 발견 시 조치)</strong></div>
						<div class="pd30">
							① 회원은 임차 중 렌터카의 이상 또는 고장을 발견한 때에는 회사에 연락하고 그 처리방향에 대하여 협의하여야 합니다.<br />
							② 회원의 고의ㆍ과실로 렌터카의 이상이나 고장이 발생한 경우에는 렌터카의 인수 및 수리에 소요되는 비용을 회원이 부담하여야 합니다.<br />
							③ 렌터카 인도 이전의 하자로 인하여 렌터카를 사용 불능하게 되거나 수리가 필요하게 되었을 때 회원은 회사로부터 대체 렌터카의 제공 또는 이에 준하는 조치를 받을 수 있습니다.<br />
							④ 회사는 제3항에서 정한 조치를 할 수 없는 경우에는 회원에게 대여요금을 반환하고, 렌터카 회수 등에 필요한 비용을 부담합니다.<br />
						</div>

					<h3>제 6 장 반 환</h3>

					<div class="pd15"><strong>제22조 (렌터카의 반환시기 등)</strong></div>
						<div class="pd30">
							① 회원은 약정한 대여기간 종료시점 또는 대여계약 중도해지시에 렌터카를 회사에 반환하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제23조 (렌터카의 확인 등)</strong></div>
						<div class="pd30">
							① 회원은 렌터카를 회사에 반환할 때 통상적 사용으로 인한 마모 등을 제외하고는 인수 시 확인한 상태 그대로 반환하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제24조 (렌터카의 반환장소 등)</strong></div>
						<div class="pd30">
							① 회원은 약정한 반환장소에서 렌터카를 반환하여야 합니다. 다만, 제10조 제1항에 의하여 반환장소가 변경된 경우에는 변경 후의 반환장소에서 반환하여야 합니다.<br />
							② 회원의 사정에 의하여 반환장소가 변경되어 렌터카 회수에 추가비용이 발생한 경우에는 회원은 벌금 및 견인, 주차비용 등의 렌터카 회수 비용을 부담하여야 합니다.<br />
						</div>

					<div class="pd15"><strong>제25조 (렌터카 미 반환에 대한 조치)</strong></div>
						<div class="pd30">
							① 회사는 회원이 대여기간 종료 시로부터 24시간을 경과하여도 반환장소에 렌터카를 반환하지 아니하거나 회사의 반환 청구에 응하지 않을 때에는 렌터카 회수 및 손해보전에 필요한 모든 법적 조치를 취할 수 있습니다.<br />
							② 회사는 제1항에 해당되는 경우 렌터카의 소재를 확인하기 위하여 회원에게 전화를 하거나 주소지를 방문하여 함께 거주하는 가족 및 친족 등에게 청취조사를 할 수 있으며, 차량위치정보시스템의 작동 등 필요한 조치를 취할 수 있습니다.<br />
							③ 회사는 제2항의 조치에도 불구하고 대여기간 종료 시로부터 48시간이 경과하였음에도 렌터카와 회원의 소재가 불명한 때에는 도난신고 등 필요한 조치를 취할 수 있습니다. 이 경우 회사는 제2항에 따른 조치를 취하였음에도 렌터카와 회원의 소재가 불명함을 입증하여야 합니다.<br />
							④ 회원은 제1항 내지 제3항에 해당하는 경우 회사에 입힌 손해를 배상할 책임을 지며, 렌터카 회수 및 회원ㆍ운전자의 소재확인 등에 소요된 비용을 부담하여야 합니다.<br />
							⑤ 회사는 다음 각 호의 어느 하나에 해당하는 회원의 계약위반으로 인한 동종 또는 유사한 피해를 방지하기 위하여 계약 시 수집ㆍ이용목적, 수집항목, 보유 및 이용기간 등이 기재된 별도의 "개인정보 이용동의서" 및 개인정보를 제공받는 자, 목적, 항목, 보유 및 이용기간 등이 기재된 별도의 "제3자 제공동의서"에 동의를 받아 피해가 발생한 경우에 한하여 동종사업자 및 사업자단체에게 개인정보를 제공할 수 있습니다.<br />
						</div>
							<div class="pd45">
								1. 회원이 회사의 렌터카 반환요구에도 불구하고 정당한 사유 없이 렌터카를 반환하지 않거나 연락이 되지 않는 상태에서 렌터카 반환일로부터 익일 영업시간 내에 반환하지 아니한 경우<br />
								2. 회원이 대여요금을 연체하여 회사가 상당기간 동안 2회 이상 납부를 최고하였음에도 계속 연체하고 있는 경우. 단, 회원에게 부득이한 사유가 있는 경우에는 제외합니다.<br />
								3. 렌터카를 불법 매매 또는 개조한 경우<br />
								4. 차량번호판 위조 또는 범죄에 사용하는 등 불법행위에 이용한 경우<br />
								5. 렌터카를 전대, 담보제공 또는 매각하는 등 회사의 소유권을 침해하는 일체의 행위를 한 경우<br />
								6. 교통사고 후 도주 또는 렌터카를 방치한 경우<br />
								7. 렌터카를 자동차운송사업 또는 이와 유사한 목적으로 사용한 경우<br />
								8. 임대차계약서상의 운전자 이외의 자 및 무면허운전자가 운전하다 사고가 발생한 경우<br />
								9. 렌터카를 운전연습 및 각종 시험ㆍ경기에 사용한 경우<br />
								10. 다른 차를 견인 혹은 견인에 준하는 행위를 한 경우<br />
								11. 위 각 호에 준하는 행위로 회사에 중대한 손해를 발생시키는 경우<br />
							</div>
						<div class="pd30">
							⑥ 회사는 제5항에 따라 제공받은 회원의 정보를 회원으로부터 동의 받은 목적과 다른 목적으로 이용할 수 없습니다.<br />
							⑦ 회사가 제1항 내지 제6항에 의한 업무를 처리하는 과정에서 고의 또는 과실로 회원에게 손해를 입힌 경우에는 배상책임을 부담합니다.<br />
						</div>

					<h3>제 7 장 보 칙</h3>

					<div class="pd15"><strong>제26조 (지연손해금)</strong></div>
						<div class="pd30">회사와 회원은 이 약관에 따른 금전채무의 이행을 지체한 경우 상사법정이율에 따른 지연손해금을 지급하여야 합니다.<br /></div>

					<div class="pd15"><strong>제27조 (적용범위)</strong></div>
						<div class="pd30">이 약관은 회사와 회원 사이의 대여계약과 관련한 일반적인 사항을 규정한 것입니다. 이 약관 이외에 회사와 회원 사이에 별도로 합의한 개별약관이 있는 경우, 해당 개별약관이 이 약관에 우선하여 적용됩니다.<br /></div>

					<div class="pd15"><strong>제28조 (계약의 세칙)</strong></div>
						<div class="pd30">회사는 이 약관이 정한 범위 내에서 회원의 이해가 용이하도록 세부사항을 규정하는 세칙을 정할 수 있습니다.<br /></div>

					<div class="pd15"><strong>제29조 (신용조회)</strong></div>
						<div class="pd30">회사는 회원의 동의를 받아 대여계약 체결 전 신용정보기관을 통하여 회원의 신용상태를 조회ㆍ확인 할 수 있습니다.<br /></div>

					<div class="pd15"><strong>제30조 (관할법원)</strong></div>
						<div class="pd30">이 약관의 해석과 이에 근거한 대여계약에 관련된 법적 분쟁이 발생할 경우 소송은 민사소송법상의 관할법원에 제기합니다. 단, 회사와 회원이 관할법원에 대해 약정할 경우에는 그에 따릅니다.<br /></div>

			

				</div>
			</div>
		</div>

<style type="text/css">

/* aside */
div.aside{position:fixed; top:111px; right:0; width:51px; height:150px; border-bottom:1px solid #dadada; z-index:10000;} /*height:225px*//* ${pageContext.request.contextPath}/template/image/quick_side_menu_141111.gif */
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
                            <img src='${pageContext.request.contextPath}/template/image/invite_txt4.gif' alt="차종과 거리를 선택해주세요" />
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
			

			<!-- 쏘카존 신청하기 -->
			<jsp:include page="/template/Socarzon.jsp"/>
			<!-- 친구추천 -->
			
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