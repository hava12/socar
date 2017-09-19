<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
   <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/favicon.png"/>
	 
    <title>
      Acme | Home
    </title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/theme.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-reset.css" rel="stylesheet"/>
    <!-- <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->

    <!--external css-->
    <link href="${pageContext.request.contextPath}/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/flexslider.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.carousel.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.theme.css"/>

    <link href="${pageContext.request.contextPath}/bootstrap/css/superfish.css" rel="stylesheet" media="screen"/>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>
	<script>
		var goCouponList = function(){
			location.href="<c:url value='/Coupon/CouponList.do' />";	
		}
		var goEditCoupon = function(){
			location.href="<c:url value='/Coupon/EditCoupon.do' />?cou_code=${dto.cou_code}";	
		}
		
	</script>
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>쿠폰정보 상세보기</h2><br/><br/>
				      
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>쿠폰코드</label></td>
					      	  		<td>
								      	<span>${dto.cou_code}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쿠폰명</label></td>
					      	  		<td>
								      	<span>${dto.cou_name}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쿠폰부가설명</label></td>
					      	  		<td>
					      	  			<textarea  name="cou_desc" rows="10" cols="80" class="form-control" disabled="disabled" style="margin-left: 15px;">${dto.cou_desc}</textarea>
								        
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>할인금액</label></td>
					      	  		<td>
					      	  			 	<span>${dto.cou_sale}</span> 원		
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최소사용가능시간</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_mintime }</span> 시간
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최대사용가능시간</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_maxtime }</span> 시간
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최소나이</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_minage }</span> 살
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최소탑승수</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_minuse }</span> 명
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쿠폰유효기간</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_exp }</span> 까지
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최대할인율</label></td>
					      	  		<td>
					      	  			<span>${dto.max_sale_per }</span> %
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>신규존 전용</label></td>
					      	  		<td>
					      	  			<span>${dto.cou_only_new }</span>	
					      	  		</td>
					      	  </tr>	
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info" onclick="goEditCoupon()">수정하기</button>
				      <button type="button" class="btn btn-info" onclick="goCouponList()">리스트 보기</button>
 
				  </div><!-- /example -->



 		</div>

    <!--small footer start -->
		<c:import url="/template/SmallFooter.jsp" />
    <!--small footer end-->

    <!-- js placed at the end of the document so the pages load faster
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js">
</script>
-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.8.3.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/hover-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.parallax-1.1.3.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/wow.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.carousel.js">
    </script>

    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.easing.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/link-hover.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/superfish.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/jquery.cslider.js">
    </script>
    <script type="text/javascript">
      $(function() {

        $('#da-slider').cslider({
          autoplay    : true,
          bgincrement : 100
        });

      });
    </script>

    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/bootstrap/js/common-scripts.js">
    
    <script>
      $('a.info').tooltip();
      $(window).load(function() {
        $('.flexslider').flexslider({
          animation: "slide",
          start: function(slider) {
            $('body').removeClass('loading');
          }
        });
      });
      $(document).ready(function() {
        $("#owl-demo").owlCarousel({
          items : 4
        });
      });
      jQuery(document).ready(function(){
        jQuery('ul.superfish').superfish();
      });

      new WOW().init();

    </script>
  </body>

</html>