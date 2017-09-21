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
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.banner.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/ssun.js?1505958998"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/json3.min.js?1505958998"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/common.js?1505958998"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/day-picker.js?1505958998"></script>
		<script type="text/javascript" src="//web-assets.socar.kr/template/asset/js/jquery.block.ui.min.js?1505958998"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href="//web-assets.socar.kr/template/member/../asset/css/member.css?v=20170731" />

<script type="text/javascript">
function is_email(a){return /^([\w!.%+\-])+@([\w\-])+(?:\.[\w\-]+)+$/.test(a);}
$(function(){

	$('body').keydown(function(event) {
		if (event.which == 13) {
		if($('#search_zip').is(':hidden') == false) {
			$('#search_zip').click();
		}
			event.preventDefault();
		}
	});

	$('#email_select').change(function(){
		var val = $(this).val();
		if(val == 'null'){
			val = "";
		}

		$('#email2').val(val);

		return false;
	});



	$("input:radio[name='selbox_joinway']").bind('click', function() {
		var selected = $(this).val();

		if(selected == '제휴단체'){
			$("#route1").val('').prop('disabled',false);
			$("#route2").val('').prop('disabled',true);
		}
		else if(selected == '친구추천'){
			$("#route1").val('').prop('disabled',true);
			$("#route2").val('').prop('disabled',false);
		}
		else{
			$("#route1").val('').prop('disabled',true);
			$("#route2").val('').prop('disabled',true);
		}
	});



    $('#selbox_experience').bind('click', function () {
        var selected = $(this).val();

        if(selected == '있음'){
            $('#experience_etc').css('display', 'inline');
        }
        else if(selected == '없음' || selected == ''){
            $('#experience_etc').css('display', 'none');
        }
    });

    $('#next').bind('click', function () {
        if(!is_email($.trim($('#email1').val()) + '@' + $.trim($('#email2').val()))){
            alert('이메일 형식이 잘못되었습니다. 다시 입력해 주세요.');
            $('#email1').val('').focus();
            return false;
        }

        if($('#phone2').val() == '' || $('#phone3').val() == ''){
            alert('휴대폰번호를 입력해 주세요.');
            $('#phone3').val('');
            $('#phone2').val('').focus();
            return false;
        }
        if($('#auth_num').val() == ''){
            alert('인증번호를 입력해 주세요.');
            $('#auth_num').focus();
            return false;
        }
        if($('#addr1').val() == '' || $('#addr2').val() == ''){
            alert('주소를 입력해 주세요.');
            return false;
        }
		
        $.ajax({
        	type:'POST',
        	url : "<c:url value='/Member/CreateMem.do' />"
        	
        	
        });
        
    });/////////////////////////////////////////////////////////////

	$('#search_zip').bind('click', function (e) {
		$.ajax({
			type: 'GET',
			url: "https://api.socar.kr/user/zipcode",
			crossDomain: true,
			data: { search: $('#search_input').val() },
			dataType: 'jsonp',
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
							+ '</a></td></tr>'
						);
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
						return false;
					});
				}
				else{
					alert(json['retMsg']);
				}
			},
			error: function(){
				alert('일시적인 오류가 발생했습니다. 잠시 후 다시 시도해주세요.');
			}
		}); // $.ajax({})

		return false;
	}); // $('#search_zip').bind('click')

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

	$("#selbox-job").change(function() {
		var val = $("#selbox-job").val();

		if($.trim(val) == '기타') {
			$("#etc-job-w").css('display','');
		}
		else{
			if( $("#etc-job-w").css('display') != 'none' ) {
				$("#etc-job").val('').parent().css('display','none');
			}
		}

		return false;
	});

	$("#selbox-path").change(function() {
		var val = $.trim($("#selbox-path").val());

		if(val == '언론보도') {
			$("#media").css('display','');
			$("#portal").css('display','none');
			$("#etc-path-w").css('display','none');
		}
		else if(val == '검색') {
			$("#media").css('display','none');
			$("#portal").css('display','');
			$("#etc-path-w").css('display','none');
		}
		else if(val == '기타') {
			$("#media").css('display','none');
			$("#portal").css('display','none');
			$("#etc-path-w").css('display','');
		}
		else{
			$("#media").css('display','none');
			$("#portal").css('display','none');
			$("#etc-path-w").css('display','none');
		}

		$("#media4-txt").val('');
		$("#portal4-txt").val('');
		$("#etc-path").val('');

		return false;
	});

	$(':radio[name="media"],:radio[name="portal"],:radio[name="channel2"]').bind('click', function() {
		var val = $.trim($(this).val());

		if( val == '직접입력' ) {
			$(this).parent().next().prop('readonly',false).focus();
		}
		else {
			var name = $.trim($(this).attr('name'));

			if( name == 'media') {
				$("#media4-txt").val('').prop('readonly',true);
			}
			else if( name == 'portal' ) {
				$("#portal4-txt").val('').prop('readonly',true);
			}
			else {
				$("#exp4-txt").val('').prop('readonly',true);
			}
		}
	});
	$('#portal4-txt,#media4-txt,#exp4-txt').click(function() {
		$(this).prev().children(':radio').trigger('click');
		$(this).prop('readonly',false).focus();
	});
});
</script>
</head>
<body id="member" class="join step2">
<div id="wrap">
	<jsp:include page="/template/Header.jsp" />

	<div id="container">
		<div id="content">
			<h2><img src="/template/member/../asset/images/member/join_h2.gif" alt="회원가입" /></h2>
			<h3 class="box shadow stepType stepType1 step2">회원정보 입력</h3>

			<div class="boxL">
				<form name="join" method="post" action="">
					<fieldset>
						<div class="section">
							<h4><img src="/template/member/../asset/images/member/join_step2_txt1.gif" alt="회원정보" /></h4>
							<p class="required">
								<em class="star" title="필수항목"></em> <img src="/template/member/../asset/images/member/join_step2_txt2.gif" alt="표시된 항목은 필수항목이므로 반드시 입력해주시기 바랍니다." />
							</p>
							<table cellspacing="0" class="rows">
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step2_txt3.gif" alt="이름" /></th>
								<td id="user_name">${dto.smem_name}</td>
							</tr>
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step2_txt8.gif" alt="휴대폰 번호" /></th>
								<td>
									${dto.smem_tel}
								</td>
							</tr>
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step2_txt5.gif" alt="아이디 (이메일)" /> <em class="star" title="필수항목"></em></th>
								<td>
									<input readonly id="email1" type="text" class="input read_only" value="${fn:split(dto.smem_id,'@')[0]}" style="width:108px" /> @
									<input readonly id="email2" type="text" class="input read_only" value="${fn:split(dto.smem_id,'@')[1]}" style="width:108px" />
									<p class="tip mt10">입력한 이메일주소를 아이디로 사용합니다.<br />중요 서비스 공지 및 결제내역 안내메일이 발송될 수 있으므로 본인소유의 이메일만 입력해주세요.</p>
								</td>
							</tr>
						
							<tr>
								<th><img src="/template/member/../asset/images/member/join_step2_txt10.gif" alt="주소" /> <em class="star" title="필수항목"></em></th>
								<td>
									<input id="zip" type="text" class="input" style="width:35px" value="" disabled="disabled" />
									<a href="#" id="execDaumPostcode" onclick="javascript:execDaumPostcode();" class="btnS"><span>우편번호</span></a>
									<p class="mt5">
										<input id="addr1" type="text" class="input" style="width:240px" value="" disabled="disabled" />
										<input id="addr2" type="text" class="input" style="width:240px" />
									</p>
									<p class="tip mt10">위 주소로 회원카드를 발송합니다. 반드시 우편물 수취가 가능한 주소를 입력해주세요.</p>
								</td>
							</tr>
							<tr>
							<th><img src="/template/member/../asset/images/member/join_step2_txt24.gif" alt="주 사용지역" /></th>
								<td>
									<label for="loc1">
										<input type="radio" id="loc1" name="loc" value="서울" checked="true"/> 서울
									</label>
									<!-- 경기/인천 추가 -->
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
									<!-- 대전/충북 추가 -->
									<label for="loc6">
										<input type="radio" id="loc6" name="loc" value="대전충청" /> 대전·충청
									</label>
									<!-- 광주/전라 추가 -->
									<label for="loc7">
										<input type="radio" id="loc7" name="loc" value="광주전라" /> 광주·전라
									</label>
									<label for="loc2">
										<input type="radio" id="loc2" name="loc" value="제주" /> 제주
									</label>
								</td>
							</tr>
							</table>
						</div>
