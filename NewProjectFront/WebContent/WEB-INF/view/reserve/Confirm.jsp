<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<!--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"> -->






<meta name="description"
	content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료 " />
<meta name="keywords" content="서울,제주,부산,경기,인천,카셰어링,카쉐어링,렌트,렌트카,렌터카" />
<meta name="title" content="대한민국 1등 카셰어링 쏘카">

<meta property="og:type" content="website">
<meta property="og:title" content="대한민국 1등 카셰어링 쏘카">
<meta property="og:description"
	content="내 주변 3분거리에서 원하는 시간 만큼 타면된다 쏘카! 신규 가입 시 3시간 무료">
<meta property="og:image"
	content="https://www.socar.kr/template/asset/images/pc_m_web_meta_tag.jpg">
<meta property="og:url" content="https://www.socar.kr/">

<!-- 유투브 랜딩 연결 -->
<meta name="google-site-verification"
	content="HINSnUVovAF2J7CwA3dQ9lqhGBKgkbZ5-cNvG3qazY4" />
<!-- 네이버 사이트 확인 -->
<meta name="naver-site-verification"
	content="070f0a98381321c1dbe5b675366712f03d6681d1" />

<link href='//web-assets.socar.kr/template/asset/images/favicon.ico'
	type="image/x-icon" rel="icon">
<link href='//web-assets.socar.kr/template/asset/images/favicon.ico'
	type="image/x-icon" rel="shortcut icon">
<link
	href='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20170428'
	rel="image_src" />

<!-- 2016/07/15 수정
		<title>카셰어링 쏘카 - So Smart, SOCAR</title>
		-->



<title>대한민국 1등 카셰어링 쏘카</title>

<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.js"></script> -->
<script type="text/javascript"
	src="/template/asset/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/template/asset/js/jquery.banner.js"></script>
<script type="text/javascript" src="/template/asset/js/jquery.cookie.js"></script>
<script type="text/javascript"
	src="/template/asset/js/ssun.js?1505974111"></script>
<script type="text/javascript"
	src="/template/asset/js/json3.min.js?1505974111"></script>
<script type="text/javascript"
	src="/template/asset/js/common.js?1505974111"></script>
<script type="text/javascript"
	src="/template/asset/js/day-picker.js?1505974111"></script>
<script type="text/javascript"
	src="/template/asset/js/jquery.block.ui.min.js?1505974111"></script>
<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css"
	href='//web-assets.socar.kr/template/asset/css/reservation.css?v=20170731' />
<script type="text/javascript">
var winOpen = null;
var $org_price = 1870;
var $price_ret = 0;
var $t_point = 0;
var $protectionFeeSelect = null;
var $protectionFeePrice = null;
var discountType = 'coupon';

