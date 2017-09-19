$(function(){
    $('#btn_find_email').bind('click', function () {
        $.ajax({
            url: "https://api.socar.kr/user/find_id",
            crossDomain: true,
            data: {
                username: $('#find_email_name').val(),
                phone: $('#find_email_num1').val() + $('#find_email_num2').val() + $('#find_email_num3').val()
            },
            type: 'GET',
            dataType: 'jsonp',
            success: function(json){
                if(json.retCode == '1'){
                    alert(json.retMsg);
                }
                else{
                    alert(json.retMsg);
                }
            },
            error: function(){
                alert('서버 접속 장애입니다. 잠시후 다시 시도해주세요.');
            }
        });

        return false;
    });
    $('#btn_find_pw').bind('click', function () {
        $.ajax({
            url: "https://api.socar.kr/user/find_pw",
            crossDomain: true,
            data: {
                email: $('#find_pw_email').val(),
                username: $('#find_pw_name').val(),
                phone: $('#find_pw_num1').val() + $('#find_pw_num2').val() + $('#find_pw_num3').val()
            },
            type: 'GET',
            dataType: 'jsonp',
            success: function(json){
                if(json.retCode == '1'){
                    alert(json.retMsg);
                }
                else{
                    alert(json.retMsg);
                }
            },
            error: function(){
                alert('서버 접속 장애입니다. 잠시후 다시 시도해주세요.');
            }
        });
        return false;
    });
	/* login */
	$('#header .util1').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('loginLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .login').css('display','block');
		$('.mwLayer .login .submit').css('display','block');
		$('.mwLayer .finding .submit').css('display','none');
		return false;
	});
	$('#main .login .submit').click(function(){
        /* TO-DO  2013.02.17
         * 로그인 버튼 눌렀을 때 카드등록 레이어가 보이지 않음 */
        // ssun - 메인페이지에서 로그인이 안되어 임시 제거
		// $('.mwLayer').addClass('open');
		// $('.mwLayer #mwCont').removeClass();
		// $('.mwLayer .mwCont').css('display','none');
		// $('.mwLayer #cardAdd').css('display','block');
		// return false;
	});
	$('#mwCont .close').click(function(){
		$('.mwLayer').removeClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .mwCont .input').val('');
		$('.mwLayer .findingId .input').val('');
		$('.mwLayer .findingPw .input').val('');
		return false;
	});

	/* finding Id */
	$('#mwCont .login .lg2').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('findingLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .findingId').css('display','block');
		$('.mwLayer .findingId .submit').css('display','block');
		$('.mwLayer .findingPw .submit').css('display','none');
		$('.mwLayer .findingId .input').val('');
		$('.mwLayer .findingPw .input').val('');
		return false;
	});
	$('.finding .lg1').click(function(){
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .findingId').css('display','block');
		$('.mwLayer .findingId .submit').css('display','block');
		$('.mwLayer .findingPw .submit').css('display','none');
		$('.mwLayer .findingId .input').val('');
		return false;
	});
	$('.finding .lg2').click(function(){
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .findingPw').css('display','block');
		$('.mwLayer .findingPw .submit').css('display','block');
		$('.mwLayer .findingId .submit').css('display','none');
		$('.mwLayer .findingPw .input').val('');
		return false;
	});

	/* join type */
	$('.join-index .box .family').click(function(){
        alert('2인 이상 가족 구성원이 SO회원으로 정상 가입된 경우 가족회원으로 신청이 가능합니다. 해당 요건이 충족되신 경우 고객센터 1:1문의하기를 통해 신청해주세요.');
		// $('#family').css('display','block');
		return false;
	});
	// $('.join-index .box .corp').click(function(){
	// 	$('#corp').css('display','block');
	// 	return false;
	// });
	$('.input').focus(function(){
		$(this).addClass('focus');
	});
	$('.input').blur(function(){
		$(this).removeClass('focus');
	});

	$('.join-index .check .close').click(function(){
		$('.check').css('display','none');
		return false;
	});

	/* reservation */
	$('#setting .setting-hidden').click(function(){
		$('#setting').removeClass('open');
		$('#setting .setting-show').css('display','block');
		return false;
	});
	$('#setting .setting-show').click(function(){
		$('#setting').addClass('open');
		$('#setting .setting-show').css('display','none');
		return false;
	});

    // ssun - 해당 위치에서 사용
	// $('#setting .location').focus(function(){
	// 	$('#setting .option-layer').css('display','none');
	// 	$('#socarzone').css('display','block');
	// });

	// $('#setting .socar').focus(function(){
        //ssun - 차종 리스트를 받아 처리하도록 수정
		// $('#setting .option-layer').css('display','none');
		// $('#socar').css('display','block');
	// });

	// $('#socarzone .input').focus(function(){
        //ssun - 검색 버튼 누를시 띄우도록 수정
		// $('#autoComplete').css('display','block');
	// });

	/* reservation location tooltip */
	$('#reservation #mapArea .pointer').click(function(){
		$('#mapArea .tooltip').css('display','none');
		$(this).children('.tooltip').css('display','block');
		return false;
	});
	$('#mapArea .tooltip .close').click(function(){
		$('#mapArea .tooltip').css('display','none');
		return false;
	});
	$('#mapArea .tooltip h4').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('socarzoneLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .socarzone').css('display','block');
		return false;
	});

	/* payment socarzone */
	$('#reservation .socarzoneDetail').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('socarzoneLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .socarzone').css('display','block');
		return false;
	});
    // ssun - 연동코드로 인해 이쪽부분 주석처리 (차량 디테일 정보 레이어)
	// $('#reservation .carDetail').click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('socarDetailLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .socarDetail').css('display','block');
	// 	return false;
	// });

	$('.reservation .socarzoneDetail').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('socarzoneLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .socarzone').css('display','block');
		return false;
	});

    // ssun - 연동코드로 인해 이쪽부분 주석처리 (차량 디테일 정보 레이어)
	// $('.reservation .carDetail').click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('socarDetailLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .socarDetail').css('display','block');
	// 	return false;
	// });

	/* calendar */
	$(".calendar").focus(function(){
        //ssun - jquery datepicker 적용으로 제거
		// var $offset = $(this).offset();
		// $("#calendar").css('display','block');
		// $("#calendar").css('top',$offset.top+25);
		// $("#calendar").css('left',$offset.left);
	});

	/* call center */
	$('#customer .callCenter').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('callLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .call').css('display','block');
		return false;
	});

	/* faq tab */
	// $('.faq .tab a').click(function(){
	// 	$('.tab li').removeClass('on');
	// 	$(this).parent().addClass('on');
	// 	return false;
	// });

	/* faq list */
	$(".faq .faq-list dt").click(function(){
		$(".faq .faq-list dt").removeClass('active');
		$(this).addClass('active');
		$(".faq .faq-list dd").not($(this).next("dd")).slideUp();
		$(this).next("dd").slideToggle();
		return false;
	});

	/* mypage mobile */
	$("#mypage .mobileB").click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('mobileLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .mobile').css('display','block');
		return false;
	});

	/* mypage password */
	$("#mypage .pwB").click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('pwLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .passwordL').css('display','block');
		return false;
	});

	/* mypage license */
	// $("#mypage .drB").click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('drLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .licenseL').css('display','block');
	// 	return false;
	// });

	/* mypage reservation Change */
	$("#mypage .rvChangeB").click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('rvChangeLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .rvChange').css('display','block');
		return false;
	});
	$('#mwCont .mypage .close').click(function(){
		$('.mwLayer').removeClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer .mwCont').css('display','none');
		$("#calendar").css('display','none');
		return false;
	});

	/* mypage reservation extend */
    // ssun - mypage/reservation 으로 이동
	// $("#mypage .rvExtendB").click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('rvExtendLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .rvExtend').css('display','block');
	// 	return false;
	// });

	/* mypage reservation cancel */
    // ssun - 해당 페이지로 코드 이동
	// $("#mypage .rvCancelB").click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('rvCancelLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .rvCancel').css('display','block');
	// 	return false;
	// });

	/* mypage coupon add */
	$("#mypage .couponAddB").click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('couponAddLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .couponAdd').css('display','block');
		return false;
	});

	/* zipcode */
	$(".zipcodeB").click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('zipcodeLy');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .zipcodeL').css('display','block');

        //ssun - 입력부 자동 포커싱
        $('.mwLayer .zipcodeL').find('#search_input').focus();

		return false;
	});

	/* quick invite */
	// $(".aside .quick1").click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('inviteLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .inviteL').css('display','block');
	// 	return false;
	// });

	$('.oilForm #oilCarSelect').focus(function(){
		$('.oilForm .oilCarList').addClass('show');
	});

	$('.oilLy').find('.oilL').mousedown(function(event){
		$('.oilForm .oilCarList').removeClass('show');
	});

	$(".oilForm .submit").click(function(){
		var car      = $('.oilSelect option:selected').val();
		var distance = $('#oilDistance').attr('value');

		if( car      != '' &&
			distance != '' &&
			/^\d+$/.test(distance) ) {
			var result = distance * car;

			$('.oilResult span').text(number_format(result));

			$('.oilTxt').css('display','none');
			$('.oilResult').css('display','block');
			$('.oilResult span').css('display','inline')
		}
		else {
			$('.oilTxt').css('display','block');
			$('.oilResult').css('display','none');
		}
		return false;
	});

	/* quick request */
	// $(".aside .quick3").click(function(){
	// 	$('.mwLayer').addClass('open');
	// 	$('.mwLayer #mwCont').removeClass();
	// 	$('.mwLayer #mwCont').addClass('requestLy');
	// 	$('.mwLayer .mwCont').css('display','none');
	// 	$('.mwLayer .requestL').css('display','block');
	// 	return false;
	// });

	// $("#requestList .deleteBtn").click(function(){
	// 	$(this).parent().next('.pw').css('display','block');
	// 	return false;
	// });
	// $("#requestList .deleteCancel").click(function(){
	// 	$(this).parent().css('display','none');
	// 	return false;
	// });

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

    $(".mwLayer").bind('addClass', function(e,className){
			if(className =='open'){
				$(this).css('margin-top',$(window).scrollTop());
				$(this).height($('.mwLayer').height()-$(window).scrollTop());
			}
    });

	/* simple join */
	$('#content .simple_join').click(function(){
		$('.mwLayer').addClass('open');
		$('.mwLayer #mwCont').removeClass();
		$('.mwLayer #mwCont').addClass('joinSNS_Wrap');
		$('.mwLayer .mwCont').css('display','none');
		$('.mwLayer .joinSNS').css('display','block');
		return false;
	});

	$("#is_agree").click( function(){
		$(this).toggleClass("on");
	});

	$("#is_agree_credit").click( function(){
		$(this).toggleClass("on");
	});

	$("#mkt_agree_label").click(function(){
		$('.mkt_agree').toggleClass("on");

		if($('.mkt_agree').hasClass('on')){
			$('.mkt_agree_sub').addClass('on');
		}
		else{
			$('.mkt_agree_sub').removeClass('on');
		}

		if($(this).hasClass('doupdate')){
			agree_info_update();
		}

		return false;
	});

	$("#mkt_agree_email_label, #mkt_agree_sms_label, #mkt_agree_push_label").click(function(){
		var $this	= $(this),
			$mkt_agree = $(".mkt_agree"),
			$email	= $("#mkt_agree_email"),
			$sms	= $("#mkt_agree_sms"),
			$push	= $("#mkt_agree_push");

		if($this.attr('id') == "mkt_agree_email_label") $email.toggleClass("on");
		if($this.attr('id') == "mkt_agree_sms_label") $sms.toggleClass("on");
		if($this.attr('id') == "mkt_agree_push_label") $push.toggleClass("on");

		if($email.hasClass('on') && $sms.hasClass('on') && $push.hasClass('on')){
			$mkt_agree.addClass('on');
		}
		else{
			$mkt_agree.removeClass('on');
		}

		if($this.hasClass('doupdate')){
			agree_info_update();
		}

		return false;
	});
});