<!-- 						<div class="section"> -->
<!-- 							<h4><img src="/template/member/../asset/images/member/join_step2_new01.gif" alt="프로모션 가입"></h4> -->
<!-- 							<table cellspacing="0" class="rows"> -->
<!-- 								<tbody> -->
<!-- 									<tr> -->
<!-- 										<th><img src="/template/member/../asset/images/member/join_step2_new02.gif" alt="가입경로"></th> -->
<!-- 										<td> -->
<!-- 											<input type="radio" id="normal_join" name="selbox_joinway" value="" class="inp_radio" checked="checked" /> -->
<!-- 											<label for="normal_join" class="lab_radio">일반가입</label> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<th></th> -->
<!-- 										<td> -->
<!-- 											<input type="radio" id="promotion_join" name="selbox_joinway" value="제휴단체" class="inp_radio" /> -->
<!-- 											<label for="promotion_join" class="lab_radio">프로모션 코드</label> -->
<!-- 											<input id="route1" type="text" class="input" style="width:185px" disabled="disabled"> -->
<!-- 											<span class="tip ml10">안내 받은 프로모션 코드 전체를 올바르게 입력하셔야만 혜택이 적용됩니다.</span> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 									<tr> -->
<!-- 										<th></th> -->
<!-- 										<td> -->
<!-- 											<input type="radio" id="friend_join" name="selbox_joinway" value="친구추천" class="inp_radio" /> -->
<!-- 											<label for="friend_join" class="lab_radio">친구 추천</label> -->
<!-- 											<input id="route2" type="text" class="input" style="width:185px" disabled="disabled"> -->
<!-- 											<span class="tip ml10">친구 아이디(이메일) 전체를 올바르게 입력하셔야만 혜택이 적용됩니다.</span> -->
<!-- 										</td> -->
<!-- 									</tr> -->
<!-- 								</tbody> -->
<!-- 							</table> -->
<!-- 						</div> -->
<!-- 						<div class="section"> -->
<!-- 							<h4><img src="/template/member/../asset/images/member/join_step2_new03.gif" alt="부가정보" /></h4> -->
<!-- 							<table cellspacing="0" class="rows"> -->
<!-- 							<tr> -->
<!-- 								<th><img src="/template/member/../asset/images/member/join_step2_new04.gif" alt="직업" /></th> -->
<!-- 								<td> -->
<!-- 									<select id="selbox-job" name="selbox-job" style="width:108px"> -->
										<!-- <option value="" selected="selected">선택해주세요</option>
										<option value="회사원">회사원</option>
										<option value="자영업">자영업</option>
										<option value="학생">학생</option>
										<option value="주부">주부</option>
										<option value="기타">기타</option>-->
