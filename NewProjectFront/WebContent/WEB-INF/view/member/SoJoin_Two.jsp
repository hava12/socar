<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505963534"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505963534"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505963534"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505963534"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505963534"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/css/member.css" />



<script type="text/javascript">



function check_foreigner_ssn(fgnno) {
	var sum=0;
	var odd=0;
	buf = new Array(13);
	for(i=0; i<13; i++) { buf[i]=parseInt(fgnno.charAt(i)); }
	odd = buf[7]*10 + buf[8];
	if(odd%2 != 0) { return false; }
	if( (buf[11]!=6) && (buf[11]!=7) && (buf[11]!=8) && (buf[11]!=9) ) {
		return false;
	}
	multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];
	for(i=0, sum=0; i<12; i++) { sum += (buf[i] *= multipliers[i]); }
	sum = 11 - (sum%11);
	if(sum >= 10) { sum -= 10; }
	sum += 2;
	if(sum >= 10) { sum -= 10; }
	if(sum != buf[12]) { return false }
	return true;
}

function check_ssn(ssn1, ssn2){
	var ssn	= ssn1.concat(ssn2);
	if((ssn1.length==6) &&(ssn2.length==7)){
		var a = new Array(13);
		for (var i=0; i < 13; i++) {
			a[i] = parseInt(ssn.charAt(i));
		}
		var k = 11 - (((a[0] * 2) + (a[1] * 3) + (a[2] * 4) + (a[3] * 5) + (a[4] * 6) + (a[5] * 7) + (a[6] * 8) + (a[7] * 9) + (a[8] * 2) + (a[9] * 3) + (a[10] * 4) + (a[11] * 5)) % 11);
		if (k > 9){
			k -= 10;
		}
		if (k == a[12]){
			return true;
		}
		else{
			return false
		}
	}else{
		return false;
	}
}

function makeExpYear(){
	var now = new Date(),
		year = now.getFullYear(),
		expy = parseInt(year+19,10),
		output = new StringBuffer();

	var i = year;

	for(; i <= expy; i++){
		output.append('<option value="' + (i+'').substr(2,2) + '">' + i + '년</option>');
	}

	$("#exp_y").append(output.toString());
	output.clear();

	return;
}

//사업자등록번호 체크
function checkBizID(bizID)
{
	// bizID는 숫자만 10자리로 해서 문자열로 넘긴다.
	var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
	var tmpBizID, i, chkSum = 0, c2, remander;
	bizID = bizID.replace(/-/gi, '');

	for ( i = 0; i <= 7; i++)
		chkSum += checkID[i] * bizID.charAt(i);
	c2 = "0" + (checkID[8] * bizID.charAt(8));
	c2 = c2.substring(c2.length - 2, c2.length);
	chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));
	remander = (10 - (chkSum % 10)) % 10;

	if (Math.floor(bizID.charAt(9)) == remander)
		return true;
	// OK!
	return false;
}




