<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ssun.js?1505264054"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/json3.min.js?1505264054"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/common.js?1505264054"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/day-picker.js?1505264054"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.block.ui.min.js?1505264054"></script>
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-30551922-1', 'auto');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
		</script>

<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/template/css/rental.css?v=20170731' />
<style>
  .guide-title { margin-top: 22px; color: #333; font-size: 12px; font-weight: bold; }
  .guide-content-box { margin-top: 10px; padding: 14px 0 14px 19px; border: 1px solid #ededed; background: #fbfbfb; }
</style>
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
  });
</script>
</head>

<body id="rental">
  <div id="wrap">
    	<jsp:include page="/template/Header.jsp"/>

    <div id="container">
      <div id="content">
        <div class="index">
          <img src='${pageContext.request.contextPath}/template/image/top_menu_img_2.png' alt="이용요금을 알려드립니다." />
        </div>
        <div class="box">
          <div class="group">
            <h3><img src='${pageContext.request.contextPath}/template/image/so_fare.png' alt="쏘카 회원제"></h3>
            <p><img src='${pageContext.request.contextPath}/template/image/rental_txt13_20150727.gif' alt="연회비 완전 무료, 대여요금 최대 80% 할인 등 쏘카만의 차별화된 회원혜택을 확인해보세요."></p>
            <table cellspacing="0" class="cols">
              <colgroup><col><col width="600" span="2"></colgroup>
              <thead>
                <tr>
                  <th><strong>구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;분</strong></th>
                  <th><strong>상세내용</strong></th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <th>연&nbsp;회&nbsp;비</th>
                  <td>무료</td>
                </tr>
                <tr>
                  <th>가입조건</th>
                  <td>만 21세 이상, 운전면허 취득 후 1년 이상 경과</td>
                </tr>
                <tr>
                  <th>필수조건</th>
                  <td>본인 명의 운전면허증 및 신용/체크카드 등록</td>
                </tr>
                <tr>
                  <th>대여요금</th>
                  <td>차종별 차등 할인</td>
                </tr>
                <tr>
                  <th>가입혜택</th>
                  <td>신규 가입 시 할인 쿠폰 지급</td>
                </tr>
                <tr>
                  <th>이용혜택</th>
                  <td>이용 횟수에 따라 다양한 혜택 지급</td>
                </tr>
              </tbody>
            </table>

            <ul>
              <li>가입 및 이용 혜택은 당사 정책에 따라 변경될 수 있습니다.</li>
            </ul>

            
            <div style="margin-top:30px;display:block;overflow:hidden;width:100%;">
              <a href="https://goo.gl/QFGQtZ"><img src='${pageContext.request.contextPath}/template/image/banner_20160530.jpg' alt=""></a>
            </div>
            
          </div>

          <div class="group">
            <h3><img src='${pageContext.request.contextPath}/template/image/socarzone_drive_fee.png' alt="전국 쏘카존 대여요금 안내"></h3>
            <p><img src='${pageContext.request.contextPath}/template/image/rental_txt14.gif?v=1' alt="타면된다, 쏘카!&#8203; 10분단위로 자유롭게 신나는 드라이빙을 즐기세요! 다양한 쿠폰혜택과 모바일에서만 만나볼 수 있는 특가상품까지 부담없이 누리세요!"></p>

            <table cellspacing="0" class="cols">
              <colgroup>
              <col width="82">
              <col width="172">
              <col width="90">
              <col width="90">
              <col width="90">
              <col width="110">
              <col>
            </colgroup>

            <thead>
              <tr>
                <th rowspan="2">차종</th>
                <th rowspan="2">모델</th>
                <th rowspan="2">내륙<br/>기준대여요금<br>(10분기준)</th>
                <th rowspan="2">제주<br/>기준대여요금<br>(10분기준)</th>
                <th colspan="2">쏘친만을 위한 <span style="color:#f63325">특별할인!</span></th>
                <th rowspan="2">주행요금<br>(주행거리 Km당)</th>
              </tr>
              <tr>
                <th class="strong">주중</th>
                <th style="width: 13%">주말</th>
              </tr>
            </thead>

            <tbody>
              <tr>
                <th rowspan="3" class="first">경형A<br></th>
                <td class="tal">모닝</td>
                <td>1,200원</td>
                <td>-</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">올뉴모닝</td>
                <td>1,200원</td>
                <td>-</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">넥스트스파크</td>
                <td>1,200원</td>
                <td>2,180원</td>
                <td class="strong">720원~</td>
                <td>960원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <th class="first">경형B</th>
                <td class="tal">레이</td>
                <td>1,250원</td>
                <td>2,200원</td>
                <td class="strong">750원~</td>
                <td>1,000원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="2" class="first">소형</th>
                <td class="tal">프라이드</td>
                <td>1,430원</td>
                <td>2,210원</td>
                <td class="strong">850원~</td>
                <td>1,140원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">엑센트</td>
                <td>1,430원</td>
                <td>2,210원</td>
                <td class="strong">850원~</td>
                <td>1,140원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="6" class="first">준중형</th>
                <td class="tal">K3</td>
                <td>1,580원</td>
                <td>2,400원</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">아반떼</td>
                <td>1,580원</td>
                <td>-</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">아반떼AD</td>
                <td>1,580원</td>
                <td>2,400원</td>
                <td class="strong">950원~</td>
                <td>1,260원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">i30</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">볼트</td>
                <td>2,860원</td>
                <td>-</td>
                <td class="strong">1,720원~</td>
                <td>2,290원~</td>
                <td>90원</td>
              </tr>
              <tr>
                <td class="tal">아이오닉 일렉트릭</td>
                <td>3,000원</td>
                <td>3,550원</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td><span style="text-decoration: line-through;">100원</span> → 0원</td>
              </tr>
              <tr>
                <th rowspan="7" class="first">중형</th>
                <td class="tal">K5</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">K5(LPG)</td>
                <td>2,160원</td>
                <td>2,810원</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>150원</td>
              </tr>
              <tr>
                <td class="tal">LF 쏘나타</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">LF 쏘나타(LPG)</td>
                <td>2,160원</td>
                <td>2,810원</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>150원</td>
              </tr>
              <tr>
                <td class="tal">SM5</td>
                <td>2,160원</td>
                <td>-</td>
                <td class="strong">1,300원~</td>
                <td>1,730원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">말리부</td>
                <td>2,660원</td>
                <td>-</td>
                <td class="strong">1,600원~</td>
                <td>2,130원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <td class="tal">스팅어</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>200원</td>
              </tr>
              <tr>
                <th rowspan="2" class="first">대형</th>
                <td class="tal">그랜저HG</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>190원</td>
              </tr>
              <tr>
                <td class="tal">그랜저HG(LPG)</td>
                <td>4,160원</td>
                <td>-</td>
                <td class="strong">2,080원~</td>
                <td>2,910원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <th rowspan="6" class="first">SUV</th>
                <td class="tal">QM3(경유)</td>
                <td>3,000원</td>
                <td>-</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>120원</td>
              </tr>
              <tr>
                <td class="tal">티볼리(경유)</td>
                <td>3,000원</td>
                <td>3,210원</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">트랙스(경유)</td>
                <td>3,000원</td>
                <td>-</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">스포티지(경유)</td>
                <td>3,000원</td>
                <td>-</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">투싼(경유)</td>
                <td>3,000원</td>
                <td>-</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">올란도(경유)</td>
                <td>3,000원</td>
                <td>3,530원</td>
                <td class="strong">1,800원~</td>
                <td>2,400원~</td>
                <td>180원</td>
              </tr>
              <tr>
                <th rowspan="2" class="first">승합차</th>
                <td class="tal">카니발 11인승(경유)</td>
                <td>3,360원</td>
                <td>-</td>
                <td class="strong">1,830원~</td>
                <td>2,560원~</td>
                <td>220원</td>
              </tr>
              <tr>
                <td class="tal">그랜드 스타렉스(경유)</td>
                <td>3,830원</td>
                <td>3,830원</td>
                <td class="strong">1,910원~</td>
                <td>3,060원~</td>
                <td>240원</td>
              </tr>
              <tr>
                <th rowspan="5" class="first">수입차</th>
                <td class="tal">미니쿠퍼</td>
                <td>3,500원</td>
                <td>-</td>
                <td class="strong">1,750원~</td>
                <td>2,800원~</td>
                <td>220원</td>
              </tr>
              <tr>
                <td class="tal">미니5도어</td>
                <td>3,660원</td>
                <td>4,330원</td>
                <td class="strong">1,830원~</td>
                <td>2,920원~</td>
                <td>220원</td>
              </tr>
              <tr>
                <td class="tal">비틀(경유)</td>
                <td>3,830원</td>
                <td>-</td>
                <td class="strong">1,910원~</td>
                <td>3,060원~</td>
                <td>160원</td>
              </tr>
              <tr>
                <td class="tal">BMW 520D(경유)</td>
                <td>7,330원</td>
                <td>8,830원</td>
                <td class="strong">3,660원~</td>
                <td>5,860원~</td>
                <td>170원</td>
              </tr>
              <tr>
                <td class="tal">BMW X3(경유)</td>
                <td>7,500원</td>
                <td>9,160원</td>
                <td class="strong">3,750원~</td>
                <td>6,000원~</td>
                <td>190원</td>
              </tr>

            </tbody>
          </table>

          <br>
          <span style="color: #333">※ 주중/주말 기준</span>
          <br>
          <span style="color: #333">　·  </span><span style="color: #333">주중 - 일 19:00 ~ 금 19:00 / 주중 심야 - 00:00 ~ 06:00</span>
          <br>
          <span style="color: #333">　·  </span><span style="color: #333">주말 - 금 19:00 ~ 일 19:00 (공휴일 및 당사 지정 성수기 포함)</span>

          <ul><br>
            <li>최소 30분부터 10분 단위로 원하는 시간만큼 예약이 가능합니다. (최대 5일)</li>
            <li>1일 기준대여요금은 10시간 요금을 기준으로 책정됩니다.</li>
            <li>주행요금은 차량 이용 후 실제 주행거리에 따라 부과됩니다. 주행요금 계산기로 예상 비용을 미리 확인해보세요. <a href="#" class="oil">주행요금 계산기</a></li>
            <li>보험료는 대여 시 선택하신 자기부담금에 따라 별도 부과됩니다.</li>
            <li>편도/부름 서비스 이용 시에는 차량 회송비용 등을 고려한 별도 요금이 추가 과금될 수 있습니다.</li>
            <li>제주공항 쏘카존의 경우 별도 대여요금이 적용됩니다.</li>
          </ul>

          <div class="guide-title">요금 변동사항 안내</div>
          <ul class="guide-content-box">
            <li>대여요금 및 주행요금은 당사 내부정책/유가변동에 따라 변경될 수 있습니다.</li>
            <li>대여요금은 지역별, 성수기/비수기 등에 따라 탄력요금제로 운영하므로, 위에 안내된 요금은 결제 시 요금과 다를 수 있습니다.</li>
            <li>요금표의 10분 기준대여요금은 원단위 절사한 것으로 1일 기준대여요금과 다를 수 있습니다.</li>
            <li>요금표의 쏘친만을 위한 특별할인 금액은 최저가 기준으로 실제 예약 시 지역/시간대별 할인율에 따라 다를 수 있습니다.</li>
          </ul>

          <div class="guide-title">할인 안내</div>
          <ul class="guide-content-box">
            <li>24시간 초과 예약시 예약시간에 따라 최대 70%까지 할인됩니다. </li>
            <li>주행거리 100km 초과 시, 초과된 주행요금에서 20%가 할인됩니다.</li>
            <li style="background: none; padding-left: 0;">
              ☞ <a href="http://www.socar.kr/notice/565" style="font-size: inherit;">장시간·장거리 할인 안내</a>
            </li>
          </ul>
        </div>

      <div class="group">
        <h3><img src='${pageContext.request.contextPath}/template/image/rental_txt8.gif' alt="보험안내"></h3>
        <p><img src='${pageContext.request.contextPath}/template/image/protection_guide_txt.png' alt="쏘카는 자동차종합보험 및 차량손해 면책제도가 모든 차량에 적용되며, 기본 대여요금에 포함되어 있어 일반 렌트카처럼 별도의 보험료를 지불할 필요가 없습니다."></p>

        <table cellspacing="0" class="cols">
          <tbody>
            <tr>
              <th>자기차량 손해 면책제도</th>
              <td>
                사고 1건당 자기부담금 선택가능<br/>
                자기부담금 최대 30만원 : 1일 기준 7,000원~<br/>
                자기부담금 최대 70만원 : 1일 기준 5,000원~
              </td>
            </tr>
            <tr>
              <th>자동차 종합보험</th>
              <td>
                대인배상 (무한)<br/>
                대물배상 (1억원 한도)<br/>
                자손 (1천 5백만원 한도)
              </td>
            </tr>
            <tr>
              <th>휴차보상료</th>
              <td>
                수리기간이 길어져도 최대 5일까지 휴차일 산정<br/>
                (휴차료 산정 기준 : 해당 차량 1일 기준요금의 50%)<br/><br/>
                단, 폐차 발생시 별도의 휴차일 산정 기준을 따릅니다.</td>
              </tr>
            </tbody>
          </table>
          <ul>
            <li>대여시 선택하신 보험료에 따라 사고 처리 비용을 실비 정산하여 자기부담금이 부과됩니다. 사고 처리비용이 선택하신 자기부담금 미만인 경우 실비 정산을 하며, 이상인 경우 자기부담금만 지불하시면 됩니다.<br/><a href="http://goo.gl/1kUkZz">보험안내 자세히 보기</a></li>
            <li>보험상품에 가입이 되어있더라도, 사고 발생 즉시 신고하지 않았거나 음주운전 사고로 인한 손해, 예약자 이외의 운전자가 일으킨 사고, 1종보통 이상의 면허 소지자 외에 승합차량운전 등 쏘카대여약관에 의거한 손해면책 사항에 해당하는 경우 자기차량 손해면책제도에서 제외되며, 법적 고발 및 이용 불가 조치가 행해질 수 있습니다.</li>
            <li>수입차의 경우 원산지 사정에 따라 부품조달에 시간이 걸려 수리가 지연될 수 있습니다.</li>
            <li>차량 이용 및 보험에 관한 사항은 쏘카 자동차대여약관에 따릅니다. 쏘카 회원이용약관 및 자동차대여약관은 차량 예약 전에 꼭 숙지해주세요.<br><a href="/rent_terms">쏘카대여약관 자세히보기</a></li>
          </ul>
        </div>

      <div class="group">
        <h3><img src='${pageContext.request.contextPath}/template/image/protection_fee_guide.png' alt="보험안내"></h3>
        <p><img src='${pageContext.request.contextPath}/template/image/protection_guide_txt_2.png' alt="쏘카는 자동차종합보험 및 차량손해 면책제도가 모든 차량에 적용되며, 기본 대여요금에 포함되어 있어 일반 렌트카처럼 별도의 보험료를 지불할 필요가 없습니다."></p>
        <table cellspacing="0" class="cols">
          <colgroup>
            <col width="90">
            <col width="90">
            <col width="90">
            <col width="90">
            <col width="90">
          </colgroup>

          <thead>
            <tr>
              <th rowspan="2">모델</th>
              <th colspan="2">손해 면책부담금 최대 30만원 선택</th>
              <th colspan="2">손해 면책부담금 최대 70만원 선택</th>
            </tr>
            <tr>
              <th>1시간 기준</th>
              <th>1일 기준</th>
              <th>1시간 기준</th>
              <th>1일 기준</th>
            </tr>
          </thead>

          <tbody>
           
            <c:if test="${empty model_list}" var="model_not_exist">
            	<tr>
            		<td colspan="5">등록된 차량이 없습니다</td>
            	</tr>
            </c:if>
            <c:if test="${not model_not_exist}">
            	<c:forEach items="${model_list}" var="item">
            	<tr>
						<td class="first">${item.car_type}</td>
						<td><fmt:formatNumber pattern="###,###" value="${item.car_insurance_one_hour}" /></td>
						<td><fmt:formatNumber pattern="###,###" value="${item.car_insurance_one_day}" /></td>
						<td><fmt:formatNumber pattern="###,###" value="${item.car_insurance_two_hour}" /></td>
						<td><fmt:formatNumber pattern="###,###" value="${item.car_insurance_two_day}" /></td>
            	</tr>
            	</c:forEach>
            </c:if>
          </tbody>
        </table>
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
			
<!-- 쏘카존 신청하기 -->
			<jsp:include page="/template/Socarzon.jsp"/>
			
			
			<!-- 친구추천 -->
			
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
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/kakao.min.js?1505264054" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/sns_interlocking.js?1505264054" charset="utf-8"></script>

    <a href="#" class="close">닫기</a>
  </div>
</div>
</div>
</body>
</html>