<!-- 									</select> -->
<!-- 									<span id="etc-job-w" style="display:none;"> -->
<!-- 										<input id="etc-job" name="etc-job" type="text" class="input" style="width:165px" value="" /> -->
<!-- 									</span> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr id="selbox-path-tr"> -->
<!-- 								<th><img src="/template/member/../asset/images/member/join_step2_new05.gif" alt=""></th> -->
<!-- 								<td> -->
<!-- 									<select id="selbox-path" name="selbox-path" style="width:108px"> -->
										<!-- <option value="" selected="selected">선택해주세요</option>
										<option value="TV광고">TV광고</option>
										<option value="온라인동영상광고">온라인 동영상 광고</option>
										<option value="지하철버스광고">지하철·버스 광고</option>
										<option value="극장광고">극장광고</option>
										<option value="기타광고">기타광고</option>
										<option value="지인의소개">지인의 소개</option>
										<option value="페이스북">페이스북</option>
										<option value="쏘카차량및쏘카존목격">쏘카 차량 및 쏘카존 목격</option>
										<option value="언론보도">언론보도</option>
										<option value="검색">검색</option>
										<option value="기타">기타</option> -->
<!-- 									</select> -->
<!-- 									언론보도 선택시 -->
<!-- 									<span class="ml10" id="media" style="display:none;"> -->
<!-- 										<label for="media1"> -->
<!-- 											<input type="radio" id="media1" name="media" value="구독신문" checked="true" /> 구독신문 -->
<!-- 										</label> -->
<!-- 										<label for="media2"> -->
<!-- 											<input type="radio" id="media2" name="media" value="온라인뉴스" /> 온라인뉴스 -->
<!-- 										</label> -->
<!-- 										<label for="media3"> -->
<!-- 											<input type="radio" id="media3" name="media" value="TV방송" /> TV방송 -->
<!-- 										</label> -->
<!-- 										<label for="media4" class="no_margin"> -->
<!-- 											<input type="radio" id="media4" name="media" value="직접입력" /> 직접입력 -->
<!-- 										</label> -->
<!-- 										<input type="text" id="media4-txt" name="media4-txt" style="width:165px" class="input" readonly="readonly" /> -->
<!-- 									</span> -->
<!-- 									검색 선택시 -->
<!-- 									<span class="ml10" id="portal" style="display:none;"> -->
<!-- 										<label for="portal1"> -->
<!-- 											<input type="radio" id="portal1" name="portal" value="네이버" checked="true" /> 네이버 -->
<!-- 										</label> -->
<!-- 										<label for="portal2"> -->
<!-- 											<input type="radio" id="portal2" name="portal" value="다음" /> 다음 -->
<!-- 										</label> -->
<!-- 										<label for="portal3"> -->
<!-- 											<input type="radio" id="portal3" name="portal" value="구글" /> 구글 -->
<!-- 										</label> -->
<!-- 										<label for="portal4" class="no_margin"> -->
<!-- 											<input type="radio" id="portal4" name="portal" value="직접입력" /> 직접입력 -->
<!-- 										</label> -->
<!-- 										<input type="text" id="portal4-txt" name="portal4-txt" style="width:165px" class="input" readonly="readonly" /> -->
<!-- 									</span> -->
<!-- 									기타 선택시 -->
<!-- 									<span id="etc-path-w" style="display:none;"> -->
<!-- 										<input id="etc-path" name="etc-path" type="text" class="input" style="width:165px" value="" /> -->
<!-- 									</span> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 							<th><img src="/template/member/../asset/images/member/join_step2_new06.gif" alt="카셰어링 이용경험" /></th> -->
<!-- 								<td> -->
<!-- 									<select id="selbox_experience" style="width:108px"> -->
										<!-- <option value="" selected="selected">선택해주세요</option>
										<option value="있음">있음</option>
										<option value="없음">없음</option> -->