$(function(){
	



	makeExpYear();

	$('#license_num1, #license_num3').change(function() {
		if ( !/\d{2}/.test($(this).val()) ) {
			alert('숫자만 입력가능합니다.');
			$(this).focus();
			return;
		}
	});

	$('#license_num2').change(function() {
		if ( !/\d{6}/.test($(this).val()) ) {
			alert('숫자만 입력가능합니다.');
			$(this).focus();
			return;
		}
	});

	$(window).bind('beforeunload', function () {
		return '아직 회원가입이 최종 완료되지 않았습니다.\n차량을 이용하시려면 면허정보와 결제카드 등록을 완료해주세요.';
	});



	//카드등록 레이어 오픈
	$('#open_register_card_layer').bind('click', function() {
		$(".member_card_layer").show();

		var temp = $('#member_card_layer');
		if (temp.outerHeight() < $(document).height())
			temp.css('margin-top', '-' + temp.outerHeight() / 2 + 'px');
		else
			temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width())
			temp.css('margin-left', '-' + temp.outerWidth() / 2 + 'px');
		else
			temp.css('left', '0px');

		return false;
	});

	//INICIS 카드등록
	$('#register_card').bind('click', function() {
		if( $(document).data('disabled') ){
			alert("카드등록 진행중입니다.");
			return false;
		}

		var cnum01 = $.trim($("#card_num_01").val()),
			cnum02 = $.trim($("#card_num_02").val()),
			cnum03 = $.trim($("#card_num_03").val()),
			cnum04 = $.trim($("#card_num_04").val());

		if(cnum01 == '' || cnum02 == '' || cnum03 == '' || cnum04 == ''){
			alert('카드번호를 입력해 주세요.');
			return false;
		}
/*
		if ( !/\d{4}/.test(cnum01) || !/\d{4}/.test(cnum02) || !/\d{4}/.test(cnum03) || !/\d{4}/.test(cnum04) ) {
			alert('카드번호는 숫자만 입력가능합니다.');
			return false;
		}
*/
		var reg = /^\d+$/;
		var card_num = cnum01 + '' + cnum02 + '' + cnum03 + '' + cnum04;

		if(! reg.test(card_num)){
			alert('카드번호는 숫자만 입력가능합니다.');
			return false;
		}

		var exp_y = $("#exp_y").val(), exp_m = $("#exp_m").val();
		var rear_ssn = '', card_pw = '';

		if( $('input:radio[name=card_type]:checked').val() == 0 ){
			rear_ssn = $.trim($("#rear_ssn_card").val());

			if(rear_ssn == ''){
				alert('생년월일 6자리(yymmdd)를 입력해 주세요.');
				$("#rear_ssn_card").val('').focus();
				return false;
			}

			if(!/\d{6}/.test(rear_ssn) || rear_ssn.length < 6) {
				alert('생년월일 6자리를 정확하게 입력해주세요.');
				return false;
			}

			card_pw = $.trim($("#card_pw").val());

			if(card_pw == ''){
				alert('카드비밀번호 앞 2자리를 입력해 주세요.');
				$("#card_pw").focus();
				return false;
			}

			if(!/\d{2}/.test(card_pw)){
				alert('카드비밀번호는 숫자만 입력가능합니다.');
				$("#card_pw").val('').focus();
				return false;
			}
		}
		else{
			var corp_num01 = $.trim($("#corp_num_01").val()),
				corp_num02 = $.trim($("#corp_num_02").val()),
				corp_num03 = $.trim($("#corp_num_03").val());

			if(corp_num01 == '' || corp_num02 == '' || corp_num03 == ''){
				alert('사업자번호를 입력해 주세요.');
				return false;
			}

			rear_ssn = corp_num01 + '' + corp_num02 + '' + corp_num03;

			if( false == checkBizID(rear_ssn) ){
				alert('잘못된 사업자등록번호입니다');
				return false;
			}
		}

		if(! $("input:checkbox[id='is_card_agree']").is(":checked")){
			alert('약관에 동의해야 카드등록이 가능합니다.');
			return false;
		}

		$.ajax({
			type: 'GET',
			url: "https://api.socar.kr/user/add_billing",
			data: {
				auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
				card_num: card_num,
				exp_y : exp_y,
				exp_m : exp_m,
				rear_ssn : rear_ssn,
				card_pw : card_pw
			},
			crossDomain: true,
			dataType: 'jsonp',
			beforeSend: function(){
				$(document).data('disabled',true);
			},
			success: function(res){
				if(res.retCode == 1){
					var cardInfo = res.result.card_name, cardAprvDate = res.result.card_approval_date;
					$('#card_type').text(cardInfo + '카드');
					$('#card_date').text(cardAprvDate);
					set_cookie('tmp_card_type', $('#card_type').text());

					alert('결제카드가 정상적으로 등록되었습니다.');

					$("#btnClose").click();
				}
				else{
					alert(res.retMsg);
				}
			},
			error: function(xhr){
				$(document).data('disabled',false);
				alert('일시적인 오류입니다. 잠시 후 다시 시도해 주세요. 코드 : ' + xhr.status);
			},
			complete: function(){
				$(document).data('disabled',false);
			}
		});

		return false;
	});

	$("#btnClose").bind('click', function() {
		$('.member_card_layer .inp_cardnum').val('')
		$('.member_card_layer select').find('option:first').attr('selected', 'selected');
		$(".member_card_layer").hide();
		return false;
	});

	$('#picker1').birthdaypicker({
		maxAge: 70,
		dateFormat: 'bigEndian',
		futureDates: true,
		maxYear: '2030',
		defaultDate: '2030-12-31',
		Yname: 'Y_expire',
		Mname: 'M_expire',
		Dname: 'D_expire'
	});

	$('#picker2').birthdaypicker({
		maxAge: 70,
		dateFormat: 'bigEndian',
		Yname: 'Y_issue',
		Mname: 'M_issue',
		Dname: 'D_issue'
	});

	$('#complete').bind('click', function () {
		if($('#license_num1').val() == '' ||
			$('#license_num2').val() == '' ||
			$('#license_num3').val() == ''){

			$('#license_num1').focus();
			alert('면허번호를 입력해 주세요.');

			return false;
		}




		var sex = $('#male').is(':checked') ? 1 : 2;
		var ssn = $('#ssn1').val().replace(/\s/g,'');

		if(ssn == ''){
			alert('생년월일 6자리(yymmdd)를 입력해 주세요.');
			return false;
		}

		var regexp = /^[0-9]+$/;
		if(! regexp.test(ssn)){
			alert('생년월일은 숫자만 입력가능합니다.');
			$("#ssn1").val('').focus();
			return false;
		}

		if(ssn.length < 6) {
			alert('생년월일 6자리를 정확하게 입력해주세요.');
			return false;
		}

		ssn += '' + sex + '000000';


		if($('#card_date').text() == ''){
			alert('결제카드를 등록해 주세요.');
			return false;
		}

		var ret = $('#is_agree').hasClass('on');
		var is_agree_credit = $('#is_agree_credit').hasClass('on');

		if(!ret || !is_agree_credit){
			alert('모든 약관에 동의해야 회원가입이 가능합니다.');
			return false;
		}

		/* TO-DO	2013.02.14
		* 프로모션기간중 요금청구 동의 체크 해야하나? */
		// if(!$('#agree').is(':checked')){
		//		 $('#agree').focus();
		//		 alert('요금 청구에 동의해야 합니다.');
		//		 return false;
		// }

		//var license_class = $('#sort1').is(':checked') ? 1 : 2;

		// 국내
		// spock 국내/국제코드는 암호 일련번호로 재사용함.
		//var license_class = $('#li_encr_serial').val();


		var license_class = 1;

		//1종 보통
		var license_type = 2;

		//2종 보통
		if($('#type2').is(':checked')){
			license_type = 5;
		}
		//1종 대형
		else if($('#type3').is(':checked')){
			license_type = 1;
		}

		var license_loc = $('#license_loc').val();
		var license_num = license_loc + ' ' +
							$('#license_num1').val() + '-' +
							$('#license_num2').val() + '-' +
							$('#license_num3').val();

		var issue_date = $('select[name="Y_issue"]').val() + '-' +
							$('select[name="M_issue"]').val() + '-' +
							$('select[name="D_issue"]').val();

		var expiration_date = $('select[name="Y_expire"]').val() + '-' +
								$('select[name="M_expire"]').val() + '-' +
								$('select[name="D_expire"]').val();


		//var member_type = $('#radio_mem_type_regular').is(':checked') ? 1 : 2;
		var member_type = 2;
		set_cookie('tmp_member_type', member_type);

		$(window).unbind('beforeunload');



		$.doPost('https://www.socar.kr/member/complete', {
			ssn : ssn,
			license_class: license_class,
			license_type: license_type,
			license_num: license_num,
			issue_date: issue_date,
			expiration_date: expiration_date,
			state: member_type,
			channel: 'www',
			user_agent : navigator.userAgent
		});


		return false;
	});


})



	function show_policy(){
		var policy_3rd = $('#policy_3rd');
		if(policy_3rd.is(':visible')){
			policy_3rd.hide();
		}else{
			policy_3rd.show();
		}
		return false;
	}

	function show_credit_policy() {
		var credit_policy = $('#credit_policy');
		if (credit_policy.is(':visible')) {
			credit_policy.hide();
		} else {
			credit_policy.show();
		}
		return false;
	}

