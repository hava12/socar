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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505264771"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505264771"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505264771"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505264771"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505264771"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/css/mypage.css?v=20170731" />
<style>
li.guide { height: 22px; background: none !important; padding-left: 0 !important; }
</style>


<script  type="text/javascript">




	var json_url = "https://www.socar.kr/mypage/json_data";




var $phone        = false;
var $passwd       = false;
var $address      = false;
var $primary_area = false;

function check_ssn(ssn1, ssn2){
	var ssn  = ssn1.concat(ssn2);
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



function agree_info_update(flag) {
	if( $(document).data('disabled.agree_mkt') ){
		alert('메시지 수신 동의 처리 중입니다. 잠시만 기다려 주세요.');
		return;
	}

	var agree_sms = ($("#my_mkt_agree_sms").hasClass('on')) ? 1 : 0,
		agree_dm = ($("#my_mkt_agree_email").hasClass('on')) ? 1 : 0,
		agree_push= ($("#my_mkt_agree_push").hasClass('on')) ? 1 : 0;

	$.ajax({
		url : "https://api.socar.kr/user/update_noti_info_ex",
		crossDomain: true,
		type : "GET",
		data : {
			auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
			agree_sms : agree_sms,
			agree_dm : agree_dm,
			agree_push : agree_push
		},
		dataType: "jsonp",
		beforeSend: function(){
			$(document).data('disabled.agree_mkt',true);
		},
		success: function(json){
			if(json.retCode == 1){
				var now = new Date(),agree_msg = '수신동의';
				now = now.getFullYear() + '년 ' + parseInt(now.getMonth()+1,10) + '월 ' + now.getDate() + '일 ';

				if(!flag) agree_msg = '수신거부';
				alert('(주)쏘카\n' + now + agree_msg + ' 처리되었습니다.');
			}
			else{
				alert(json.retMsg);
			}
		},
		complete: function(){
			$(document).data('disabled.agree_mkt',false);
		},
		error : function(){
			$(document).data('disabled.agree_mkt',false);
			alert('일시적인 오류 입니다. 잠시 후 다시 시도해 주세요.');
		}
	});

	return;
}

$(function(){


	makeExpYear();

	$('#picker1').birthdaypicker({
		maxAge: 70,
		dateFormat: 'bigEndian',
		futureDates: true,
		maxYear: '2030',
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

	//주 사용지역 설정

	$('#loc1').attr('checked', true);


	$("input:radio[name='loc']").change(function () {
		$primary_area = true;
	});

	//면허정보 처리
	
		
			$('#sort2').attr("checked", true);
		

		
			//1종 보통
			$('#type1').attr('checked', true);
		

		

		$('#license_loc').val('서울');

		
			
				
			
			$('#license_num' + 1).val('11');
		
			
			$('#license_num' + 2).val('057808');
		
			
			$('#license_num' + 3).val('80');
		

		$('select[name="Y_expire"]').val('2018');
		$('select[name="M_expire"]').val('10');
		$('select[name="D_expire"]').val('25');


		//filter for 1.0 user (who does not have issue_date)
		
			$('select[name="Y_issue"]').val('2011');
			$('select[name="M_issue"]').val('10');
			$('select[name="D_issue"]').val('25');
			
	

//면허 갱신 알림 대상일 때 편집 가능으로 by 금동 수정중
		
			$('#license_form input,#license_form select').css('color','black');
			$('#license_form input,#license_form select').attr('disabled',true);
			$('#change_license').hide();
		

	//카드 인포
	


	$('#license_num1, #license_num3').blur(function() {
		if ( !/\d{2}/.test($(this).val()) ) {
			alert('숫자만 입력가능합니다.');
			//$(this).focus();
		}
	});

	$('#license_num2').blur(function() {
		if ( !/\d{6}/.test($(this).val()) ) {
			alert('숫자만 입력가능합니다.');
			//$(this).focus();
		}
	});

	//면허정보 변경
	$('#change_license').bind('click', function () {

		if($.trim($('#license_num1').val()) == '' ||
			$.trim($('#license_num2').val()) == '' ||
			$.trim($('#license_num3').val()) == ''){

			$('#license_num1').focus();
			alert('면허 번호를 입력해주세요.');

			return false;
		}

		var sex = $('#male').is(':checked') ? 1 : 2;
		var ssn = $.trim($('#front_ssn').val()).replace(/\s/g,'');

		if(ssn == ''){
			alert('생년월일 6자리(yymmdd)를 입력해 주세요.');
			return false;
		}

		var regexp = /^[0-9]+$/;
		if(! regexp.test(ssn)){
			alert('생년월일은 숫자만 입력가능합니다.');
			$("#front_ssn").val('').focus();
			return false;
		}

		if(ssn.length < 6) {
			alert('생년월일 6자리를 정확하게 입력해주세요.');
			return false;
		}

		ssn += '' + sex + '000000';

		var license_class = $('#sort1').is(':checked') ? 1 : 2;

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

		$.ajax({
			
				url : "https://www.socar.kr/user/update_license_info",
			
			type : "POST",
			data : {
				license_class: license_class,
				license_type: license_type,
				license_num: license_num,
				issue_date: issue_date,
				expiration_date: expiration_date,
				ssn: ssn,
				li_verified : '8'
			},
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					$('.mwLayer').addClass('open');
					$('.mwLayer #mwCont').removeClass();
					$('.mwLayer #mwCont').addClass('drLy');
					$('.mwLayer .mwCont').css('display','none');
					$('.mwLayer .licenseL').css('display','block');
				}
				else{
					alert(data.retMsg);
				}
			},
			error : function(){
				alert('일시적인 오류로 운전면허 정보를 설정하지 못했습니다. 잠시 후 다시 시도해 주세요.');
			}
		});
		return false;
	}); //$('#change_license').bind()



	//카드등록 레이어 오픈
	$('body').on('click.card_layer','a[id=open_register_card_layer]', function(e){
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
			url: "https://api.socar.kr/user/add_billing/",
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
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
					var card_id = res.result.billing_id,
						cardInfo = res.result.card_name,
						card_approval_date = res.result.card_approval_date,
						card_count = $("#card_count").val(),
						output = new StringBuffer();

					card_approval_date = card_approval_date.split("-");

					output.append("<li class='fst on' id='" + card_id + "' data-card='" + cardInfo + "'>");
					output.append("<div class='box_radio'><input type='radio' name='card_default' id='radio" + card_count + "' class='default inp_radio' checked='checked' />");
					output.append("<label for='radio" + card_count + "' class='default'>" + cardInfo + "카드 (" + card_approval_date.join('.') + ")</label></div><a href='#' class='card_del btn_del'>삭제하기</a></li>");

					$('#list_card > li:first')
						.removeClass('fst on')
						.children().find("input:radio[name='card_default']").removeAttr('checked');

					$(output.toString()).insertBefore('#list_card > li:first');
					output.clear();

					if($("#no_card").length > 0) {
						$("#no_card").remove();
					}

					$("#card_count").val(parseInt(Number(card_count)+1,10));

					if($("#card_count").val() == 3) {
						$("#open_register_card_layer_li").remove();
					}

					alert('결제카드가 정상적으로 등록되었습니다.');

					$("#btnClose").click();
/*
					if(window.opener !== null && window.opener !== undefined) {
						if(typeof window.opener.remakeCardList === 'function') {
							window.opener.remakeCardList();
						}
					}
*/
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


	$('input:radio[name=card_type]').bind('click', function(){
		if($('input:radio[name=card_type]:checked').val() == 0){
			$('#cnumber').css('display','none');
			$('#ssn').css('display','inline-block');
			$('#pwd_dl').css('display','');
		}
		else{
			$('#cnumber').css('display','inline-block');
			$('#ssn').css('display','none');
			$('#pwd_dl').css('display','none');
		}
	});

	$("#btnClose").bind('click', function() {
		$('.member_card_layer .inp_cardnum').val('')
		$('.member_card_layer select').find('option:first').attr('selected', 'selected');
		$(".member_card_layer").hide();
		return false;
	});

	$(".unapproved").bind('click', function() {
		alert('본인명의 카드만 사용 가능합니다.');
		return false;
	});

	// 기본카드 등록
	$('body').on('click.default', 'input[class^=default]', function(e){
		if( $(document).data('disabled') ){
			alert("기본 결제카드 등록 진행중입니다.");
			return false;
		}

		if($(this).parent().parent('li').hasClass('on')){
			alert('이미 기본 결제카드로 등록되어 있습니다.');
			return false;
		}

		var cardName = $(this).parent().parent('li').data("card"),
			billingID = $(this).parent().parent('li').attr('id');

		if(confirm(cardName + "카드를 기본 결제카드로 지정하시겠습니까?")){
			$.ajax({
				type: 'GET',
				url: "https://api.socar.kr/user/set_default_card",
				data: {
					auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
					id: billingID
				},
				crossDomain: true,
				dataType: 'jsonp',
				beforeSend: function(){
					$(document).data('disabled',true);
				},
				success: function(res){
					if(res.retCode == 1){
						$('#list_card > li:first')
							.removeClass('fst on')
							.children().find("input:radio[name='card_default']").removeAttr('checked');

						$("#" + billingID)
							.addClass("fst on")
							.children().find("input:radio[name='card_default']").attr("checked",true);

						$("#" + billingID).insertBefore("#list_card > li:first");
					}
					else{
						alert(res.retMsg + '[' +  res.retCode + ']');
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
		}

		return false;
	});

	// 등록카드 삭제
	$('body').on('click.del', 'a[class^=card_del]', function(e){
		if( $(document).data('disabled') ){
			alert("결제카드 삭제 처리중입니다.");
			return false;
		}

		if($(this).parent('li').hasClass('on')){
			alert('기본 결제카드는 삭제 하실 수 없습니다. 삭제하시려면 다른 카드를 기본 결제카드로 설정해 주세요!');
			return false;
		}

		var cardName = $(this).parent('li').data("card"),
			billingID = $(this).parent('li').attr('id');

		if(confirm(cardName + "카드를 삭제하시겠습니까?")){
			$.ajax({
				type: 'GET',
				url: "https://api.socar.kr/user/set_disabled_card",
				data: {
					auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
					id: billingID
				},
				crossDomain: true,
				dataType: 'jsonp',
				beforeSend: function(){
					$(document).data('disabled',true);
				},
				success: function(res){
					if(res.retCode == 1){
						$("#" + billingID).remove();

						$("#card_count").val(parseInt(Number($("#card_count").val())-1,10));

						if($("#open_register_card_layer_li").length < 1){
							var output = new StringBuffer();
							output.append('<li class="lst" id="open_register_card_layer_li"><a href="#" class="btn" id="open_register_card_layer"><img src="/template/mypage/../asset/images/mypage/btn_card_add.gif" /></a></li>');

							$("#list_card").append(output.toString());
							output.clear();
						}
					}
					else{
						alert(res.retMsg + '[' +  res.retCode + ']');
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
		}

		return false;
	});

	//비밀번호 변경 레이어 두번째 인풋
	$('#layer_passwd2').bind('blur', function () {
		if($(this).val() != $('#layer_passwd1').val()){
			alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요.');
			$(this).val('');
			$('#layer_passwd1').val('');
			$('#layer_passwd1').focus();
		}
	});

	//비밀번호 변경 레이어 확인 버튼
	$('#layer_btn_passwd').bind('click', function () {
		var p1 = $('#layer_passwd1').val();
		var p2 = $('#layer_passwd2').val();
		if(p1 == '' || p2 == ''){
			alert('변경할 비밀번호를 입력해주세요.');
			return false;
		}

		
			if ( p1.length < 6 ) {
				alert('비밀번호는 6자리 이상으로 입력해주세요.');
				return false;
			} else if ( ! /[a-zA-Z]/.test(p1) || ! /[0-9]/.test(p1) ) {
				alert('비밀번호는 영문과 숫자가 모두 포함되어야 합니다.');
				return false;
/*
			} else if ( !/((?=.*\d)(?=.*[a-zA-Z]).{6,20})/.test(p1) ) {
				alert('비밀번호는 영문과 숫자가 모두 포함되어야 합니다.');
				return false;
			} else if ( /[^\da-zA-Z]/.test(p1) ) {
				alert('비밀번호는 영문, 숫자 조합만 사용할 수 있습니다.');
				return false;
*/
			}
		

		$('#user_passwd').val(p1);

		$('#mwCont .mypage .close').click();
		alert('확인 버튼을 누르면 변경이 완료됩니다.');

		$passwd = true;
		return false;
	});

	//번호 변경 레이어 인증번호 요청 버튼
	$('#layer_phone_request').bind('click', function () {
		if($(this).prev().val() == ''){
			alert('휴대폰 번호를 입력해주세요.');
			return false;
		}
		$.ajax({
			
				url : "https://www.socar.kr/mypage/json_data",
			
			type : "POST",
			data : {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
				url: 'user/confirm_num',
				phone_num: $(this).prev().val()
			},
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					alert('인증번호가 전송되었습니다. 번호를 입력해주세요.');
					$('#confirm_id').val(data['result']['confirm_id']);
					$('#layer_confirm_num').focus();
				}
				else{
					alert(data.retMsg);
				}
			},
			error : function(){
				alert('일시적인 오류로 인증번호 요청에 실패하였습니다. 잠시 후 다시 시도해 주세요.');
			}
		});


		return false;
	});

	//번호 변경 레이어 확인 버튼
	$('#layer_btn_phone').bind('click', function () {
		$('#user_phone').val($('#layer_phone_num').val());
		$('#confirm_num').val($('#layer_confirm_num').val());
		$('#mwCont .mypage .close').click();
		alert('확인 버튼을 누르면 변경이 완료됩니다.');
		$phone = true;
		return false;
	});

	//우편번호 조회
	$('#search_zip').bind('click', function (e) {
		$.ajax({
			
				url : "https://www.socar.kr/mypage/json_data",
			
			type : "POST",
			data : {
				url: 'user/zipcode',
				search: $('#search_input').val()
			},
			dataType: "json",
			success: function(json){
				var retCode = json['retCode'];

				if(retCode == 1){
					var result = json['result'];
					$('.tr_data').remove();

					for(var i in result){
						$('#search_zip_result').append(
							'<tr class="tr_data"><th><a class="zip_code" href="#">'
							+ result[i]['zipcode']
							+ '</a></th><td><a class="zip_addr" href="#">'
							+ result[i]['name']
							+ '</a></td></tr>');
					}
					$('.zip_code').bind('click', function () {
						var zipCode = $(this).text();
						var zipAddr = $(this).parent().parent().find('.zip_addr').text();

						var zip1 = zipCode.substr(0, zipCode.indexOf('-'));
						var zip2 = zipCode.substr(zipCode.indexOf('-')+1, 3);

						$('#zip1').val(zip1);
						$('#zip2').val(zip2);
						$('#addr1').val(zipAddr);
						$('.mwLayer').removeClass('open');
						$('.mwLayer #mwCont').removeClass();
						$('.mwLayer .mwCont').css('display','none');
						$('#addr2').val('');
						$('#addr2').focus();
						$address = true;
						return false;
					});
					$('.zip_addr').bind('click', function () {
						var zipAddr = $(this).text();
						var zipCode = $(this).parent().parent().find('.zip_code').text();

						var zip1 = zipCode.substr(0, zipCode.indexOf('-'));
						var zip2 = zipCode.substr(zipCode.indexOf('-')+1, 3);

						$('#zip1').val(zip1);
						$('#zip2').val(zip2);
						$('#addr1').val(zipAddr);
						$('.mwLayer').removeClass('open');
						$('.mwLayer #mwCont').removeClass();
						$('.mwLayer .mwCont').css('display','none');
						$('#addr2').val('');
						$('#addr2').focus();
						$address = true;
						return false;
					});
				}
				else{
					alert(json['retMsg']);
				}
			},
			error: function(){
				alert('일시적인 오류로 우편검색에 실패하였습니다. 잠시 후 다시 시도해 주세요.');
			}
		});


		return false;
	}); // $('#search_zip').bind('click')

	// 약간 엉성하지만 세부주소가 바뀌었을때는 주소 변경으로 인정한다.
	$('#addr2').change(function(){
		$address = true;
	});

	//기본정보 업데이트 버튼
	$('#btn_update_basic').bind('click', function () {
		if($address == true && $('#addr2').val() == ''){
			alert('세부 주소를 입력해주세요');
			$('#addr2').focus();
			return false;
		}

		if($('input:radio[name="loc"]:checked').length == 0){
			alert('주 사용지역을 선택해주세요.');
			return false;
		}

		//var zip = $('#zip1').val() + '-' + $('#zip2').val();
		var zip = $('#zip').val();

		if(undefined == $('#zip').val()){
			// 잘못된 zip 이면 일단 입력하지 않음.
			zip  = '';
		}

		$.ajax({
			
				url : "https://www.socar.kr/user/update_basic_info",
			
			type : "POST",
			data : {
				zipcode: $address ? zip : '',
				address: $address ? $('#addr1').val() : '',
				address_detail: $address ? $('#addr2').val() : '',
				password: $passwd ? $('#user_passwd').val() : '',
				phone_num: $phone ? $('#user_phone').val() : '',
				confirm_num: $phone ? $('#confirm_num').val() : '',
				confirm_id: $phone ? $('#confirm_id').val() : '',
				primary_area: $primary_area ? $('input:radio[name="loc"]:checked').val() : ''
			},
			dataType: "json",
			success : function(data){
				if(data.retCode == '1'){
					alert('기본정보 변경사항이 적용되었습니다.');
					window.location.href = '/mypage';
				}
				else{
					alert(data.retMsg);
				}
			},
			error : function(){
				alert('일시적인 오류로 회원 정보 변경을 하지 못했습니다. 잠시 후 다시 시도해 주세요.');
			}
		});
		return false;
	});

	$('#btn_user_drop').bind('click', function () {
		if($(this).hasClass('request_done')) {
			alert("이미 회원 탈퇴를 신청하셨습니다.\n관리자 확인 후 탈퇴가 완료됩니다.");
			return false;
		}

		window.location.href = '/mypage/secession';
		return false;
	});

	$('#btn_user_drop_cancel').bind('click', function () {
		var msg = "탈퇴 요청을 취소하시겠어요?";

		if(confirm(msg)){
			$.ajax({
				
					url : "https://www.socar.kr/user/drop_request_cancel",
				
				type : "POST",
				data : {},
				dataType: "json",
				success : function(data){
					if(data.retCode == '1'){
						alert('회원 탈퇴 요청이 취소되었습니다.');
						window.location.href = '/mypage';
					}
					else{
						alert(data.retMsg + ' 코드 : ' + data.retCode);
					}
				},
				error : function(){
					alert('일시적인 오류 입니다. 잠시 후 다시 시도해주세요.');
				}
			});

		}
		else{
			return false;
		}
		return false;
	});




	$("#my_mkt_agree_label").click(function(){
		var agree_flag = false;
		$('.my_mkt_agree').toggleClass("on");

		if($('.my_mkt_agree').hasClass('on')){
			$('.my_mkt_agree_sub').addClass('on');
			agree_flag = true;
		}
		else{
			$('.my_mkt_agree_sub').removeClass('on');
			agree_flag = false;
		}

		agree_info_update(agree_flag);

		return false;
	});

	$("#my_mkt_agree_email_label, #my_mkt_agree_sms_label, #my_mkt_agree_push_label").click(function(){
		var $this	= $(this),
			$mkt_agree = $(".my_mkt_agree"),
			$email	= $("#my_mkt_agree_email"),
			$sms	= $("#my_mkt_agree_sms"),
			$push	= $("#my_mkt_agree_push"),
			agree_flag = false;

		if($this.attr('id') == "my_mkt_agree_email_label") {
			$email.toggleClass("on");
			if($email.hasClass('on')) agree_flag = true;
		}

		if($this.attr('id') == "my_mkt_agree_sms_label") {
			$sms.toggleClass("on");
			if($sms.hasClass('on')) agree_flag = true;
		}

		if($this.attr('id') == "my_mkt_agree_push_label") {
			$push.toggleClass("on");
			if($push.hasClass('on')) agree_flag = true;
		}

		if($email.hasClass('on') && $sms.hasClass('on') && $push.hasClass('on')){
			$mkt_agree.addClass('on');
		}
		else{
			$mkt_agree.removeClass('on');
		}

		agree_info_update(agree_flag);

		return false;
	});

	//티머니 등록
	var $timeSet = false;
	var $timerId;
	var $key_event = 'oninput' in document.body ? 'input' : 'keyup' ;
	$('#tmoney_card_number').bind($key_event, function (e) {
		if($timeSet == true){
			clearInterval($timerId);
		}
		$timerId = setInterval(function(){
			$timeSet = false;
			clearInterval($timerId);
			var input = $('#tmoney_card_number').val();

			if(input == '' || input.length == 0){
				$("#inp_info").css('display','none');
				$("#regist_t > span").addClass('disabled');

				return;
			}
			else{
				$("#tmoney_card_number").addClass('inp_tmoney_on');

				if(input.length < 16){
					$("#inp_info").removeClass('ok').addClass('err');
					$("#inp_info").css('display','inline-block');
					$("#regist_t > span").addClass('disabled');
				}
				else{
					$("#inp_info").removeClass('err').addClass('ok');
					$("#inp_info").css('display','none');
					$("#regist_t > span").removeClass('disabled');

					
				}
			}
		},400);
		$timeSet = true;
	});



	$("#regist_t").click(function(){
		if($(this).hasClass('use')){
			alert('차량 운행중에는 카드 등록/변경이 불가능 합니다. 반납완료 후 변경해주세요.');
			return false;
		}

		if ($(document).data('disabled.regist')) {
			alert('T-money 카드 등록 처리중입니다. 잠시만 기다려 주세요.');
			return false;
		}

		if( $(document).data("disabled.dupcheck") ) {
			alert('T-money 카드 중복체크 중입니다. 잠시만 기다려 주세요.');
			return false;
		}

		var card_num = $.trim($("#tmoney_card_number").val());

		var findStr = card_num.match(/^[0-9]{16}$/);
		if( card_num != findStr){
			alert('등록하실 T-money 카드 번호를 정확히 입력해 주세요. 숫자만 입력 가능합니다.');
			return false;
		}

		if($(this).children('span').hasClass('disabled')){
			alert('이미 사용중인 카드입니다.');
			return false;
		}

		$.ajax({
			type: 'GET',
			url: "https://api.socar.kr/user/register_rfid",
			crossDomain: true,
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
				card_type: 'T',
				state: 3,
				printed_card_number : card_num
			},
			dataType: 'jsonp',
			beforeSend: function(xhr) {
				$(document).data("disabled.regist",true);
			},
			success: function(json){
				alert(json.retMsg);

				if(json.retCode == 1){
					$("input:radio[name='member_card']").prop("checked",false);
					$("#tmoney").prop("checked",true);
					$(".membercard .list_membcard li").removeClass('on');
					$("#tmoney").parent().parent().parent().addClass('on');
				}

				$(document).data("disabled.regist",false);
			},
			error: function(){
				alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
				$(document).data("disabled.regist",false);
			}
		});

		return false;
	});

	//쏘카카드 신청
	$('#socarCardLayer').click(function(){
		if($(this).hasClass('use')){
			alert('차량 운행중에는 카드 변경이 불가능 합니다. 반납완료 후 변경해주세요.');
			return false;
		}

		if($(this).data('state') == 1 || $(this).data('state') == 2){
			alert('현재 쏘카카드 발급 절차가 진행 중입니다. 카드 수령을 못하셨다면 고객센터 1:1문의로 문의해 주세요.');
			return false;
		}

		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('socarcardbox');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .socarcardLayer').css('display','block');
		return false;
	});

	$('#socarcard_request_cancel').click(function(){
		if ($(document).data('disabled')) {
			alert('회원카드 신청 처리중입니다. 잠시만 기다려 주세요.');
			return false;
		}

		$('.mwLayer').removeClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer .mwCont').css('display','none');
		return false;
	});

	$('#socarcard_request').click(function(){
		if ($(document).data('disabled')) {
			alert('회원카드 신청 처리중입니다. 잠시만 기다려 주세요.');
			return false;
		}

		$.ajax({
			type: 'GET',
			url: "https://api.socar.kr/user/register_rfid",
			crossDomain: true,
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
				card_type: 'S',
				state: 1
			},
			dataType: 'jsonp',
			beforeSend: function(xhr) {
				$(document).data("disabled",true);
				$('#member_card_regist_indicator').show();
			},
			success: function(json){
				$('#member_card_regist_indicator').hide();
				$(document).data("disabled",false);

				alert(json.retMsg);

				if(json.retCode == 1){
					document.location.reload();
				}
			},
			error: function(){
				alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
				$('#member_card_regist_indicator').hide();
				$(document).data("disabled",false);
			}
		});

		return false;
	});

	$("#no_member_card").click(function(){
		if($(this).parent().parent().parent().data('regist') == 1){
			alert('이미 등록된 카드가 있습니다');
			return false;
		}

		return false;
	});

	$("#tmoney,#socarcard,#stickercard").click(function(e){
	
		if($(document).data("disabled.default")){
			alert('기본카드 변경처리 중입니다.');
			return false;
		}

		if($(this).parent().attr("id") == "no_member" && $(this).parent().data('regist') == 1){
			alert('이미 등록된 카드가 있습니다.');
			return false;
		}

		if($(this).hasClass('no_regist')){
			alert('차량제어에 사용하실 카드 정보를 먼저 등록해 주세요.');
			return false;
		}

		var id = $(this).val(),
			$self = $(this),
			isReturn = true;

		$.ajax({
			type: 'GET',
			url: "https://api.socar.kr/user/set_default_rfid_card",
			crossDomain: true,
			data: {
				auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
				id: id
			},
			dataType: 'jsonp',
			beforeSend: function(xhr) {
				$(document).data("disabled.default",true);
			},
			success: function(json){
				$(document).data("disabled.default",false);

				alert(json.retMsg);

				if(json.retCode == 1){
					$(".membercard .list_membcard li").removeClass('on');
					$self.parent().parent().parent().addClass('on');
				}
				else{
					document.location.reload();
				}
			},
			error: function(){
				$(document).data("disabled.default",false);
				alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
			}
		});

		return;
	});

	// 본인인증 요청
  $("#mypage .btn_auth").click(function() {
		var user_phone = $.trim($('#user_phone').val().split('-').join(''));
		var query = { auth_request : 'myinfo_web', auth_token : '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc' };
    if($("#user_name").text()) query.name = $("#user_name").text();
		document.domain = 'socar.kr';
		postPopup('https://m.socar.kr/authentication/pc', 'width=660,height=660,scrollbars=no,resizable=no', query);
		return false;
  });

});




// 본인인증 완료 후, 실행
function auth_confirm(res) {
	// 인증 값 입력
	$("#user_phone").val(res.phone);
	$("#auth_confirm_key").val(res.auth_confirm_key);
	// 인증 후 변경불가
	$("#user_phone").css("border",0);
	$("#user_phone").prop("readonly", true);
}



</script>
</head>

<body id="mypage" class="info">
<div id="wrap">

		<jsp:include page="/template/Header.jsp"/>


	<div id="container">
		<div id="content">
			<h2><img src="/template/mypage/../asset/images/mypage/h2.gif" alt="[마이페이지] 내 정보와 예약내역, 쿠폰 등을 확인할 수 있습니다." /></h2>

			<div class="box lnb">

				                <!-- lnb -->
                <ul class="lnb">
                <li><a href="/mypage" title="내 정보" class="lnb1">내 정보</a></li>
                <li><a href="/mypage/reserve" title="예약내역" class="lnb3">예약내역 <span>0</span></a></li>
                <li><a href="/mypage/coupon" title="내 쿠폰" class="lnb4">내 쿠폰 <span>0</span></a></li>
                <li><a href="/mypage/payment" title="결제내역" class="lnb5">결제내역</a></li>
                </ul>
                <!-- //lnb -->

				<div class="section">
				
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/index_txt1.gif" alt="기본정보" /></h3>

						<form name="info1" method="post" action="">
							<fieldset>
								<input type="hidden" name="auth_confirm_key" id="auth_confirm_key" value="" />
								<table cellspacing="0" class="rows">
								<tr>
									<th><img src="/template/mypage/../asset/images/member/join_step2_txt3.gif" alt="이름" /></th>
									<td id="user_name">임형택</td>
								</tr>

								<tr>
									<th><img src="/template/mypage/../asset/images/mypage/index_txt2.gif" alt="이메일" /></th>
									<td>keatmil@naver.com</td>
								</tr>
								<tr>
									<th><img src="/template/mypage/../asset/images/member/join_step2_txt6.gif" alt="비밀번호" /></th>
									<td>
									
										<input type="password" class="input" style="width:115px" value="1234567" readonly/>
										<input id="user_passwd" type="password" style="display:none;" value="" readonly/>
										<a href="#" class="btnS pwB"><span>변경</span></a>
									
									</td>
								</tr>
								<tr>
									<th><img src="/template/mypage/../asset/images/member/join_step2_txt8.gif" alt="휴대폰 번호" /> <em class="star" title="필수항목"></em></th>
									<td>
										<input id="user_phone" type="text" class="input" style="width:115px" value="01064318680" readonly />
										<input id="confirm_id" type="text" style="display:none;" value="" readonly />
										<input id="confirm_num" type="text" style="display:none;" value="" readonly />
										<a href="#" class="btnS btn_auth"><span>변경</span></a>
									</td>
								</tr>
							
							
								<tr>
									<th><img src="/template/mypage/../asset/images/member/join_step2_txt10.gif" alt="주소" /> <em class="star" title="필수항목"></em></th>
									<td>
										<input id="zip" type="text" class="input" style="width:50px" value='07020' disabled="disabled" />
										<a href="#" id="execDaumPostcode" onclick="javascript:execDaumPostcode();" class="btnS"><span>우편번호</span></a>
										<p class="mt5">
											<input id="addr1" type="text" class="input" style="width:240px" value="서울 동작구 사당동 1154 (사당동, 사당휴먼시아아파트)" disabled="disabled" />
											<input id="addr2" type="text" class="input" style="width:240px" value="106동304호" />
										</p>
									</td>
								</tr>
							
							
								<tr>
									<th><img src="/template/mypage/../asset/images/mypage/index_txt13.gif" alt="주 사용지역" />
									</th>
									<td>
										<label for="loc1">
											<input type="radio" id="loc1" name="loc" value="서울" /> 서울
										</label>
										<!-- 인천/경기 추가 -->
										<label for="loc4">
											<input type="radio" id="loc4" name="loc" value="인천경기" /> 인천·경기
										</label>
										<!-- 대구/경북 추가 -->
										<label for="loc5">
											<input type="radio" id="loc5" name="loc" value="대구경북" /> 대구·경북
										</label>
										<!-- 부산지역 추가 -->
										<label for="loc3">
											<input type="radio" id="loc3" name="loc" value="부산경남" /> 부산·경남
										</label>
										<!-- 대전충청지역 추가 -->
										<label for="loc6">
											<input type="radio" id="loc6" name="loc" value="대전충청" /> 대전·충청
										</label>
										<!-- 광주전라지역 추가 -->
										<label for="loc7">
											<input type="radio" id="loc7" name="loc" value="광주전라" /> 광주·전라
										</label>
										<label for="loc2">
											<input type="radio" id="loc2" name="loc" value="제주" /> 제주
										</label>
										<label for="loc8">
											<input type="radio" id="loc8" name="loc" value="강원" /> 강원
										</label>
									</td>
								</tr>
							
								</table>

								<p class="centerBtn">
									<input id="btn_update_basic" type="image" src="/template/mypage/../asset/images/customer/btn_confirm.gif" alt="확인" />
									
								</p>
							</fieldset>
						</form>
					</div>
					
					
					
					
					

				
					<div class="group">
						<h3 id="li_pos"><img src="/template/mypage/../asset/images/mypage/index_txt3.gif" alt="운전면허 정보" /></h3>

						<form name="info2" id='license_form' method="post" action="">
							<fieldset>
								<table cellspacing="0" class="rows">
								<tr>
									<th><img src="/template/mypage/../asset/images/mypage/index_txt4.gif" alt="면허종류" /></th>
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
									<th><img src="/template/mypage/../asset/images/mypage/index_txt5.gif" alt="면허번호" /></th>
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
									<th><img src="/template/mypage/../asset/images/mypage/index_txt6.gif" alt="적성검사 만료일" /></th>
									<td>
										<div class="picker" id="picker1">
											
										</div>
										<!-- 템플릿 수정중-->
									</td>
									</td>
								</tr>
								<tr>
									<th><img src="/template/mypage/../asset/images/mypage/index_txt7.gif" alt="면허 발급일" /></th>
									<td>
										<div class="picker" id="picker2"></div>
									</td>
								</tr>
								<!--
								<tr>
									<th><img src="/template/mypage/../asset/images/member/join_step3_txt3.gif" alt="암호일련번호" /></th>
									<td>
										<input id="license_encr_serial" maxlength="6" type="text" class="input" style="width:50px" value="" />
									</td>
								</tr>
								-->
<!-- 2014.04.15 -->

								
<!-- // 2014.04.15 -->
								</table>
								
							</fieldset>
						</form>
						<ul class="tip mt10">
						<li class="guide">
							<span class="middot"></span>
							<p class="description">면허 승인은 최대 24시간 소요됩니다.</p>
						</li>
						<li class="guide">
							<span class="middot"></span>
							<p class="description">
								면허를 취득하고 1년이 지났지만 재발급 등의 이유로 면허증에 기재된 면허취득 일자가 1년 미만일 경우에는 최초 면허 취득일 확인이 필요합니다.<br />
								민원24<a href="https://www.minwon.go.kr" target="_blank">(www.minwon.go.kr)</a>에서 운전 경력증명서를 발급받아, 사진으로 찍어 1:1문의에 첨부해주시면 확인 후 승인해드리겠습니다.
							<p>
						</li>
						</ul>
					</div>

					<div class="group mypagecard">
						<h3><img src="/template/mypage/../asset/images/mypage/tit_card.gif" alt="결제카드 정보" /></h3>
						<div class="txt_more">선택된 카드로 결제가 진행됩니다.</div>

					<!-- 법인회원 제외 member_type == P-->
						
						<ul class="list_card" id="list_card">
						
							<li class="fst on" id="1008837" data-card="현대">
								
									<div class="box_radio">
										<input type="radio" name="card_default" id="radio0" class="default inp_radio" checked="checked" />
										<label for="radio0" class="default">현대카드 (102800)</label>
									</div>
									<a href="#" class="card_del btn_del">삭제하기</a>
								
							</li>
						
						
						
							<li class="lst" id="open_register_card_layer_li">
								<a href="#" class="btn" id="open_register_card_layer"><img src="/template/mypage/../asset/images/mypage/btn_card_add.gif" /></a>
							</li>
						
						</ul>
						<input type="hidden" name="card_count" id="card_count" value="1" />
					
						<ul class="tip mt10">
						
						<li>결제카드를 등록하여, 예약 시마다 별도의 카드정보 입력 없이 간편하게 결제하실 수 있습니다.</li>
						<li>결제카드 정보는 <span style='color:red'>안전한 전자결제 서비스에 직접 등록</span>되며, 카드번호는 쏘카 시스템에 별도 저장하지 않습니다.</li>
						<li>쏘카는 전자상거래 등에서의 소비자 보호를 위하여 <span style='color:red'>구매안전을 보증하는 보험</span>에 가입되어 있습니다.</li>
						<li><span style='color:red'>본인명의 카드</span>만 <span style='color:red'>사용 가능</span>합니다.</li>
						
						
						</ul>
					</div>

          <div class="group">
						<h3 id="li_pos"><img src="/template/mypage/../asset/images/mypage/title_Tmembership.png" alt="T멤버십 정보"></h3>
						<form>
							<fieldset>
								<table cellspacing="0" class="rows">
  								<tbody>
                    <tr>
    									<th><img src="/template/mypage/../asset/images/mypage/text_cardnumber.png" alt="카드번호"></th>
    									<td>
                        
                        <input type="text" class="input-four-digit js-input-four-digit" data-order="1" maxlength="4" />
                        <input type="text" class="input-four-digit js-input-four-digit" data-order="2" maxlength="4" />
                        <input type="password" class="input-four-digit js-input-four-digit" data-order="3" maxlength="4" />
                        <input type="password" class="input-four-digit js-input-four-digit" data-order="4" maxlength="4" />
                        

                        <a href="#" id="js-t-membership-edit" class="btnS"><span>수정</span></a>
                        <a href="#" id="js-t-membership-save" class="btnS" style="display: none;"><span>저장</span></a>
    									</td>
    								</tr>
    								<tr>
    									<th><img src="/template/mypage/../asset/images/mypage/text_balance.png" alt="잔액"></th>
    									<td class="js-t-membership-value"></td>
    								</tr>
  								</tbody>
                </table>
  						</fieldset>
  					</form>

            <div style="padding-bottom: 10px; margin-top: 15px;">
              <label for="t-membership-agree" id="t-membership-agree_label" class="doupdate">
              
              <span class="js-is-agree mkt_agree"></span>
              
              <span class="t-membership-agree-info" style="font-weight:bold;font-size:14px;">개인정보 수집 및 이용에 동의합니다.</span>
              </label>
            </div>

						<ul class="tip mt10">
              <li>제공받는자: (주)쏘카, (주)SK텔레콤</li>
              <li>수집, 이용 목적: T멤버십 사용 및 환불</li>
              <li>수집항목: T멤버십 카드번호, T멤버십 등급</li>
              <li>보유 및 이용기간: T멤버십 서비스 탈퇴시까지</li>
              <li>동의하지 않을 경우 T멤버십 사용이 불가능합니다.</li>
						</ul>
					</div>

          <script type="text/javascript">
          $(document).ready(function() {
            var $agreement = $('.js-is-agree');
            var $fourDigits = $('input.js-input-four-digit');
            var $tMembershipEditBtn = $('#js-t-membership-edit');
            var $tMembershipSaveBtn = $('#js-t-membership-save');
            var $tMembershipValue = $('.js-t-membership-value');

            

            $agreement.bind('click', function () {
              $(this).toggleClass('on');
            });

            // 멤버십 ID 포커스 시
            $fourDigits.focus(onFocusFourDigit);

            // 멤버십 ID 포커스 아웃 시
            $fourDigits.blur(onBlurFourDigit);

            // 멤버십 ID 키입력
            $fourDigits.bind('keydown', onKeyDownFourDigits);

            // 멤버십 수정 버튼 클릭
            $tMembershipEditBtn.click(onEditButtonClick);

            // 멤버십 저장 버튼 클릭
            $tMembershipSaveBtn.click(saveMode);

            $('.js-placeholder').click(onClickPlaceHolder);

            $('.js-register-t-membership-button').click(registerPartnerVoucher);

            function onClickPlaceHolder () {
              $(this).hide();
              $('.js-input-four-digit[data-order="1"]')[0].focus();
            }

            function onBlurFourDigit () {
              var isEmpty = true;
              $fourDigits.map(function(elem) {
                var val = $(this).val();
                if (val && val.length > 0) isEmpty = false;
              })
              if (isEmpty) $('.js-placeholder').show();
            }

            function onFocusFourDigit () {
              $('.js-placeholder').hide();

              if (this.value.trim().length >= 4) this.value = '';
              triggerEditingMode();
            }

            function onKeyDownFourDigits (evt) {
              var isNumber = (evt.keyCode >= 48 && evt.keyCode <= 57 || evt.keyCode >= 96 && evt.keyCode <= 105);
              var isFuntionKey = (evt.keyCode === 8 || evt.keyCode === 9 || evt.keyCode === 37 || evt.keyCode === 39 || evt.keyCode === 46);
              var isBackspace = (evt.keyCode === 8);

              if (!isNumber && !isFuntionKey) {
                return evt.preventDefault();
              } else if (isNumber) {
                var $this = $(this);
                if (this.value.trim().length >= 3) setTimeout(function () { $this.next().focus(); }, 0);              } else if (isBackspace) {
                if (isBackspace && this.value.trim().length === 0) $(this).prev().focus();
              }
            }

            function triggerEditingMode () {
              $tMembershipEditBtn.hide();
              $tMembershipSaveBtn.show();
            }

            function onEditButtonClick (evt) {
              evt.preventDefault();

              $fourDigits.prop({ disabled: false });

              // $($fourDigits[0]).focus();
              triggerEditingMode();
            }

            function saveMode (evt) {
              evt.preventDefault();
              var membership = getMembershipNumbers();
              if (!membership) return alert('멤버십 번호 입력이 완료되지 않았습니다.');
              if (!$agreement.hasClass('on')) return alert('개인정보 수집·이용 약관에 동의해주세요.');
              registerPartnerVoucher();
            }

            function getMembershipNumbers () {
              var membership = [];
              $fourDigits.each(function() {
                membership.push(this.value);
              });

              var isMembershipEnteredCorrectly = true;
              membership.map(function (elem) {
                if (elem.length < 4) isMembershipEnteredCorrectly = false;
              })

              if (!isMembershipEnteredCorrectly) return false;

              return membership;
            }

            function showFailed(retMsg) {
              $tMembershipEditBtn.hide();
              $tMembershipSaveBtn.show();

              if (retMsg) {
                $tMembershipValue.text(retMsg);
              } else {
                $fourDigits.prop({ disabled: false });
              }
            }

            function showSuccess() {
              $tMembershipEditBtn.show();
              $tMembershipSaveBtn.hide();
              $fourDigits.prop({ disabled: true });
            }

            function registerPartnerVoucher() {
              var membership = getMembershipNumbers();
              if (!membership) return alert('멤버십 번호를 확인해주세요.');
              if (!$agreement.hasClass('on')) return alert('개인정보 수집·이용 약관에 동의해주세요.');

              $.ajax({
                method: 'GET',
                url: 'https://api.socar.kr/mypage/register_partner_voucher/',
                crossDomain: true,
                data: {
                  auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
                  type: 't-membership',
                  t_membership_number: membership.join(''),
                  total_price: 0,
                },
                dataType: 'jsonp',
                success: function (json) {
                  if (json.retCode !== '1') {
                    alert(json.retMsg);
                    showFailed();
                    return;
                  }
                  showSuccess();
                  $tMembershipValue.text(number_format(json.result.total_point) + 'P');

                  alert('등록하였습니다.');
                },
                error: function () {
                  showFailed();
                  alert('일시적인 오류로 T멤버십 번호를 조회하지 못했습니다. 잠시 후 다시 시도해 주세요.');
                }
              });
            }

            function validatePartnerVoucher() {
              var membership = getMembershipNumbers() || [];
              $.ajax({
                method: 'GET',
                url: 'https://api.socar.kr/mypage/validate_partner_voucher/',
                crossDomain: true,
                data: {
                  auth_token: '8253898f5c54f177f2157eb70e488c3ac425c8eamipkc',
                  type: 't-membership',
                  t_membership_number: membership.join(''),
                  total_price: 0,
                },
                dataType: 'jsonp',
                success: function (json) {
                  if (json.retCode !== '1') {
                    showFailed(json.retMsg);
                    return;
                  }
                  showSuccess();
                  $tMembershipValue.text(number_format(json.result.total_point) + 'P');
                },
                error: function (error) {
                  showFailed();
                  alert('일시적인 오류로 T멤버십 번호를 조회하지 못했습니다. 잠시 후 다시 시도해 주세요.');
                }
              });
            }
            });
          </script>

					<div class="group membercard">
						<h3><img src="/template/mypage/../asset/images/mypage/tit_membercard_1223.gif" alt="추가 카드키" /></h3>
						<div class="txt_more">선택한 카드로 차량 문 개폐가 가능합니다.</div>
						<ul class="list_membcard" id="list_membcard">
							<li class="on" data-regist="0">
								<dl>
									<dt>
										<input type="radio" name="member_card" id="no_member_card" checked="checked" class="inp_radio member_card_radio" value="0" />
										<label for="no_member_card">선택 안 함</label>
									</dt>
									<dd>모바일앱 스마트키로 차량 문 개폐가 가능합니다.</dd>
								</dl>
							</li>
						
							<li>
								<dl>
									<dt>
										<input type="radio" name="member_card" id="tmoney" class="inp_radio no_regist" />
										<label for="tmoney">T-money 카드</label>
									</dt>
									<dd>
										<div class="tmoney">
											<input type="text" class="inp_tmoney" id="tmoney_card_number" value="" maxlength="16" />
										
											<a href="#" class="btnS" id="regist_t"><span>등록</span></a>
										
											<span id="inp_info" class="err inp_info">16자리 카드번호를 입력해주세요.</span>
											<!-- <span class="err">이미 사용중인 카드입니다.</span>
											<span class="ok">사용 가능한 카드입니다.</span> -->
										</div>
										<ul class="tip">
											<li class="red">T-money 카드로는 서울지역 쏘카존 차량만 적용 가능합니다.</li>
											<li>T-money 카드는 회원카드로 사용되며 요금 결제와는 무관합니다.</li>
											<li>캐시비카드,신용카드가 아닌 T-money 카드 번호를 입력해주세요.</li>
											<li>T-money 카드 번호는 카드 뒷면에서 찾을 수 있습니다.</li>
										</ul>
									</dd>
								</dl>
							</li>
						
						
							<li>
								<dl>
									<dt>
										<input type="radio" name="member_card" id="socarcard" class="inp_radio no_regist" />
										<label for="socarcard">회원카드</label>
									</dt>
									<dd>
										<div class="socar_card">
										
											<a href="#" id="socarCardLayer" data-state="0" class="btnS"><span>발급신청</span></a>
										
										</div>
										<p class="more">카드 발급 신청시 1,500원이 결제됩니다.</p>
									</dd>
								</dl>
							</li>
						
						
						</ul>
						<ul class="tip mt10">
							<li>차량 운행 중 카드 변경이 불가능하니, 운행 전 신중하게 변경해주세요.</li>
							<!-- <li>쏘카카드 선택시, 구매 감사의 의미로 운행 지원 패키지(쿠폰 등)를 같이 제공합니다. <a href="#" class="link">패키지 구경하기</a></li> -->
						</ul>
					</div>

					
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/index_txt10.gif" alt="회원제 정보" /></h3>

						<table cellspacing="0" class="cols">
						<colgroup><col width="120" /><col /><col /><col /></colgroup>
						<thead>
						<tr>
							<th>종류</th>
							<th style="width: 136px;">연회비</th>
							<th>보험혜택</th>
							<th>이용요금</th>
						</tr>
						</thead>
						<tbody>
						
							<tr>
								<td><strong>SO회원</strong></td>
								<td>

									<strong><em style="color: Red">무료</em></strong>
								</td>
								<td>
									대인, 대물, 자손 적용<br />
									<br />
									자기부담금 선택 가능<br />
									- 자기부담금 최대 30만원 : 1일 기준 7,000원~<br />
									- 자기부담금 최대 70만원 : 1일 기준 5,000원~<br />
									<br />
									휴차보상료 별도 부과
								</td>
								<td>최대 70% 할인<br />(주중/주말/심야 할인)</td>
							</tr>
						
						</tbody>
						</table>
<!--                        <p class="centerBtn">
							<a href="#"><img src="/template/mypage/../asset/images/mypage/btn_change.gif" alt="회원제 변경하기" /></a>
						</p> -->
					</div>
					
				

				
					<div class="group">
						<h3><img src="/template/mypage/../asset/images/mypage/index_txt12.gif" alt="회원탈퇴" /></h3>
						<div class="gbx">
							<div style="margin-bottom: 3px;">쏘카를 이용하시는데 불편함이 있으셨나요?</div>
							<ul>
								<li>이용 불편 및 문의사항은 고객센터 1:1문의에 남겨주시면 답변드리겠습니다.</li>
							</ul>
						</div>

						<p class="centerBtn">
							<a id="btn_user_drop" href="#" class="">
								<img src="/template/mypage/../asset/images/mypage/btn_leave.gif" alt="탈퇴하기" />
							</a>
						</p>

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

// function showLoginLayer(alertMessage, redirect_to, redirect_data) {
// 	if ( redirect_to ) $('#mwCont .login #redirect').val( redirect_to );
// 	if ( typeof redirect_data == 'object' ) {
// 		$('#mwCont .login #redirect_data').val( JSON.stringify(redirect_data) );
// 	}

// 	if(alertMessage) alert('로그인이 필요합니다.');
// 	$('#header .util1').click();
// }

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
// $('.require_login').click(function(){
// 	if ( $(this).data('href') ) {
// 		showLoginLayer(true, $(this).data('href') );
// 	} else {
// 		showLoginLayer(true);
// 	}
// });

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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505264771" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505264771" charset="utf-8"></script>


			<!-- mobile -->
			<div class="mobile mypage mwCont">
				<form name="mobile" method="post" action="">
					<fieldset>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_mobile_title.gif" alt="휴대폰번호 변경" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="/template/mypage/../asset/images/member/join_step2_txt8.gif" alt="휴대폰 번호" /></th>
								<td>
									<input id="layer_phone_num" type="text" class="input" style="width:115px" />
									<input id="layer_phone_request" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_mobile.gif" alt="인증번호 전송" />
								</td>
							</tr>
							<tr>
								<th><img src="/template/mypage/../asset/images/member/join_step2_txt9.gif" alt="인증번호" /></th>
								<td>
									<input id="layer_confirm_num" type="text" class="input" style="width:115px" />
								</td>
							</tr>
							</table>
						</div>
						<p class="txt">명의도용 방지를 위하여 휴대폰 소유 확인 및 인증이 필요합니다.</p>

						<p class="centerBtn">
							<input id="layer_btn_phone" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" alt="확인" />
							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //mobile -->

			<!-- password -->
			<div class="passwordL mypage mwCont">
				<form name="password" method="post" action="">
					<fieldset>
						<h3><img src="/template/mypage/../asset/images/mypage/ly_password_title.gif" alt="비밀번호 변경" /></h3>
						<div class="bx">
							<table cellspacing="0">
							<tr>
								<th><img src="/template/mypage/../asset/images/member/join_step2_txt6.gif" alt="비밀번호" /></th>
								<td>
									<input id="layer_passwd1" type="password" class="input" style="width:155px" />
								</td>
							</tr>
							<tr>
								<th><img src="/template/mypage/../asset/images/member/join_step2_txt7.gif" alt="비밀번호 확인" /></th>
								<td>
									<input id="layer_passwd2" type="password" class="input" style="width:155px" />
								</td>
							</tr>
							</table>
						</div>
						<p class="txt">6-20자리의 영문, 숫자만 사용할 수 있습니다.</p>

						<p class="centerBtn">
							<input id="layer_btn_passwd" type="image" src="/template/mypage/../asset/images/mypage/btn_ly_confirm.gif" onclick="return false;" alt="확인" />
							<a href="#" class="close"><img src="/template/mypage/../asset/images/mypage/btn_ly_cancel.gif" alt="취소" /></a>
						</p>
					</fieldset>
				</form>
			</div>
			<!-- //password -->
			<!-- driver license -->
			<div class="licenseL mypage mwCont">
				<h3><img src="/template/mypage/../asset/images/mypage/ly_license_title.gif" alt="운전면허 정보 변경" /></h3>
				<p class="txt">운전면허 정보 변경이 완료되었습니다.<br />
				<p class="txt">운전면허 정보 진위 여부 확인 후 차량 예약이 가능합니다.<br />확인은 1-3일 소요됩니다.</p>
				<p class="txt">바로 서비스를 이용하셔야 하면, <em>고객센터 1661-3315</em>로 <br />문의해주세요.</p>
				<p class="centerBtn">
					<a href="#" class="close"><img src="/template/mypage/../asset/images/common/btn_close.gif" alt="닫기" /></a>
				</p>
			</div>
			<!-- //driver license -->
			<a href="#" class="close">닫기</a>
		</div>
	</div>
<!-- 결제카드등록 레이어-->
<style type="text/css">
.member_card_layer {display:none;position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:10000;}
.open {display:block;}
.member_card_layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.7;-moz-opacity:.7;filter:alpha(opacity=70);}
.member_card_layer .layer_area {overflow:hidden;position:absolute;left:50%; top:50%;width:324px;height:440px;padding:40px;background:url('${pageContext.request.contextPath}/template/image/bg_card_info_nice.png')0 0 no-repeat;}
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
.member_card_layer .layer_area .more .list_link a:hover {display:inline-block;padding-left:25px;font-size:12px;line-height:23px;color:#00b7ff;text-decoration:underline;background:url('${pageContext.request.contextPath}/template/image/dot_member_card.png')0 0 no-repeat;}
.member_card_layer .layer_area .more .btn {padding:15px 0 12px;text-align:center;}
.member_card_layer .layer_area .btn_close {position:absolute;top:20px;right:20px;}
</style>

	
	<div class="member_card_layer">
		<div class="bg"></div>
		<div id="member_card_layer" class="layer_area">
			<div class="tit"><img src='${pageContext.request.contextPath}/template/image/tit_member_card1.png' alt="결제카드 등록" /></div><br/>
			
			<div class="list_dl">
				<dl>
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card3.png' alt="카드종류" /></dt>
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
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card4.png' alt="카드번호" /></dt>
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
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card5.png' alt="유효기간" /></dt>
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
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card10.png' id="birth" /></dt>
					<dd>
						<input type="text" id="rear_ssn_card" class="inp_cardnum width73" placeholder="6자리 입력" maxlength="6" />
						<span class="txt"></span>
					</dd>
				</dl>
				<dl id="cnumber" style="display:none;">
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card6.png' id="사업자번호" /></dt>
					<dd>
						<input type="text" class="inp_cardnum" id="corp_num_01" maxlength="3" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="corp_num_02" maxlength="2" />
						<span class="txt_bar">-</span>
						<input type="text" class="inp_cardnum" id="corp_num_03" maxlength="5" />
					</dd>
				</dl>
				<dl id="pwd_dl">
					<dt><img src='${pageContext.request.contextPath}/template/image/tit_member_card7.png' id="비밀번호" /></dt>
					<dd>
						<input type="password" id="card_pw" class="inp_cardnum width56" placeholder="앞2자리" maxlength="2" /> **
					</dd>
				</dl>
			</div>
			<div class="more">
				<div class="check">
					<input type="checkbox" class="inp_check" id="is_card_agree" />
					<label for="checkbox" class="lab_check"><img src='${pageContext.request.contextPath}/template/image/tit_member_card8.png' alt="아래 약관 내용에 모두 동의합니다." /></label>
				</div>
				<ul class="list_link">
					<li><a href="https://www.socar.kr/bill_terms_all" target="_blank">정기과금 이용약관</a></li>
				</ul>
				<div class="btn"><a href="#" id="register_card"><img src='${pageContext.request.contextPath}/template/image/btn_member_card.png' alt="결제카드 등록완료" /></a></div>
			</div>
			<a href="#" id="btnClose" class="btn_close"><img src='${pageContext.request.contextPath}/template/image/close_member_card.png' alt="닫기" /></a>
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
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src='/template/asset/images/daum_close.png' id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1;width:20px;height:20px;" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
<script>
	// 우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('layer');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}

	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete: function(data) {
				var fullAddr = data.jibunAddress;

				// 사용자가 도로명 주소를 선택
				if(data.userSelectedType === 'R'){
					var extraAddr = ''; // 조합형 주소 변수

					fullAddr = data.roadAddress;

					// 법정동명이 있을 경우 추가
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				}

				// 우편번호와 주소 및 영문주소 정보를 해당 필드에 넣는다.
				$('#zip').val(data.zonecode);								//신 국가기초구역번호
				$('#zip').parent().find('label').css('display', 'none');
				$('#address').val(fullAddr);
				$('#addr1').val(fullAddr);
				$('#address').parent().find('label').css('display', 'none');
				// iframe을 넣은 element를 안보이게 한다.
				element_layer.style.display = 'none';
			},
			width : '100%',
			height : '100%'
		}).embed(element_layer);

		// iframe을 넣은 element를 보이게 한다.
		element_layer.style.display = 'block';

		// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		initLayerPosition();
	}

	// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	function initLayerPosition(){
		var width = 600; //우편번호서비스가 들어갈 element의 width
		var height = 460; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께

		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	}
</script>

</body>
</html>