<!-- 									</select> -->
<!-- 									<div id="experience_etc" style="display:none;"> -->
<!-- 										<label for="exp1" class="ml10"> -->
<!-- 											<input type="radio" id="exp1" name="channel2" value="그린카" checked="true"/> 그린카 -->
<!-- 										</label> -->
<!-- 										<label for="exp2"> -->
<!-- 											<input type="radio" id="exp2" name="channel2" value="KT카셰어링" /> KT카셰어링 -->
<!-- 										</label> -->
<!-- 										<label for="exp3"> -->
<!-- 											<input type="radio" id="exp3" name="channel2" value="씨티카 " /> 씨티카 -->
<!-- 										</label> -->
<!-- 										<label for="exp4" class="no_margin"> -->
<!-- 											<input type="radio" id="exp4" name="channel2" value="직접입력" /> 직접입력 -->
<!-- 										</label> -->
<!-- 										<input type="text" id="exp4-txt" name="exp4-txt" style="width:165px" class="input" readonly="readonly" /> -->
<!-- 									</div> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							</table> -->
<!-- 						</div> -->
						<div class="centerBtn">
							<input id="next" type="image" src="//web-assets.socar.kr/template/member/../asset/images/member/new/btn_next.gif" alt="다음단계 (면제/결제정보 입력)" />
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
<jsp:include page="/template/FindingIdPw.jsp"/>
<!-- finding pw -->

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
		auth_token : '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
				auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
			auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
			auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
			auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
				auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
				auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
				auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
			auth_token: '980f5efca2d62f2a8b1252f4a18afc01eb3d7460ekizg',
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
<script type="text/javascript" src="/template/./asset/js/kakao.min.js?1505958998" charset="utf-8"></script>
<script type="text/javascript" src="/template/./asset/js/sns_interlocking.js?1505958998" charset="utf-8"></script>


			<a href="#" class="close">닫기</a>
		</div>
	</div>
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