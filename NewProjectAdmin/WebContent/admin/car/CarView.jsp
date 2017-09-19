<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
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
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>
    <script>
    	var goList = function() {
    		location.href="<c:url value='/CAR/CarList.do'/>";
		}
    	var goEdit = function() {
    		location.href="<c:url value='/CAR/CarEdit.do?car_name_code=${dto.car_name_code}'/>";
		}
    	var goDelete = function() {
    		location.href="<c:url value='/CAR/CarDelete.do?car_name_code=${dto.car_name_code}'/>";
		}
    </script>

  </head>

  <body>
    <c:import url="/template/Header.jsp" />
    
    
       
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>쿠폰 입력</h2><br/><br/>
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th style="width: 30%">항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>차량명 코드</label></td>
					      	  		<td>
								      	<span>${dto.car_name_code}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 타입</label></td>
					      	  		<td>
					      	  			<span>${dto.car_type_code}</span>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량명</label></td>
					      	  		<td>
					      	  			<span>${dto.car_name}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 이미지</label></td>
					      	  		<td>
					      	  				${dto.car_img}
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 설명</label></td>
					      	  		<td><span>${dto.car_desc}</span></td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>내륙 기준 대여 요금(10분 기준)</label></td>
					      	  		<td>
					      	  			<span>${dto.car_land_price} 원</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>제주 기준 대여 요금(10분 기준)</label></td>
					      	  		<td>
					      	  			<span>${dto.car_jeju_price} 원</span>
					      	  		</td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>쏘카 주중 가격</label></td>
					      	  		<td>
					      	  			<span>${dto.car_price_so_wd} 원</span>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>쏘카 주말 가격</label></td>
					      	  		<td>
					      	  			<span>${dto.car_price_so_we} 원</span>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>주행 요금</label></td>
					      	  		<td>
					      	  			<span>${dto.car_drive_price} 원</span>
								     	
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>차량 제조사</label></td>
					      	  		<td>
					      	  			<span>${dto.car_com}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>연료 정보</label></td>
					      	  		<td>
					      	  			<span>${dto.car_fuel}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>변속 방식</label></td>
					      	  		<td>
					      	  			<span>${dto.car_trans}</span>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>승차 정원</label></td>
					      	  		<td>
					      	  			<span>${dto.car_max_per} 명</span>
								     	
					      	  		</td>
					      	  </tr>
					      	  
					      </tbody>		    
					       </table>
				    
				      <button type="button" class="btn btn-info" onclick="goEdit()">수정하기</button>
				      <button type="button" class="btn btn-info" onclick="goDelete()">삭제하기</button>
				      <button type="button" class="btn btn-info" onclick="goList()">리스트 보기</button>
			
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
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/hover-dropdown.js">
    </script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.js">
    </script>

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