</script>
<style>
.agree-label { white-space: nowrap }
.policy_table { display: none; }
.policy_table { width:864px;margin-top:20px; margin-bottom: 40px;}
.policy_table td{ font-size:11px;}
.policy_table .cols thead th{border-left:1px solid #ededed;}
.policy_table .cols tbody td{padding-left:10px; text-align:left; vertical-align:middle; border-left:1px solid #ededed;}
.policy_table .cols .first{border-left:none;}
</style>
</head>

<body id="member" class="join step3">
<div id="wrap">

		<!-- header -->
	<div id="header-wrapper">
	<div id="header">
		<h1><a href=https://www.socar.kr/><img width="80" src='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20160823' alt="SOCAR" /></a></h1>

		<ul class="gnb">
		<li><a href=https://www.socar.kr/guide class="gnb1" title="서비스안내">서비스안내</a></li>
		<li><a href=https://www.socar.kr/fare class="gnb3" title="요금안내">요금안내</a></li>
		<li><a href=https://www.socar.kr/company class="gnb7" title="법인/단체안내">법인/단체 안내</a></li>
		<li><a href=https://www.socar.kr/notice class="gnb4" title="고객센터">고객센터</a></li>

		
			<li><a href=https://www.socar.kr/mypage class="gnb5" title="마이페이지">마이페이지</a></li>
		

		<li><a href=https://www.socar.kr/reserve class="gnb6" title="쏘카 찾기·예약">쏘카 찾기·예약</a></li>
		</ul>

		<div class="util">

			<p class="hi-seoul"><a href=https://www.socar.kr/hi-seoul><img src='//web-assets.socar.kr/template/asset/images/common/header_car_sharing_n.gif' alt="공유서울 나눔카" /></a></p>

				
					<ul>
					<li><a href=https://www.socar.kr/mypage class="util3">조동엽 님</a></li>
					<li><a href=https://www.socar.kr/user/logout class="util4" title="로그아웃">로그아웃</a></li>
					</ul>
				
		</div>
	</div>
	</div>
	<!-- //header -->


	<div id="container">
		<div id="content">
			<h2><img src="/template/member/../asset/images/member/join_h2.gif" alt="회원가입" /></h2>

			<h3 class="box shadow stepType stepType1 step3">운전면허/결제정보 입력</h3>

			<div class="boxL">




				<form name="join" method="post" action="">
					<fieldset>
						<div class="section">
							<h4><img src="/template/member/../asset/images/member/join_step3_txt2.gif" alt="운전면허" />
								<div style="position: absolute; color : #aaa;margin-left: 75px;margin-top: -11px;">쏘카 드라이브를 위한 필수조건!</div>
							</h4>
							<div class="driver1">
								<table cellspacing="0" class="rows">

								<tr>
									<th><img src="/template/member/../asset/images/member/join_step3_txt4.gif" alt="면허종류 (1)" /></th>
									<td>
										<label for="type1">
											<input type="radio" id="type1" name="driverType" checked="checked" /> 1종 보통
										</label>
										<label for="type2">
											<input type="radio" id="type2" name="driverType" /> 2종 보통
										</label>
										<label for="type3">
											<input type="radio" id="type3" name="driverType" /> 1종 대형
										</label>
									</td>
								</tr>
								<tr>
									<th><img src="/template/member/../asset/images/member/join_step3_txt5.gif" alt="면허번호 (2)" /></th>
									<td>
										<select id="license_loc" style="width:108px">
											<option selected="selected" value="서울">서울</option>
											<option value="경기">경기</option>
											<option value="인천">인천</option>
											<option value="대전">대전</option>
											<option value="광주">광주</option>
											<option value="울산">울산</option>
											<option value="대구">대구</option>
											<option value="부산">부산</option>
											<option value="강원">강원</option>
											<option value="충남">충남</option>
											<option value="충북">충북</option>
											<option value="전남">전남</option>
											<option value="전북">전북</option>
											<option value="경남">경남</option>
											<option value="경북">경북</option>
											<option value="제주">제주</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
										</select>
										<input id="license_num1" maxlength="2" type="text" class="input" style="width:30px" value="" />
										<input id="license_num2" maxlength="6" type="text" class="input" style="width:50px" value="" />
										<input id="license_num3" maxlength="2" type="text" class="input" style="width:30px" value="" />
										<em style='font-size: 12px; color:#999;'>* 지역란 숫자선택 가능</em>
									</td>
								</tr>
								<tr>
									<th><img src="/template/member/../asset/images/member/join_step3_txt6.gif" alt="갱신기간 만료일 (3)" /></th>
									<td>
										<div class="picker" id="picker1"></div>
									</td>
								</tr>
								<tr>
									<th><img src="/template/member/../asset/images/member/join_step3_txt7.gif" alt="면허 발급일 (4)" /></th>
									<td>
										<div class="picker" id="picker2"></div>
									</td>
								</tr>
								<tr>
									<th><img src="/template/member/../asset/images/member/join_step1_txt9.gif" alt="생년월일/성별" /></th>
									<td>
										<input id="ssn1" type="text" class="input" style="width:69px;" maxlength="6" /> (6자리)&nbsp;&nbsp;/&nbsp;&nbsp;
										<label for="male"><input type="radio" id="male" name="sex" value="1" checked="checked" /> 남성</label>
										<label for="female"><input type="radio" id="female" name="sex" value="2" /> 여성</label>
									</td>
								</tr>
								<!--
								<tr>
									<th><img src="/template/member/../asset/images/member/join_step3_txt3.gif" alt="암호일련번호" /></th>
									<td>
										<input id="li_encr_serial" maxlength="6" type="text" class="input" style="width:69px" value="" />
									</td>
								</tr>
								-->
								</table>



							</div>
							<div class="driver2">
								<img width="290px" src="/template/member/../asset/images/member/license-sample-locale.png" alt="운전면허 샘플 이미지" />
								<span style="margin-top: 10px;margin-left: 10px;display: inline-block;color: #999;">운전면허 샘플 이미지</span>
							</div>

							<div class="clear"></div>

							<ul class="tip mt10">
							<li style='color:red'>주민등록 상에 기재된 생년월일을 입력해 주세요.</li>
							<li style='color:red'>만 21세 미만이거나 운전면허 취득 1년 미만일 경우 SO회원 승인이 불가합니다.</li>
							<li>타인의 정보를 도용해 가입할 경우 법적 조치가 취해질 수 있으며, 유효한 정보가 아닐 경우 회원 승인이 거절될 수 있습니다.</li>
							</ul>
						</div>


						<div class="section">
							<h4><img src="/template/member/../asset/images/member/join_step3_txt8.gif" alt="결제카드" />
								<em style="position: absolute; color : #aaa;margin-left: 8px;margin-top: 4px;">한번 등록으로 편리하게 이용하세요!</em></h4>
							<table cellspacing="0" class="rows">
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step3_txt9.gif" alt="카드사 / 종류" /></th>
								<td >
									<div>
										<span id="card_type">카드를 등록해주세요.</span>
										<!-- INICIS -->
										<a id="open_register_card_layer" href="#" class="btnS"><span>결제카드 등록</span></a>
									
									</div>
									<div id="card_error">결제카드가 보류 상태이므로 예약 및 차량 이용이 불가합니다.</div>
								</td>
							</tr>
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step3_txt10.gif" alt="카드등록 승인일" /></th>
								<td id="card_date"></td>
							</tr>
							</table>

							<ul class="tip mt10">
							<li>결제카드를 등록하여, 예약 시마다 별도의 카드정보 입력 없이 간편하게 결제하실 수 있습니다.</li>
							<li>결제카드 정보는 <span style='color:red'>안전한 전자결제 서비스에 직접 등록</span>되며, 카드번호는 쏘카 시스템에 별도 저장하지 않습니다.</li>
							<li>쏘카는 전자상거래 등에서의 소비자 보호를 위하여 <span style='color:red'>구매안전을 보증하는 보험</span>에 가입되어 있습니다.</li>
							<li>타인의 정보를 도용해 가입할 경우 법적 조치가 취해질 수 있으며, 유효한 정보가 아닐 경우 회원 승인이 거절될 수 있습니다.</li>
							<!--<li>인터넷익스플로러에서 결제카드 등록 실패시 결제 프로그램 2개 모두 수동으로 설치해야합니다. <span onclick="javascript:fileDown('http://pgdownload.dacom.net/dacom/IssacWebProCMS_4_3_1_3_LG_UPLUS.exe');return false;" style="cursor:pointer;"><em>[링크1]</em></a> <span onclick="javascript:fileDown('http://ecredit.uplus.co.kr/renewal/html/guide_popup/SCSKInstaller.exe');return false;" style="cursor:pointer;"><em>[링크2]</em></a></li>-->
							<!-- <li>결제카드 등록 시에는 LG U+의 결제 모듈 프로그램을 필수로 설치해야 합니다. <a href='http://ecredit.uplus.co.kr/renewal/html/guide_popup/menu_01.htm' id='lg_install_guide'><em>결제카드 등록 실패 시 해결방안 확인하기</em></a></li> -->
							<!--<li>결제카드 등록 시 유효 여부 확인을 위하여 <span style="color:#ff1a1a">1,000원이 결제 후 취소</span>됩니다.</li>-->
							</ul>
						</div>


						<div class="section" style='display:none'>
							<h4><img src="/template/member/../asset/images/member/join_step3_txt11.gif" alt="회원제 선택" /></h4>
							<table cellspacing="0" class="cols">
							<thead>
							<tr>
								<th>&nbsp;</th>
								<th>종류</th>
								<th>카드발급비</th>
								<th style="width: 136px;">연회비</th>
								<th>보험혜택</th>
								<th>이용요금</th>
							</tr>
							</thead>
							<tbody>
							<!--
							<tr>
								<td><input id="radio_mem_type_regular" type="radio" name="memberType" /></td>
								<td><strong>정회원</strong></td>
								<td>무료</td>
								<td>-</td>
								<td>
									대인, 대물, 자손 적용<br />
									자기차량손해면책제도(본인 부담 최대 30만원)<br />
									휴차보상료 별도 부과
								</td>
								<td>기본요금체계 적용</td>
							</tr>
							-->
							<tr>
								<!--td><input id="radio_mem_type_so" type="radio" name="memberType" checked="checked" /></td>-->
								<td></td>
								<td><strong>SO회원</strong></td>
								<td>무료</td>
								<td>
									<!--
									<strike>30,000원</strike><br />
									서울 오픈기념 무료<br />
									-->
									<strong><em style="color: red">무료</em></strong>
								</td>
								<td>
									대인, 대물, 자손 적용<br />
									<br />
									자기차량 손해 면책부담금 선택 가능<br />
									- 손해 면책부담금 최대 30만원 : 1일 기준 7,000원~<br />
									- 손해 면책부담금 최대 70만원 : 1일 기준 5,000원~<br />
									<br />
									휴차보상료 별도 부과
								</td>
								<td>최대 70% 할인<br />(주중/주말/심야 할인)</td>
							</tr>
							</tbody>
							</table>
						</div>


												<!-- TO-DO	2013.02.14
														 가입 프로모션으로 화면에서 임시 제거
														 프로모션 끝나면 다시 표시하나?
												-->
						<!-- 정회원 -->
						<p class="agree type1" style="display:none;">
							<strong>정회원</strong> 을 선택하셨습니다. 가입 완료 후 등록한 <em>결제카드로 10,000원이 청구</em>됩니다.<br />
							<label for="agree1">
								<input type="checkbox" id="agree1" />
								선택한 회원제의 혜택 몇 회비 청구 방식을 확인하였으며, 요금 청구에 동의합니다.
							</label>
						</p>
						<!-- //정회원 -->

						<!-- So회원 -->
						<p class="agree type2" style="display:none;">
							<strong>So회원</strong> 을 선택하셨습니다. 연회비가 <em>자동결제</em>되는 회원제입니다.<br />
							<span>별도의 해지 신청을 하지 않으시면 가입 시 등록한 결제카드로 매년 자동결제됩니다.</span><br />
							<label for="agree2">
								<input type="checkbox" id="agree2" />
								선택한 회원제의 혜택 몇 회비 청구 방식을 확인하였으며, 요금 청구에 동의합니다.
							</label>
						</p>
						<!-- //So회원 -->

						<div class="section">
							<div class="box_check">
								<label for="is_agree" id="agree_label" class="agree-label">
									<span id="is_agree" class="agree_check"></span>
									<span class="agree_info"><a href="https://www.socar.kr/rent_terms" target="_blank"><strong style="font-size: 14px;">자동차대여약관</strong></a>, <a href="https://www.socar.kr/lbs" target="_blank"><strong style="font-size: 14px;">위치정보수집/이용</strong></a>, <a href="https://www.socar.kr/online" target="_blank"><strong style="font-size: 14px;">온라인고지</strong></a> 내용을 확인하였으며, 이에 동의합니다.</span>
								</label>
							</div>
							<div id="policy_3rd" class="policy_table">
								<h3 style="margin:5px;"><strong>개인정보의 제3자 제공 및 공유</strong></h3>
								<table cellspacing="0" class="cols">
									<colgroup>
										<col width="80" />
										<col width="70" />
										<col width="160" />
										<col width="170" />
										<col width="180" />
										<col width="" />
									</colgroup>
								<thead>
									<tr>
										<th class="first">구분</th>
										<th>제공시점</th>
										<th>제공목적</th>
										<th>제공대상자</th>
										<th>제공항목</th>
										<th>보유·파기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="9" class="first">제3자 제공<br />및 공유</td>
										<td rowspan="9">&nbsp;필요시</td>
										<td>고객위치확인, 차량사고처리,<br />보험, 긴급출동 관련</td>
										<td>전국렌터카공제조합,<br />SK네트웍스㈜</td>
										<td>성명(한글), 면허번호, 전화번호</td>
										<td rowspan="9">개인정보 제공 목적 달성 시까지 또는 회원의 제공 동의 철회 요청 시까지</td>
									</tr>
									<tr>
										<td>신용카드이용, 요금 결제</td>
										<td>㈜케이지이니시스,<br /> ㈜엘지유플러스,<br /> 나이스페이먼츠㈜,<br /> 한국정보통신㈜,<br /> ㈜NHN한국사이버결제</td>
										<td>생년월일, 신용카드번호,<br />유효기간, 사업자등록번호</td>
									</tr>
									<tr>
										<td>멤버십 서비스 제공</td>
										<td>SK텔레콤㈜</td>
										<td>멤버십 번호</td>
									</tr>
									<tr>
										<td>고객상담업무</td>
										<td>화이트커뮤니케이션</td>
										<td>성명(한글), 전화번호, 이용정보 등</td>
									</tr>
									<tr>
										<td>신용정보조회열람,<br />연체정보등록</td>
										<td>나이스평가정보㈜</td>
										<td>
											개인식별정보<br />(성명, 주소, 전화번호 등),<br />
											신용개설정보<br />(서비스 이용 내역 등)
										</td>
									</tr>
									<tr>
										<td>알림톡 서비스 제공</td>
										<td>㈜카카오</td>
										<td>성명(한글), 전화번호</td>
									</tr>
									<tr>
										<td>이메일 및 휴대폰 문자 메시지(SMS, LMS, App Push) 발송 관련(수신자 선별 포함) 서비스</td>
										<td>Appboy, Inc.</td>
										<td>성명(한글), 전화번호, 아이디, 생년월일, 성별, 이용정보 등</td>
									</tr>
									<tr>
										<td>이메일 발송 관련 서비스</td>
										<td>Invc.me Inc.</td>
										<td>성명(한글), 전화번호, 아이디, 생년월일, 성별, 이용정보 등</td>
									</tr>
									<tr>
										<td>본인인증 관련</td>
										<td>㈜엘지유플러스, 나이스평가정보㈜</td>
										<td>성명(한글), 전화번호, 연계정보(CI), 중복가입확인정보(DI), 통신사, 성별, 내/외국인정보</td>
									</tr>
								</tbody>
								</table>
							</div>
							<div class="box_check">
								<label for="is_agree_credit" id="credit_agree" class="agree-label">
									<span id="is_agree_credit" class="agree_check"></span>
									<span class="agree_info"><a onclick="javascript:show_credit_policy()"><strong style="font-size: 14px;">신용정보 조회</strong></a> 내용을 확인하였으며, 이에 동의합니다.</span>
								</label>
							</div>
							<div id="credit_policy" class="policy_table">
								<h3 style="margin:5px;"><strong>개인신용정보 조회</strong></h3>
								<table cellspacing="0" class="cols">
									<colgroup>
										<col width="80" />
										<col width="70" />
										<col width="160" />
										<col width="170" />
										<col width="180" />
										<col width="" />
									</colgroup>
								<thead>
									<tr>
										<th class="first">구분</th>
										<th>조회시점</th>
										<th>조회목적</th>
										<th>조회기관</th>
										<th>조회내용</th>
										<th>조회동의효력기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">신용정보 조회</td>
										<td >필요시</td>
										<td>상거래 설정/유지 및 채권추심</td>
										<td>나이스평가정보㈜</td>
										<td>개인식별정보<br/>(성명, 주소, 전화번호 등)<br/>신용개설정보<br/>(대출/카드개설/신용거래개설 등)<br/>연체정보 등 신용도 판단정보,<br/>신용등급 등</td>
										<td>동의서 제출시부터 조회목적의 효력이 종료되는 시점</td>
									</tr>
								</tbody>
								</table>
								<p>
									<br />※ 본거래와 관련하여 귀사가 본인으로부터 취득한 개인(신용)정보는 『개인정보보호법』 제15조 및 제22조에 따라 수집/이동시 동의가 필요한 항목입니다. 또한 『개인정보보호법』제17조 및 22조, 『신용정보의 이용 및 보호에 관한 법률』 제32조 및 33조에 따라 타인에게 제공 및 개인신용정보 조회시 동의가 필요합니다. 이에 본인은 개인(신용)정보의 수집/이용, 제3자 제공, 조회에 대해 동의합니다.
								</p>
							</div>
						</div>

						<div class="centerBtn">
							<a href="javascript:history.back();"><img src="/template/member/../asset/images/member/btn_step_prev.gif" alt="이전단계" /></a>
							<input id="complete" type="image" src="/template/member/../asset/images/member/btn_join_complete.gif" alt="가입완료" />
						</div>
					</fieldset>
				</form>
			</div>
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
								<input id="layer_askzone_submit" type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_socarzone_submit.gif' onclick="return false;" alt="신청하기">
							</div>
							
						</div>
					</fieldset>
				</form>
				<div class="box_titsoting">
					<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/common/txt_socarzone.gif' alt="쏘카존 신청현황" /></div>
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
						
						<textarea id="layer_askcar_text" cols="" rows="" class="textarea"></textarea>
						<input id="layer_askcar_submit" type="image" src='//web-assets.socar.kr/template/asset/images/common/btn_request.gif' onclick="return false;" class="submit" alt="신청">
						
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
		auth_token : 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
				auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
			auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
			auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
			auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
				auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
				auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
				auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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
			auth_token: 'ab78f1a53d86f6687400cc0724466cd04a44687dkjmtg',
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

	<!-- 결제카드등록 레이어-->
	<style type="text/css">
.member_card_layer {display:none;position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:10000;}
.open {display:block;}
.member_card_layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.7;-moz-opacity:.7;filter:alpha(opacity=70);}
.member_card_layer .layer_area {overflow:hidden;position:absolute;left:50%; top:50%;width:324px;height:440px;padding:40px;background:url('//web-assets.socar.kr/template/asset/images/member/bg_card_info_nice.png')0 0 no-repeat;}
.member_card_layer .layer_area .tit {padding:8px 0 10px;}
.member_card_layer .layer_area .tit_more {padding-bottom:14px;}
.member_card_layer .layer_area .list_dl {display:block;padding:8px 0 15px;border-top:2px solid #4f555e;}
.member_card_layer .layer_area .list_dl dl {display:block;overflow:hidden;width:100%;line-height:34px;}
.member_card_layer .layer_area .list_dl dl dt,
.member_card_layer .layer_area .list_dl dl dd {float:left;height:34px;}
.member_card_layer .layer_area .list_dl dl dd {width:248px;line-height:34px;font-size:12px;color:#333;}
.member_card_layer .layer_area .list_dl .inp_radio {width:18px;height:18px;}
.member_card_layer .layer_area .list_dl .lab_radio {padding:0 22px 0 1px;}
.member_card_layer .layer_area .list_dl .inp_cardnum {width:41px;height:22px;border:1px solid #d5d5d5;text-align:center;}
.member_card_layer .layer_area .list_dl .txt_bar {color:#c4c4c4;}
.member_card_layer .layer_area .list_dl .opt_select {height:24px;border:1px solid #d5d5d5;margin-right:2px;}
.member_card_layer .layer_area .list_dl .width56 {width:56px;}
.member_card_layer .layer_area .list_dl .width73 {width:73px;}
.member_card_layer .layer_area .list_dl .txt {display:inline-block;width:48px;text-align:center;}
.member_card_layer .layer_area .more {position:absolute; bottom: 80px; width: 80%; padding-top:10px;border-top:1px solid #e5e5e5;}
.member_card_layer .layer_area .more .check {padding-bottom:3px;}
.member_card_layer .layer_area .more .check * {vertical-align:top;}
.member_card_layer .layer_area .more .check .inp_check {width:18px;height:18px;}
.member_card_layer .layer_area .more .list_link {}
.member_card_layer .layer_area .more .list_link a,
.member_card_layer .layer_area .more .list_link a:hover {display:inline-block;padding-left:25px;font-size:12px;line-height:23px;color:#00b7ff;text-decoration:underline;background:url('//web-assets.socar.kr/template/asset/images/member/dot_member_card.png')0 0 no-repeat;}
.member_card_layer .layer_area .more .btn {padding:15px 0 12px;text-align:center;}
.member_card_layer .layer_area .btn_close {position:absolute;top:20px;right:20px;}
</style>

	
	<div class="member_card_layer">
		<div class="bg"></div>
		<div id="member_card_layer" class="layer_area">
			<div class="tit"><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card1.png' alt="결제카드 등록" /></div><br/>
			
			<div class="list_dl">
				<dl>
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card3.png' alt="카드종류" /></dt>
					<dd>
						<input type="radio" name="card_type" class="inp_radio" id="card_type_p" value="0" checked="checked" />
						<label for="radio1" class="lab_radio">개인</label>
						<input type="radio" name="card_type" class="inp_radio" id="card_type_c" value="1" />
						<label for="radio2" class="lab_radio">법인</label>
					</dd>
					<dt style="position:relative; width: 76px; height:25px; top:-10px; bottom:-10px;"></dt>
					<dd id="card_type_subtext" style="position:relative; height:34px; top:0px; bottom:-10px; font-size:12px; line-height:16px;">본인 명의의 신용, 체크카드를 등록해 주세요.</dd>
				</dl>
				<dl>
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card4.png' alt="카드번호" /></dt>
					<dd>
						<input type="text" class="inp_cardnum" id="card_num_01" maxlength="4" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="card_num_02" maxlength="4" />
						<span class="txt_bar">-</span>
						<input type="password" class="inp_cardnum" id="card_num_03" maxlength="4" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="card_num_04" maxlength="4" />
					</dd>
				</dl>
				<dl>
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card5.png' alt="유효기간" /></dt>
					<dd>
						<select class="opt_select width56" id="exp_m">
							<option value="01">01월</option>
							<option value="02">02월</option>
							<option value="03">03월</option>
							<option value="04">04월</option>
							<option value="05">05월</option>
							<option value="06">06월</option>
							<option value="07">07월</option>
							<option value="08">08월</option>
							<option value="09">09월</option>
							<option value="10">10월</option>
							<option value="11">11월</option>
							<option value="12">12월</option>
						</select>
						<select class="opt_select width73" id="exp_y"></select>
					</dd>
				</dl>
				<dl id="ssn">
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card10.png' id="birth" /></dt>
					<dd>
						<input type="text" id="rear_ssn_card" class="inp_cardnum width73" placeholder="6자리 입력" maxlength="6" />
						<span class="txt"></span>
					</dd>
				</dl>
				<dl id="cnumber" style="display:none;">
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card6.png' id="사업자번호" /></dt>
					<dd>
						<input type="text" class="inp_cardnum" id="corp_num_01" maxlength="3" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="corp_num_02" maxlength="2" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="corp_num_03" maxlength="5" />
					</dd>
				</dl>
				<dl id="pwd_dl">
					<dt><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card7.png' id="비밀번호" /></dt>
					<dd>
						<input type="password" id="card_pw" class="inp_cardnum width56" placeholder="앞2자리" maxlength="2" /> **
					</dd>
				</dl>
			</div>
			<div class="more">
				<div class="check">
					<input type="checkbox" class="inp_check" id="is_card_agree" />
					<label for="checkbox" class="lab_check"><img src='//web-assets.socar.kr/template/asset/images/member/tit_member_card8.png' alt="아래 약관 내용에 모두 동의합니다." /></label>
				</div>
				<ul class="list_link">
					<li><a href="https://www.socar.kr/bill_terms_all" target="_blank">정기과금 이용약관</a></li>
				</ul>
				<div class="btn"><a href="#" id="register_card"><img src='//web-assets.socar.kr/template/asset/images/member/btn_member_card.png' alt="결제카드 등록완료" /></a></div>
			</div>
			<a href="#" id="btnClose" class="btn_close"><img src='//web-assets.socar.kr/template/asset/images/member/close_member_card.png' alt="닫기" /></a>
		</div>
	</div>

	<script type="text/javascript">
	$(document).ready(function() {
		$('input:radio[name=card_type]').bind('click', function(){
			if($('input:radio[name=card_type]:checked').val() == 0){
				$('#cnumber').css('display','none');
				$('#ssn').css('display','inline-block');
				$('#pwd_dl').css('display','');
				document.getElementById("card_type_subtext").innerHTML =  "본인 명의의 신용, 체크카드를 등록해 주세요.";
			}
			else{
				$('#cnumber').css('display','inline-block');
				$('#ssn').css('display','none');
				$('#pwd_dl').css('display','none');
				document.getElementById("card_type_subtext").innerHTML =  "개인 명의의 법인카드를 등록하려면 <br/>'개인' 항목을 선택해 주세요.";
			}
		})
	});
	</script>
	<!-- //카드등록 레이어 -->
</div>

<!-- Facebook Conversion Code for AXH8?x_PC -->
<script>(function() {
	var _fbq = window._fbq || (window._fbq = []);
	if (!_fbq.loaded) {
		var fbds = document.createElement('script');
		fbds.async = true;
		fbds.src = '//connect.facebook.net/en_US/fbds.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(fbds, s);
		_fbq.loaded = true;
	}
})();
window._fbq = window._fbq || [];
window._fbq.push(['track', '6028340753923', {'value':'0.00','currency':'KRW'}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6028340753923&amp;cd[value]=0.00&amp;cd[currency]=KRW&amp;noscript=1" /></noscript>

</body>
</html>