(function(){
    var originalAddClassMethod = jQuery.fn.addClass;

    jQuery.fn.addClass = function(){
        var result = originalAddClassMethod.apply( this, arguments );
        jQuery(this).trigger('addClass',arguments[0]);
        return result;
    }
})();

var StringBuffer = function() {
	this.buffer = [];
};

StringBuffer.prototype = {
	clear : function() {
		this.buffer = [];
	},
	toString : function() {
		return this.buffer.join("");
	},
	append : function(str) {
		this.buffer.push(str);
		return this;
	}
};
function quick_invite(){
	$('.mwLayer').addClass('open');
	$('.mwLayer #mwCont').removeClass();
	$('.mwLayer #mwCont').addClass('inviteLy');
	$('.mwLayer .mwCont').css('display','none');
	$('.mwLayer .inviteL').css('display','block');
	return false;
}

// 새창으로 post값 전달하기
function postPopup(url, op, data) {
  document.domain = 'socar.kr';
  window.open(url, 'post_popup', op);
  var formHtm = '';
  formHtm += '<form id="post_popup_form" target="post_popup" method="post" action="'+url+'">';
  $.each(data, function(key, val) {
    formHtm += '<input type="hidden" name="'+key+'" value="'+val+'">';
  });
  formHtm += '</form>';
  $('body').append(formHtm);
  var tempForm = $('#post_popup_form');
  tempForm.submit();
  tempForm.remove();
}