$(function(){
	$(window).unload(function() {
		if(winOpen != null) winOpen.close();
	});
	$('#selbox_coupon').bind('change', function () {
		var selected = $(this).val();
		var data     = selected.split(',');
		var option_selected = $("#selbox_coupon option:selected");
		var protectionFee = getProtectionFee();
		$('#js-t-membership-value').hide();

		// 분기 처리에 의해 pf_discount_percent element가 추가됐다면 data.length === 5
		var pfDiscountPercent = data.length === 5 ? data[data.length - 1] : 0;
		var discountedProtectionFee = pfDiscountPercent
			? protectionFee * (pfDiscountPercent/100)
			: 0;

		if (selected == '') {
			var dis_price = parseInt($org_price) + parseInt($price_ret);
			$('.total_price').text(number_format(dis_price + protectionFee));
			return;
		} else {
			if(!option_selected.hasClass('applicable')) {
				alert("죄송합니다. 이 예약에는 사용할 수 없는 쿠폰입니다.\n쿠폰의 사용조건을 확인해 주세요.");
				$(this).val('').change();
				return;
			}

			
			var dis_price = parseInt($org_price) - parseInt(data[1]) + parseInt($price_ret) + protectionFee - discountedProtectionFee;
			
			$('#js-t-membership-value').show().text('-' + number_format(parseInt(data[1]) + discountedProtectionFee) + '원');
			$('.total_price').text(number_format(dis_price));
		}
	});

  $('#btn_reserve').bind('click', function (event) {
		
			
				var isRsrvAgreed = $('#js-reserve-confirm').is(':checked');
				var isEvCar = 'GASOLINE' === 'EV';
				var isEvCarAgreed = $('#js-ev-confirm').is(':checked');

				if(!isRsrvAgreed) {
					alert('쏘카대여약관과 이용약관을 숙지한것에 동의 해야합니다.');
					$('#js-reserve-confirm').focus();
					return false;
				}

				if (isEvCar && !isEvCarAgreed) {
					alert('전기차 반납 주의사항을 읽고 동의해 주세요.');
					$('#js-ev-confirm').focus();
					return false;
				}

				var zone_id = $(this).next().text();
				var car_id = $(this).next().next().text();
				var selected = $('#selbox_coupon').val().split(',');
        var membership = [];

        $('input.js-input-four-digit').each(function() { membership.push(this.value); });
        var t_membership = membership.join('');

				// spock 쿠폰 코드 632일때 얼럿창 발생
				if(632 == selected[2] || 664 == selected[2]){
					var msg = "얼리쏘친 예약의 경우 다음날 오전 12시에 선결제되며\n결제 이후 취소하면 위약금 30%가 부과됩니다.\n위 내용에 동의하시면 [확인] 버튼을 눌러주세요.";
					var result = confirm(msg);
					if(false == result){
						return false;
					}
				}

				var now_time = new Date().getTime();
				var start_time = new Date('2017-09-21T18:30:00+09:00').getTime();

				if(start_time - now_time < 60 * 10 * 1000){
					if(!confirm('예약과 동시에 결제가 진행됩니다.\n지금 바로 쏘카이용을 원하신다면 [확인]을 눌러주세요.')) {
						return false;
					}
				}

				set_cookie('complete_way', 'round');
				set_cookie('complete_start_at', '2017.09.21 목 18:30');
				set_cookie('complete_end_at', '2017.09.21 목 19:00');
				set_cookie('complete_car_name', '레이');
				set_cookie('complete_car_num', '20호8341');
				set_cookie('complete_rent_time', '0시간 30분');
				set_cookie('complete_zone_name', '서울경수초교 뒤');
				set_cookie('complete_zone_address', '서울시 성동구 성수동2가 255-7');
				set_cookie('complete_zone_props', '0');
				

				$.doPost('https://www.socar.kr/reserve/complete', {
					way: 'round',
				
					zone_id: zone_id,
				
					start_at: '2017-09-21T18:30:00+09:00',
					end_at: '2017-09-21T19:00:00+09:00',
					coupon_code: selected[0],
          discount_type: discountType,
				
          deductible_type: $protectionFeeSelect.val(),
				
					car_id: car_id,
				  
					billing_id: $("#selbox_card").val()
				  
				});
			
		

		return false;
	});

	/* oil */
	$(".oil").click(function(){
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

	$("#couponbook").click(function() {
		if(winOpen == null ||(winOpen != null && winOpen.closed)) {
			winOpen = window.open('https://www.socar.kr/couponbook', 'couponbook', 'menubar=no, toolbar=no, scrollbars=yes, resizable=yes');
		}
		winOpen.focus();
		return false;
	});

	$("#add_card").click(function() {
		if(winOpen == null ||(winOpen != null && winOpen.closed)) {
			winOpen = window.open('https://www.socar.kr/mypage', 'mypage', 'menubar=no, toolbar=no, scrollbars=yes, resizable=yes');
		}
		winOpen.focus();
		return false;
	});
})

function remakeCouponList() {
	var way			= 'round',
		start_at	= '2017-09-21T18:30:00+09:00',
		end_at		= '2017-09-21T19:00:00+09:00',
		oneway_id	= '0',
		zone_id		= '5223',
		car_id		= '3818';

	$.ajax({
		url: 'https://api.socar.kr/reserve/coupon',
		crossDomain: true,
		data: {
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
			way : way,
			start_at : start_at,
			end_at : end_at,
		
			zone_id : zone_id,
		
			car_id : car_id
		},
		type: 'POST',
		dataType: 'jsonp',
		beforeSend: function(xhr){
			$("#selbox_coupon:first").text("쿠폰을 가져오는 중입니다..");
		},
		success: function(data) {
			var result	= data['result'],
				rlen	= result.length,
				$selbox	= $("#selbox_coupon"),
				noption = "<option value=\"\" selected=\"selected\">쿠폰선택</option>";

			if(rlen > 0) {
				if($("#no-coupon").length > 0) {
					$("#no-coupon").remove();
					$selbox.css('display', '');
				}

				for(var i=0; i < rlen; i++) {
					noption += "<option value=\"" + result[i]['code'] + "," + result[i]['discount_table']['total_paid']+"," + result[i]['policy_id'] + "," + result[i]['charged_discount_target'] + "\" class=\"" +
							result[i]['applicable'] + "\">" + result[i]['name'] + "</option>";
				}
			}
			else {
				if($("#no-coupon").length == 0) {
					var nocoupon = "<div id=\"no-coupon\">적용 가능한 쿠폰이 없습니다.</div>";
					$(nocoupon).insertBefore('#selbox_coupon');
					$selbox.css('display','none');
				}
			}

			$selbox.empty().html(noption);
		},
		error: function(){
			alert('일시적으로 쿠폰정보 생성에 문제가 발생하였습니다. 다시 시도해주세요. 계속해서 동일한 문제가 발생 시 고객센터로 문의바랍니다. A107');
		}
	});

	return false;
}

function remakeCardList() {
	$.ajax({
		url: 'https://api.socar.kr/user/get_card_info_ex',
		crossDomain: true,
		data: {
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
		},
		type: 'POST',
		dataType: 'jsonp',
		beforeSend: function(xhr){
			$("#selbox_card:first").text("결제카드 목록을 가져오는 중입니다..");
		},
		success: function(res) {
			var result	= res['result']['data'],
				rlen	= result.length,
				$selbox	= $("#selbox_card"),
				selopt = "<option value=\"\" selected=\"selected\">등록된 결제카드가 없습니다.</option>";

			if(rlen > 0) {
				selopt = '';

				for(var i=0; i < rlen; i++) {
					var card_name = result[i]['card_name'];

					if($.trim(result[i]['card_type']) != ''){
						card_name += " / " + $.trim(result[i]['card_type']);
					}
					card_name += '카드';

					selopt += "<option value='" + result[i]['card_id'] + "'>" + card_name + "</option>";
				}
			}

			$selbox.empty().html(selopt);
		},
		error: function(){
			alert('일시적으로 카드정보 생성에 문제가 발생하였습니다. 다시 시도해주세요. 계속해서 동일한 문제가 발생 시 고객센터로 문의바랍니다. A107');
		}
	});

	return false;
}
</script>
</head>

<body id="reservation" class="payment">
	<div id="wrap">
		<!-- header -->
		<div id="header-wrapper">
			<div id="header">
				<h1>
					<a href=https://www.socar.kr /><img width="80"
						src='//web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20160823'
						alt="SOCAR" /></a>
				</h1>

				<ul class="gnb">
					<li><a href=https://www.socar.kr/guide class="gnb1"
						title="서비스안내">서비스안내</a></li>
					<li><a href=https://www.socar.kr/fare class="gnb3"
						title="요금안내">요금안내</a></li>
					<li><a href=https://www.socar.kr/company class="gnb7"
						title="법인/단체안내">법인/단체 안내</a></li>
					<li><a href=https://www.socar.kr/notice class="gnb4"
						title="고객센터">고객센터</a></li>


					<li><a href=https://www.socar.kr/mypage class="gnb5"
						title="마이페이지">마이페이지</a></li>


					<li><a href=https://www.socar.kr/reserve class="gnb6"
						title="쏘카 찾기·예약">쏘카 찾기·예약</a></li>
				</ul>

				<div class="util">

					<p class="hi-seoul">
						<a href=https://www.socar.kr/hi-seoul><img
							src='//web-assets.socar.kr/template/asset/images/common/header_car_sharing_n.gif'
							alt="공유서울 나눔카" /></a>
					</p>


					<ul>
						<li><a href=https://www.socar.kr/mypage class="util3">임형택
								님</a></li>
						<li><a href=https://www.socar.kr/user/logout class="util4"
							title="로그아웃">로그아웃</a></li>
					</ul>

				</div>
			</div>
		</div>
		<!-- //header -->

		<div id="container">
			<div id="content">
				<div class="box">
					<h2>
						<img
							src='//web-assets.socar.kr/template/asset/images/reservation/payment_h2.gif'
							alt="쏘카 예약 확인/결제" />
					</h2>

					<div class="section reserve-confirm">

						<div class="group">
							<h3>
								<img
									src='//web-assets.socar.kr/template/asset/images/reservation/payment_h3_1.gif'
									alt="예약내역" />
							</h3>
							<table cellspacing="0">
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt1.gif'
										alt="차량" /></th>

									<td>레이 <strong>월리</strong>
									<!-- <a href="#" class="carDetail">상세정보</a> --></td>

								</tr>
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt2.gif'
										alt="일정" /></th>
									<td>왕복 / 2017.09.21 목 18:30 - 2017.09.21 목 19:00</td>
								</tr>
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt3.gif'
										alt="이용시간" /></th>
									<td>총 0시간 30분</td>
								</tr>

								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt4.gif'
										alt="쏘카존" /></th>
									<td>서울경수초교 뒤 <!-- <a href="#" class="socarzoneDetail">상세정보</a> --></td>
								</tr>
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt5.gif'
										alt="위치" /></th>
									<td>서울시 성동구 성수동2가 255-7</td>
								</tr>

							</table>
						</div>
						<div class="group gd">
							<h3>
								<img
									src='//web-assets.socar.kr/template/asset/images/reservation/payment_h3_2.gif'
									alt="결제 내역" />
							</h3>
							<table cellspacing="0">
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt6.gif'
										alt="대여요금" /></th>
									<td><strike>3,750원</strike> → <strong>1,870</strong>원&nbsp;(50.1%↓)


									</td>
								</tr>


								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt15.png'
										alt="보험료" /></th>
									<td>
										<!-- PROTECTION FEE SELECTIONS -->
										<div class="" id="">
											<select id="js-protection-fee-select" style="width: 218px;">

												<option value="30">자기부담금 최대 30만원</option>

												<option value="70">자기부담금 최대 70만원</option>

											</select>
										</div>
										<!-- PROTECTION FEE SELECTIONS --> <strong
										id="js-protection-fee-price">-</strong> <span>※ 대여시간 비례
											부과</span> <a href="https://www.socar.kr/fare#windowopen"
										target="_blank">더보기</a>
									</td>
								</tr>


								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/text_discount.png'
										alt="할인" /></th>
									<td><input type="radio" name="discount" value="coupon"
										checked /> 쿠폰 <input type="radio" name="discount"
										value="t-membership" /> T멤버십 <input type="radio"
										name="discount" value="" /> 미적용 <span
										id="js-t-membership-value" class="t-membership-value"></span>

										<!-- COUPON DISOCUNT -->
										<div class="js-discount-options"
											id="js-discount-option-coupon">

											<select id="selbox_coupon" style="width: 218px;">
												<option value="" selected="selected">쿠폰선택</option>






												<option value="SCK365NPA3, 1870, 3328, 0, 0.0000000000"
													class='applicable'>매너 서약해주신 쏘친 전원에게 드리는 쿠폰 - 2천원 할인</option>





												<option value="SC45QYE5YE, 0, 1113, 0" class='inapplicable'>굿쏘친님께 드리는 할인쿠폰 - 3천원 할인</option>


											</select>

										</div>
										<!-- COUPON DISOCUNT --> <!-- T-MEMBERSHIP DISOCUNT -->
										<div class="js-discount-options"
											id="js-discount-option-t-membership"
											style="display: none; position: relative;">

											<input type="text"
												class="input input-four-digit js-input-four-digit"
												maxlength="4" /> <input type="text"
												class="input input-four-digit js-input-four-digit"
												maxlength="4" /> <input type="text"
												class="input input-four-digit js-input-four-digit"
												maxlength="4" /> <input type="text"
												class="input input-four-digit js-input-four-digit"
												maxlength="4" /> <a href="#" class="btnS mobileB"
												id="js-t-membership-edit"> <span
												style="margin-left: 0px;">수정</span>
											</a> <a href="#" class="btnS mobileB" id="js-t-membership-save"
												style="display: none;"> <span style="margin-left: 0px;">저장</span>
											</a>
										</div>
										<!-- T-MEMBERSHIP DISOCUNT -->
										<div id="js-t-membership-loading"
											style="margin-top: 5px; display: none;">포인트 조회 중입니다.</div>
										<div id="js-t-membership-error"
											style="margin-top: 5px; display: none; color: red;"></div> <script
											type="text/javascript">
                  function applyTPoint(point) {
                    if (point <= 0) {
                      var dis_price = parseInt($org_price) + parseInt($price_ret);
                    } else {
                      var way = 'round';

                      switch (way) {
                        case 'oneway':
                          // 편도 요금 할인
                          var oneway_price_discount = 0;

                          if ( parseInt($price_ret) < parseInt(point) ){
                            oneway_price_discount = parseInt($price_ret);
                          } else {
                            oneway_price_discount = parseInt(point);
                          }

                          var dis_price = parseInt($org_price) + parseInt($price_ret) - oneway_price_discount;
                          break;
                        default:
                          var dis_price = parseInt($org_price) - parseInt(point) + parseInt($price_ret);
                          break;
                      }
                    }

										var discountedPrice = parseInt(dis_price, 10);
										var protectionFee = getProtectionFee();
										var price = discountedPrice + protectionFee;

                    $('.total_price').text(number_format(price));
                  }

									/** protection-fee */
									function getProtectionFee() {
									  var deductibleType = $protectionFeeSelect && $protectionFeeSelect.val();
									  var deductibleItems = {};
									  
									    deductibleItems[30] = parseInt(350, 10);
									  
									    deductibleItems[70] = parseInt(240, 10);
									  
									  return deductibleType ? deductibleItems[deductibleType] : 0;
									}
                </script> <script type="text/javascript">
                  $(function () {
                    var $options = $('.js-discount-options');
                    var $fourDigits = $('input.js-input-four-digit');
                    var $tMembershipEditBtn = $('#js-t-membership-edit');
                    var $tMembershipSaveBtn = $('#js-t-membership-save');
                    var $tMembershipValue = $('#js-t-membership-value');
                    var $tMembershipLoading = $('#js-t-membership-loading');
                    var $tMembershipError = $('#js-t-membership-error');
                    var $radioButtons = $('input[type="radio"][name="discount"]');

                    var startAt = new Date('2017-09-21T18:30:00+09:00').getTime() / 1000;
                    var endAt = new Date('2017-09-21T19:00:00+09:00').getTime() / 1000;

									
										$protectionFeeSelect = $('#js-protection-fee-select');
										$protectionFeePrice = $('#js-protection-fee-price');
										$protectionFeeSelect.change(onChangeProtectionFeeSelect);
										$protectionFeePrice.ready(updateProtectionFee);
									

                  
                  

                  var befDiscountType = 'coupon';
                    $radioButtons.click(function () {
                      var val = $(this).val();
                      discountType = val;

                      if (val !== 'coupon') resetCouponBox();
                      if (val === 't-membership') {
                        if (isPeakSeason()) {
                          alert("아래 기간 동안 쏘카 예약시, T멤버십 할인이 불가합니다. \n(2016년 7월 15일 ~ 8월 21일)");
                          $('input[type="radio"][name="discount"]:input[value='+ befDiscountType +']').attr("checked", true);
                          return;
                        }
                      } else {
                        resetTMembership();
                      }
                      befDiscountType = val;

                      var membership = getMembershipNumbers();
                      if (val === 't-membership' && membership) validatePartnerVoucher(membership);

                      $options.hide();
                      $('#js-discount-option-' + this.value).show();

                      resetError();
                    });

                    function isPeakSeason() {
                      var currentTime = Date.now();
                      var startTime = new Date(2016,6,15,12,0,0,0).getTime();
                      var endTime = new Date(2016,7,21,23,59,59,0).getTime();

                      return (currentTime > startTime && currentTime < endTime);
                    }

                    function resetError () {
                      $tMembershipError.text('');
                      $tMembershipError.hide();
                    }

                    $fourDigits.bind('keydown', function onKeyDownFourDigits (evt) {
                      var isNumber = (evt.keyCode >= 48 && evt.keyCode <= 57 || evt.keyCode >= 96 && evt.keyCode <= 105);
                      var isFuntionKey = (evt.keyCode === 8 || evt.keyCode === 9 || evt.keyCode === 37 || evt.keyCode === 39 || evt.keyCode === 46);
                      var isBackspace = (evt.keyCode === 8);

                      if (!isNumber && !isFuntionKey) {
                        return evt.preventDefault();
                      } else if (isNumber) {
                        var $this = $(this);
                        if (this.value.trim().length >= 3) setTimeout(function () { $this.next().focus(); }, 0);
                      } else if (isBackspace) {
                        if (isBackspace && this.value.trim().length === 0) $(this).prev().focus();
                      }
                    });

                    $fourDigits.on('focus', triggerEditingMode);
                    $tMembershipEditBtn.click(onEditButtonClick);
                    $tMembershipSaveBtn.click(saveMode);

                    function resetCouponBox() {
                      $('#selbox_coupon').val('').change();
                    }

                    function resetTMembership() {
                      $tMembershipValue.text('');
                      // $tMembershipValue.hide();
                      $('#selbox_coupon').change();
                    }

                    function triggerEditingMode () {
                      if (this.value.trim().length >= 4) this.value = '';

                      $tMembershipValue.hide();
                      $tMembershipEditBtn.hide();
                      $tMembershipSaveBtn.show();
                    }

                    function onEditButtonClick () {
                      $fourDigits.prop({ disabled: false });

                      // $($fourDigits[0]).focus();
                      // triggerEditingMode()
                      $tMembershipEditBtn.hide();
                      $tMembershipSaveBtn.show();
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
                      if (!isMembershipEnteredCorrectly) {
                        return false;
                      }

                      return membership;
                    }

                    function applyOriginalPrice () {
                      $('#selbox_coupon').change();
                    }

                    function showLoading() {
                      $tMembershipLoading.show();
                      $tMembershipValue.hide()
                      $fourDigits.prop({ disabled: true });
                    }

                    function showFailed(retMsg) {
                      $tMembershipLoading.hide();
                      if (retMsg) {
                        $tMembershipError.text(retMsg);
                        $tMembershipError.show();
                      } else {
                        $fourDigits.prop({ disabled: false });
                      }
                    }

                    function showSuccess() {
                      $tMembershipLoading.hide();
                      $tMembershipValue.show()
                      $fourDigits.prop({ disabled: true });
                      $tMembershipSaveBtn.hide();
                      $tMembershipEditBtn.show();
                    }

                    function saveMode () {
                      var membership = getMembershipNumbers();
                      if (!membership) return alert('멤버십 번호 입력이 완료되지 않았습니다.');;

                      showLoading();

                      registerPartnerVoucher(membership, function success (json) {
                        if (json.retCode !== '1') {
                          applyOriginalPrice();
                          showFailed();
                          return alert(json.retMsg);
                        }

                        $t_point = parseInt(json.result.available_point);
                        applyTPoint($t_point);
                        $tMembershipValue.text('-' + $t_point + 'P');
                        showSuccess();
                      }, function error (error) {
                        applyOriginalPrice();
                        showFailed();
                        alert('일시적인 오류로 T멤버십 번호를 조회하지 못했습니다. 잠시 후 다시 시도해 주세요.');
                      });
                    }

                    function validatePartnerVoucher(membership) {
                      showLoading();

                      // SUCCESS CALLBACK
                      $.ajax({
                        method: 'GET',
                        url: 'https://api.socar.kr/mypage/validate_partner_voucher/',
                        crossDomain: true,
                        data: {
                          auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
                          type: 't-membership',
                          t_membership_number: membership.join(''),
                          total_price: $org_price,
                          car_id: '3818',
                          start_at: startAt,
                          end_at: endAt,
                        },
                        dataType: 'jsonp',
                        success: function (json) {
                          if (json.retCode !== '1') {
                            applyOriginalPrice();
                            showFailed(json.retMsg);
                            return;
                          }

                          $t_point = parseInt(json.result.available_point);
                          applyTPoint($t_point);
                          $tMembershipValue.text('-' + $t_point + 'P');
                          showSuccess();
                        },
                        error: function (error) {
                          applyOriginalPrice();
                          showFailed();
                          alert('일시적인 오류로 T멤버십 번호를 조회하지 못했습니다. 잠시 후 다시 시도해 주세요.');
                        },
                      });
                    }

                    function registerPartnerVoucher(membership, callback, errorHandler) {
                      // SUCCESS CALLBACK

                      $.ajax({
                        method: 'GET',
                        url: 'https://api.socar.kr/mypage/register_partner_voucher/',
                        crossDomain: true,
                        data: {
                          auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
                          type: 't-membership',
                          t_membership_number: membership.join(''),
                          total_price: $org_price,
                          car_id: '3818',
                          start_at: startAt,
                          end_at: endAt,
                        },
                        dataType: 'jsonp',
                        success: callback,
                        error: errorHandler
                      });
                    }

										/** protection-fee */
										function updateProtectionFee() {
										  var skipClassName = 'protection-fee-skip';
										  var protectionFee = getProtectionFee();
										  if (protectionFee > 0) {
										    $protectionFeePrice.text(number_format(protectionFee) + '원');
										    $protectionFeePrice.removeClass(skipClassName);
										  } else {
										    $protectionFeePrice.text('면제');
										    $protectionFeePrice.addClass(skipClassName);
										  }
										}

										function onChangeProtectionFeeSelect() {
											if (discountType !== 't-membership') {
												applyOriginalPrice();
											} else {
									      var membership = getMembershipNumbers();
									      if (membership) validatePartnerVoucher(membership);
											}
											updateProtectionFee();
										}
                  });
                </script></td>
								</tr>

								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt8_n.gif'
										alt="주행요금" /></th>
									<td>170원 /1km당 <span>※ 반납 후 주행거리에 따라 부과</span>


									</td>
								</tr>

								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_card.gif'
										alt="결제카드" /></th>
									<td><select id="selbox_card">

											<option value='1008837' selected='selected'>현대카드 (2015.12.06)</option>

									</select>
										<div class="txt_cop_more">
											결제카드 <span>3장까지</span> 등록가능!
											<!--<a href="#" id="add_card" class="link" style="margin-left:5px;padding-right:5px;background:url('//web-assets.socar.kr/template/asset/template/asset/images/couponbook/blet01.png) right -1px no-repeat;">바로가기</a></div>--></td>
								</tr>


								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt13.gif'
										alt="회송비" style="display: none;" /></th>
									<td><em style="display: none;">0원</em></td>
								</tr>

							</table>
							<table cellspacing="0" class="price">
								<tr>
									<th><img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt9.gif'
										alt="결제요금" /></th>
									<td><strong class="total_price">2,220</strong> <img
										src='//web-assets.socar.kr/template/asset/images/reservation/payment_txt10.gif'
										alt="원" /></td>
								</tr>
							</table>
						</div>
					</div>

					<ul class="tip">

						<li>1. 쏘카 이용 시, 반드시 <a target="_blank"
							href="https://www.socar.kr/guide#socar2" alt="이용 규칙">이용규칙</a>을
							준수해 주세요.
						</li>
						<ul style="padding-left: 10px;">
							<li>&middot; 반납시간 미준수 : 10,000원 및 이용요금 2배</li>
							<li>&middot; 차 내 흡연 : 300,000원 및 이용자격 정지</li>
							<li>&middot; 사고발생 미신고 : 100,000원 및 면책 적용 불가</li>
							<li>&middot; 동승운전자 미등록 : 100,000원 및 보험/면책 적용 불가</li>

						</ul>
						<li>2. 대여요금 및 보험료는 대여시간 10분 전 결제되며, 결제가 완료되지 않으면 차량 이용에 제한이
							있을 수 있습니다.</li>
						<li>3. 주행요금은 차량 반납 후, 이용한 만큼 km당 주행요금이 결제됩니다. (하이패스 요금 별도)</li>
						<li>4. 예약 완료 후에는 예약 앞당기기 및 반납연장만 가능합니다. 대여기간 수정, 지역 및 차종 변경은
							취소 후 새로 예약해주세요.</li>
						<li>5. 대여시작 3시간 이내에 예약 취소할 경우, 예약금액(대여요금+보험료)의 10%가 취소 위약금으로
							부과됩니다.</li>



					</ul>
				</div>
				<div class="confirm">
					<form name="reservation" method="post" action="">
						<fieldset>
							<label for="confirm"> <input class="agree-checkbox"
								id="js-reserve-confirm" type="checkbox" />
								<div class="agree-container">
									<p class="agree-description">
										위 예약내역 및 결제내역을 확인하였으며, <a href="/rent_terms/SOCAR"
											target="_blank" alt="쏘카대여약관" class="decorated-link">자동차대여약관</a>과
										<a href="/terms" target="_blank" alt="이용약관"
											class="decorated-link">이용약관</a>, <a target="_blank"
											href="/skt_privacy" alt="개인정보 수집∙이용 및 제 3자 제공"
											class="decorated-link">개인정보 수집∙이용 및 제 3자 제공</a>에 동의합니다.
									</p>
								</div>


							</label> <br />
							<br />
						</fieldset>
					</form>
					<p class="btn">
						<input id="btn_reserve" type="image"
							src='//web-assets.socar.kr/template/asset/images/reservation/btn_reservation.png'
							alt="쏘카 예약하기" /> <em style="display: none;">5223</em> <em
							style="display: none;">3818</em>
					</p>
				</div>
			</div>

			<style type="text/css">

/* aside */
div.aside {
	position: fixed;
	top: 111px;
	right: 0;
	width: 51px;
	height: 150px;
	border-bottom: 1px solid #dadada;
	z-index: 10000;
} /*height:225px*/
div.aside ul a {
	display: block;
	width: 51px;
	height: 73px;
	overflow: hidden;
	text-indent: -9999em;
	background:
		url('//web-assets.socar.kr/template/asset/images/common/quick_side_menu_141111.gif')
		no-repeat;
	border-bottom: 1px dotted #BBB;
	border-left: 1px solid #BBB;
}

div.aside a.quick1 {
	background-position: -1px -76px;
}

div.aside a.quick2 {
	background-position: -1px -151px;
}

div.aside a.quick3 {
	background-position: -1px -226px;
}

div.aside a.quick4 {
	background-position: -1px -1px;
}

div.aside a.quick5 {
	background-position: -1px -301px;
}

div.aside a.quick6 {
	background-position: -1px -301px;
}

div.aside a.quick1:hover {
	background-position: -60px -76px;
}

div.aside a.quick2:hover {
	background-position: -60px -151px;
}

div.aside a.quick3:hover {
	background-position: -60px -226px;
}

div.aside a.quick4:hover {
	background-position: -60px -1px;
}

div.aside a.quick5:hover {
	background-position: -60px -301px;
}

div.aside a.quick6:hover {
	background-position: -60px -301px;
}

div.aside ul :first-child a {
	border-top: 1px solid #BBB;
}

div.aside ul :last-child a {
	border-bottom: 1px solid #BBB;
}
</style>
			<!-- quick -->
			<div class="aside">
				<ul>
					<li><a href="#" class="quick4" title="쏘카쿠폰 혜택">쏘카쿠폰 혜택</a></li>



					<li><a href="#" class="quick2" title="주행요금 계산하기">주행요금 계산하기</a>
					</li>
					<li><a href="#" class="quick3" title="쏘카존 신청하기">쏘카존 신청하기</a></li>

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

			<div class="aside_more">
				<img
					src='//web-assets.socar.kr/template/asset/images/common/banner_more.png'
					alt="더보기" />
			</div>

			<!-- //quick -->
		</div>
		<!-- footer -->
		<div id="footer">
			<div class="gr">
				<ul class="footer-menu">
					<li><a href=https://www.socar.kr/about class="menu1"
						title="회사소개">회사소개</a></li>
					<li><a href="https://goo.gl/Aqsjr5" title="채용안내"
						target="_blank"
						style="padding: 3px 0 2px; background: none; text-indent: 0;"><img
							src='//web-assets.socar.kr/template/asset/images/common/footer_menu_recruit_new.png'
							alt="채용안내"></a></li>
					<li><a
						href="https://www.dropbox.com/sh/qiypdh3xl3mmktf/AAAlXsdhOZUY3HTPcvcwPXfCa?dl=0"
						target="_blank" class="menu2" title="보도자료">보도자료</a></li>
					<!-- 2015.07.29 -->
					<li><a href=https://www.socar.kr/terms title="회원이용약관"
						style="padding: 3px 0 2px; background: none; text-indent: 0;"><img
							src='//web-assets.socar.kr/template/asset/images/common/footer_menu_member_n.png'
							alt="회원이용약관" /></a></li>
					<li><a href=https://www.socar.kr/privacy class="menu5"
						title="개인정보처리방침">개인정보처리방침</a></li>
					<li><a href=https://www.socar.kr/rent_terms title="자동차대여약관"
						style="padding: 3px 0 2px; background: none; text-indent: 0;"><img
							src='//web-assets.socar.kr/template/asset/images/common/footer_menu_rental_n2.png'
							alt="자동차대여약관" /></a></li>
					<li><a href=https://www.socar.kr/gis_terms
						title="위치기반서비스 이용약관"
						style="padding: 3px 0 2px; background: none; text-indent: 0;"><img
							src='//web-assets.socar.kr/template/asset/images/common/footer_menu_location_n.png'
							alt="위치기반서비스 이용약관" /></a></li>

					<!--// 2015.07.29 -->
				</ul>
				<address>
					<img
						src='//web-assets.socar.kr/template/asset/images/common/footer_address.png?v=3'
						alt="(주) 쏘카 통신판매업 신고 : 제 2011-제주조천-0021호, 정보보호 담당자 : 김명훈, 사업자등록번호 : 616-81-90529  대표자 : 이재용
Tel : 1661-3315, Fax : 02-6969-9333, 주소 : 제주특별자치도 제주시 도령로 129, 5층 (연동, 드림플라자) 63126" />
				</address>
				<p class="copyright">
					<img style="margin-top: 15px;"
						src='//web-assets.socar.kr/template/asset/images/common/footer_copyright_n2.png'
						alt="Copyright © 2013 SOCAR  All rights reserved." />
				</p>
				<div class="ccm">
					<a href="/impact"><img style="margin-top: 15px;"
						src='//web-assets.socar.kr/template/asset/images/common/ccm.png' /></a>
				</div>
				<div class="eco">
					<a href="/impact"><img style="margin-top: 15px;"
						src='//web-assets.socar.kr/template/asset/images/common/eco.png?v=4' /></a>
				</div>
				<div class="bcorp">
					<a href="/impact"><img style="margin-top: 15px;"
						src='//web-assets.socar.kr/template/asset/images/common/bcorp.jpg' /></a>
				</div>
				<div class="csa">
					<a href="http://carsharing.org/" target="_blank"><img
						style="margin-top: 15px;"
						src='//web-assets.socar.kr/template/asset/images/common/csa.png' /></a>
				</div>
			</div>

			<ul class="sns">
				<li><a href="https://www.facebook.com/socarsharing"
					target="_blank" class="sns1" title="SOCAR Facebook">SOCAR
						Facebook</a></li>
				<li><a href="http://blog.socar.kr/" target="_blank"
					class="sns3" title="SOCAR Blog">SOCAR Blog</a></li>
				<li><a href="mailto:info@socar.kr" class="sns4"
					title="info@socar.kr">E-mail</a></li>
			</ul>
		</div>
		<!-- //footer -->

		<div class="mwLayer">
			<div class="bg"></div>
			<div id="mwCont">
				<!-- login -->
				<div class="login mwCont">
					<form name="login" method="post"
						action="https://www.socar.kr/user/login">
						<input id="redirect" name="redirect" type="hidden" value="" /> <input
							id="redirect_data" name="redirect_data" type="hidden" value="" />
						<fieldset>
							<dl>
								<dt>
									<img alt="아이디"
										src='//web-assets.socar.kr/template/asset/images/common/new/id.png' />
								</dt>
								<dd>
									<input type="text" class="input" name="email" />
								</dd>
								<dt>
									<img alt="비밀번호"
										src='//web-assets.socar.kr/template/asset/images/common/new/pw.png' />
								</dt>
								<dd>
									<input type="password" class="input" name="password" />
								</dd>
							</dl>
							<input type="image"
								src='//web-assets.socar.kr/template/asset/images/common/new/btn_login.png'
								class="submit" id="login_btn" />

						</fieldset>
					</form>

					<ul>
						<li><a title="회원가입" class="lg1"
							href="https://www.socar.kr/join"><img
								src='//web-assets.socar.kr/template/asset/images/common/new/join.png'
								alt="회원가입" /></a></li>
						<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img
								src='//web-assets.socar.kr/template/asset/images/common/new/idpw.png'
								alt="아이디·비밀번호 찾기" /></a></li>
					</ul>

					<!-- SNS 로그인 -->
					<div class="box_sns">
						<a href="#" id="fb_login" class="left"><img
							src='//web-assets.socar.kr/template/asset/images/common/new/fb3_n.png'
							alt="페이스북" /></a> <a href="#" id="naver_login" class="center"><img
							src='//web-assets.socar.kr/template/asset/images/common/new/nv3_n.png'
							alt="네이버" /></a> <a href="#" id="kakao_login" class="right"><img
							src='//web-assets.socar.kr/template/asset/images/common/new/cco3.png'
							alt="카카오톡" /></a>
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
								<dt>
									<img
										src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif'
										alt="이름" />
								</dt>
								<dd>
									<input id="find_email_name" type="text" class="input" />
								</dd>
								<dt>
									<img
										src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif'
										alt="휴대폰" />
								</dt>
								<dd>
									<select id="find_email_num1" style="width: 51px;">
										<option selected="selected">010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
									</select> - <input id="find_email_num2" type="text" class="input"
										style="padding: 0; width: 41px; text-align: center;" /> - <input
										id="find_email_num3" type="text" class="input"
										style="padding: 0; width: 41px; text-align: center;" />
								</dd>
							</dl>
							<input id="btn_find_email" type="image" class="submit"
								src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
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
								<dt>
									<img
										src='//web-assets.socar.kr/template/asset/images/common/finding_txt2.gif'
										alt="아이디 (이메일)" />
								</dt>
								<dd>
									<input id="find_pw_email" type="text" class="input" />
								</dd>
								<dt>
									<img
										src='//web-assets.socar.kr/template/asset/images/common/finding_txt3.gif'
										alt="이름" />
								</dt>
								<dd>
									<input id="find_pw_name" type="text" class="input" />
								</dd>
								<dt>
									<img
										src='//web-assets.socar.kr/template/asset/images/common/finding_txt4.gif'
										alt="휴대폰" />
								</dt>
								<dd>
									<select id="find_pw_num1" style="width: 51px;">
										<option selected="selected">010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
									</select> - <input id="find_pw_num2" type="text" class="input"
										style="padding: 0; width: 41px; text-align: center;" /> - <input
										id="find_pw_num3" type="text" class="input"
										style="padding: 0; width: 41px; text-align: center;" />
								</dd>
							</dl>
							<input id="btn_find_pw" type="image" class="submit"
								src='//web-assets.socar.kr/template/asset/images/common/btn_confirm_b.gif' />
						</fieldset>
					</form>
				</div>
				<!-- //finding pw -->

				<!-- 주행요금 계산기 -->
				<div class="oilL mwCont">
					<h4>
						<img
							src='//web-assets.socar.kr/template/asset/images/common/oil_txt1_n.gif'
							alt="주행요금 계산기" />
					</h4>
					<form name="oil" method="post" action="">
						<fieldset>
							<div class="oilForm">
								<dl>
									<dt>
										<img
											src='//web-assets.socar.kr/template/asset/images/common/oil_txt2.gif'
											alt="차종" />
									</dt>
									<dd>
										<select id="oil_carlist" class='oilSelect'
											style="width: 165px; height: 28px; font-size: 12px; border-color: #c6cace;">
											<option selected='selected' value="">차종 선택</option>
										</select>
									</dd>
									<dt>
										<img
											src='//web-assets.socar.kr/template/asset/images/common/oil_txt3.gif'
											alt="거리" />
									</dt>
									<dd>
										<input type="text" id="oilDistance" class="input" />
									</dd>
								</dl>
								<input type="image"
									src='//web-assets.socar.kr/template/asset/images/common/btn_calculate.gif'
									class="submit" alt="계산" />
							</div>
							<p class="oilTxt">
								<img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt4.gif'
									alt="차종과 거리를 선택해주세요" />
							</p>
							<p class="oilResult">
								<img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt15_n.gif'
									alt="예상 주행요금은" /> <span>14,500</span> <img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt16.gif'
									alt="원 입니다." />
							</p>
						</fieldset>
					</form>

					<p class="txt">
						<img
							src='//web-assets.socar.kr/template/asset/images/common/oil_txt6_n.gif'
							alt="주행요금은 차량 이용 후 실제 이동거리에 따라 부과되므로, 예상 주행요금과 차이가 있을 수 있습니다." />
					</p>

					<div class="noti">
						<h5>
							<img
								src='//web-assets.socar.kr/template/asset/images/common/oil_txt7.gif'
								alt="계산기이용하기" />
						</h5>
						<ol>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/oil_txt8.gif'
								alt="1. 지도서비스에서 출발, 도착지를 설정후 자동차 길찾기를 하세요." /></li>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/oil_txt9.gif'
								alt="2. 길찾기 결과의 총거리를 확인하세요." /></li>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/oil_txt10_n.gif'
								alt="3. 차종과 총거리를 입력하고 주행요금을 미리 예상해보세요." /></li>
						</ol>

						<dl>
							<dt>
								<img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt11.gif'
									alt="지도서비스" />
							</dt>
							<dd>
								<a href="http://map.daum.net/?target=car" target="_blank"><img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt12.gif'
									alt="다음" /></a>
							</dd>
							<dd>
								<a href="http://map.naver.com/index.nhn?menu=route"
									target="_blank"><img
									src='//web-assets.socar.kr/template/asset/images/common/oil_txt13.gif'
									alt="네이버" /></a>
							</dd>
						</dl>
					</div>
				</div>
				<!-- //주행요금 계산기 -->


				<div id="askzone_div" class="requestL mwCont">
					<h4 style="height: 29px; margin-left: 0;">
						<img
							src='//web-assets.socar.kr/template/asset/images/common/request_txt3.gif'
							alt="우리동네 쏘카존 신청하기!!" />
					</h4>
					<p class="txt" style="height: 50px; margin-left: 0;">
						<img
							src='//web-assets.socar.kr/template/asset/images/common/request_txt2.gif'
							alt="여러분의 의견을 듣고 함께하는 쏘카! 신청서를 작성해주시면 쏘카존을 만들때 참고하겠습니다." /> <span
							style="padding-left: 33px;"> </span>
					</p>

					<form name="request" method="post" action="">
						<fieldset>
							<div class="requestForm" style="padding-bottom: 15px;">

								<input type="text" id="search_ask_address"
									name="search_ask_address" data-in="false" class="input"
									style="width: 420px; height: 30px; padding-left: 10px; color: #999;"
									value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" /> <input
									type="hidden" id="search_lat" value="0" /> <input
									type="hidden" id="search_lng" value="0" />

								<div class="wrap_loSoting" style="display: none;"
									id="addr_layer">
									<ul class="result"></ul>
								</div>
								<div class="wrap_loSoting" style="display: none;"
									id="search_none_addr_layer">
									<ul>
										<li><a href="#">검색된 결과가 없습니다.</a></li>
									</ul>
								</div>
								<textarea id="layer_askzone_text" cols="" rows=""
									class="textarea" data-in="false"
									style="width: 420px; height: 64px; margin-top: 10px; color: #999;">자세한 내용을 적어주세요. (선택사항)</textarea>

								<div
									style="width: 432px; padding-top: 9px; margin-top: 12px; border-top: 1px solid #eaeaea; text-align: center;">
									<input id="layer_askzone_submit" type="image"
										src='//web-assets.socar.kr/template/asset/images/common/btn_socarzone_submit.gif'
										onclick="return false;" alt="신청하기">
								</div>

							</div>
						</fieldset>
					</form>
					<div class="box_titsoting">
						<div class="tit">
							<img
								src='//web-assets.socar.kr/template/asset/images/common/txt_socarzone.gif'
								alt="쏘카존 신청현황" />
						</div>
						<div class="soting">

							<a href="#" id="my_requests">내 신청내역</a> <span class="txt_bar">|</span>

							<a href="#" id="search_all">전체</a> <span class="txt_bar">|</span>
							<a href="#" id="search_region">지역별 찾기 <span
								style="font-size: 11px; font-family: arial" id="search_arrow">▼</span></a>
						</div>
						<div class="lay_location" id="search_region_layer"
							style="display: none;">
							<span class="lay_tit">다른지역 찾기</span> <input type="text"
								id="search_address" name="search_address" data-in="false"
								class="input"
								style="width: 263px; height: 26px; padding-left: 10px; border-right: 0 none; color: #999"
								value="주소, 장소 이름으로 검색하세요!  ex) 합정동, 홍익대학교" /> <a href="#"
								id="search_askzone_submit"><img
								src='//web-assets.socar.kr/template/asset/images/common/btn_search.gif' /></a>
						</div>
						<div class="wrap_loSoting" id="addr_search_layer"
							style="display: none;">
							<ul class="result"></ul>
						</div>
						<div class="wrap_loSoting" style="display: none;"
							id="search_none_addr_search_layer">
							<ul>
								<li><a href="#">검색된 결과가 없습니다.</a></li>
							</ul>
						</div>
					</div>
					<div id="requestList_wrap"
						style="margin-top: 14px; width: 466px; height: 295px; border: 1px solid #d3d3d3; overflow-y: scroll; overflow-x: hidden;">
						<div id="requestList">
							<div id="askzone_wrap" class="wrap"></div>
						</div>
						<input type="hidden" name="last_id" id="last_id" value="" />
					</div>
					<p id="btn_askzone_close" class="centerBtn">
						<a href="#" class="close"><img
							src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif'
							alt="닫기" title="닫기"></a>
					</p>
				</div>
				<!-- 친구추천 -->
				<div class="inviteL mwCont">
					<div class="inbox">
						<h4>
							<img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt1.gif'
								alt="친구야! 쏘카같이타자!" />
						</h4>
						<p class="txt">
							<img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt2_20151015.png'
								alt="친구, 지인들에게 카셰어링 쏘카를 추천하시고, 추천 받은 분이 쏘카에 가입하면, 초대한 사람에게 1만원+1만원 무료 쿠폰을 드립니다." />
						</p>
						<ol>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt3_20151015.png'
								alt="Step1 함께 하는 마음 담아 쏘카 초대 메일 발송" /></li>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt4.gif'
								alt="Step2 친구가 받은 메일의 링크를 통해 회원가입하기" /></li>
							<li><img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt5_20151015.png'
								alt="Step3 친구가 SO회원 가입 완료하면 1만원+1만원 쿠폰 자동 발급" /></li>
						</ol>
						<form name="invite" method="post" action="">
							<fieldset>
								<div class="inviteForm">
									<dl>
										<dt>
											<img
												src='//web-assets.socar.kr/template/asset/images/common/invite_txt6.gif'
												alt="받는 사람" />
										</dt>
										<dd>
											<label for="inviteMail" class="i_label">여러명인 경우
												쉼표(,)로 구분해주세요.</label> <input type="text" id="inviteMail"
												class="input i_text" />
										</dd>
									</dl>
									<p class="tip1">최대 5개의 메일주소 입력이 가능</p>
									<dl>
										<dt>
											<img
												src='//web-assets.socar.kr/template/asset/images/common/invite_txt7.gif'
												alt="초대 메세지" />
										</dt>
										<dd>
											<label for="inviteCont" class="i_label">메세지를 입력해주세요.</label>
											<textarea id="inviteCont" class="textarea i_text" cols=""
												rows=""></textarea>
										</dd>
									</dl>
									<!-- <p class="tip2"><em>1</em> / 100</p> -->
								</div>
								<p class="centerBtn">
									<input id="inviteSubmit" type="image"
										src='//web-assets.socar.kr/template/asset/images/common/btn_send.gif'
										alt="발송하기" />
								</p>
							</fieldset>
						</form>
					</div>
					<div class="info">
						<h5>
							<img
								src='//web-assets.socar.kr/template/asset/images/common/invite_txt8.gif'
								alt="알려드립니다." />
						</h5>
						<ul>
							<li>초대받은 친구가 결제카드 등록 및 면허승인을 완료하면, 두분 모두에게 친구초대 쿠폰을 드려요.</li>
						</ul>
					</div>
				</div>
				<!-- //친구추천 -->


				<div id="askcar_div" class="car_requestL mwCont"
					style="display: block;">
					<h4 style="height: 57px; padding-bottom: 40px">
						<img
							src='//web-assets.socar.kr/template/asset/images/garage/pop_tit.jpg'
							alt="쏘카로 원하는 차종 신청하기 !!" title="쏘카로 원하는 차종 신청하기 !!">
					</h4>
					<form name="request" method="post" action="">
						<fieldset>
							<div class="requestForm">

								<textarea id="layer_askcar_text" cols="" rows=""
									class="textarea"></textarea>
								<input id="layer_askcar_submit" type="image"
									src='//web-assets.socar.kr/template/asset/images/common/btn_request.gif'
									onclick="return false;" class="submit" alt="신청">

							</div>
						</fieldset>
					</form>
					<p id="btn_askcar_close" class="centerBtn">
						<a href="#" class="close"><img
							src='//web-assets.socar.kr/template/asset/images/common/btn_close.gif'
							alt="닫기" title="닫기"></a>
					</p>
				</div>


				<div class="socarcardLayer mwCont">
					<div class="tit">
						<img
							src='//web-assets.socar.kr/template/asset/images/mypage/socarcardLayer_tit.gif'
							alt="쏘카카드 발급 신청하기" />
					</div>
					<p class="txt">쏘카카드 발급 신청과 동시에 1,500원이 결제됩니다.</p>
					<p class="more">※ 기본정보에서 우편 수취가 가능한 주소인지 확인해주세요.</p>
					<div class="centerBtn">
						<a href="#"><img
							src='//web-assets.socar.kr/template/asset/images/customer/btn_confirm.gif'
							id="socarcard_request" alt="확인" /></a> <a href="#"><img
							src='//web-assets.socar.kr/template/asset/images/customer/btn_cancel.gif'
							id="socarcard_request_cancel" alt="취소" /></a>
					</div>
					<div id="member_card_regist_indicator"
						style="display: none; background: url('//web-assets.socar.kr/template/asset/images/common/loading.gif') no-repeat 50% 50%; background-size: auto 32px; position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin-top: auto; margin-bottom: auto; margin-left: auto; margin-right: auto; width: 100%; height: 100%; background-color: #fff; opacity: .7; -moz-opacity: .7; filter: alpha(opacity = 70); z-index: 100000;">
					</div>
				</div>
				<style type="text/css">
.result_none {
	width: 100%;
	height: 40px;
	line-height: 40px;
	text-align: center;
	background-color: #fafafa;
	border: 1px solid #d3d3d3;
}

.result_none p {
	font-size: 1.2em;
	font-weight: bold;
	line-height: 40px;
}
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
		auth_token : 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
				auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
				auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
				auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
				auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
			auth_token: 'fa1b06454a019e2a427c7d21c3ed910d9c95b3e5mipkc',
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
				<script type="text/javascript"
					src="/template/./asset/js/kakao.min.js?1505974111" charset="utf-8"></script>
				<script type="text/javascript"
					src="/template/./asset/js/sns_interlocking.js?1505974111"
					charset="utf-8"></script>

				<!-- 쏘카존 -->
				<div class="socarzone mwCont">
					<h4 id="layer_zone_name">종각제일은행 주차장</h4>
					<div class="detailInfo" style="height: 180px; overflow: auto;">
						<table cellspacing="0">
							<tr id="layer_vehicle_count_row">
								<th><span>운영차량</span></th>
								<td>총 <em id="layer_toal_num">5</em>대 <!-- <a href="#">예약가능 쏘카 보기</a> -->
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
							<li class="on"><span
								style="display: inline-block; padding-right: 10px; height: 41px; line-height: 41px; font-weight: bold; color: #1ba4e7;">지도/스카이뷰</span>

							</li>
						</ul>

						<div class="socarzonMap">
							<div id="map_small" style="width: 479px; height: 231px"></div>
						</div>
					</div>
					<p class="centerBtn">
						<a href="#" class="close"><img
							src='//web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif'
							alt="확인" /></a>
					</p>
				</div>
				<!-- //쏘카존 -->

				<!-- 쏘카보기 -->
				<div class="socarDetail mwCont">
					<h4>
						<img
							src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail.gif"
							alt="쏘카정보" />
					</h4>
					<div class="socarInfo">
						<p class="thumb">
							<img id="layer_car_img" width="250" height="124"
								src="/template///web-assets.socar.kr/template/asset/images/reservation/socar_detail1.png" />
						</p>
						<h5 id="layer_car_name"></h5>
						<dl>
							<dt>기본요금</dt>
							<dd>
								<em id="layer_car_basic_price"></em> (30분)
							</dd>
							<dt>주행요금</dt>
							<dd>
								<em id="layer_oil_price">(별도고지)</em> (1km)
							</dd>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class2" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class3" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class4" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class5" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class6" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class7" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />핸즈프리
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class8" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class9" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class10" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class11" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class12" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class13" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class14" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class15" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class16" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class17" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class18" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class19" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class20" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class21" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class22" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class23" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class24" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class25" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class32" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class33" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB<br />브라이택스 카시트
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class34" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />열선시트<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class35" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class36" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 말리부 -->
					<div class="socarSpec" id="car_class37" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 정윤) -->
					<div class="socarSpec" id="car_class38" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 K&12) -->
					<div class="socarSpec" id="car_class39" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 어니언) -->
					<div class="socarSpec" id="car_class40" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 GFX) -->
					<div class="socarSpec" id="car_class41" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 문크) -->
					<div class="socarSpec" id="car_class42" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(아트쏘카 설찌) -->
					<div class="socarSpec" id="car_class43" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 레이(비엔날레) -->
					<div class="socarSpec" id="car_class44" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- K3(비엔날레) -->
					<div class="socarSpec" id="car_class45" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />CD플레이어<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<!-- 아이오닉 -->
					<div class="socarSpec" id="car_class46" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="socarSpec" id="car_class47" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
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
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 아이오닉(유채꽃) -->
					<div class="socarSpec" id="car_class53" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 레이(노을) -->
					<div class="socarSpec" id="car_class54" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 아이오닉(노을) -->
					<div class="socarSpec" id="car_class55" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 올뉴모닝 -->
					<div class="socarSpec" id="car_class56" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 스팅어 -->
					<div class="socarSpec" id="car_class57" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션<br />지능형운전보조장치
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />AUX/USB<br />블루투스
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>
					<!-- 그랜저(경유) -->
					<div class="socarSpec" id="car_class58" style="display: none">
						<h6>옵션정보</h6>
						<table cellspacing="0" style="width: 100%">
							<tr>
								<th>안전옵션</th>
								<td>에어백<br />후방감지센서<br />블랙박스<br />네비게이션
								</td>
							</tr>
							<tr>
								<th>부가옵션</th>
								<td>에어컨<br />열선시트<br />CD플레이어<br />블루투스<br />AUX/USB
								</td>
							</tr>
							<tr>
								<th colspan="2">* 차량에 따라 상이할 수 있습니다. *</th>
							</tr>
						</table>
					</div>

					<div class="clear"></div>
					<p class="centerBtn">
						<a href="#" class="close"><img
							src="/template///web-assets.socar.kr/template/asset/images/reservation/btn_confirm.gif"
							alt="확인" /></a>
					</p>
				</div>
				<!-- //쏘카보기 -->


				<a href="#" class="close">닫기</a>
			</div>
		</div>
	</div>
</body>
</html>