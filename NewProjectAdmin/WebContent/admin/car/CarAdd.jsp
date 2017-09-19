<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
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
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css" />
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>
	<script>
	function goList() {
		location.href="<c:url value='/CAR/CarList.do'/>";
	}
	</script>
	
	<script>
	function goListInsert(){
		
// 		if(document.getElementById("car_code_id").value == ""){
// 			alert("차량 코드를 입력해주세요");
// 			document.getElementById("car_code_id").focus();
// 			return false;
// 		}
		else if(document.getElementById("car_code_id").value.length > 15){
			alert("차량 코드를 15자이내로 적어주세요");
			document.getElementById("car_code_id").focus();
			return false;
		}
		//차량타입이 있을경우
		/* else if(document.getElementById("car_type").value == "차량 타입이 없습니다 등록부터 하세요"){
			alert("차량 타입를 입력해주세요");
			document.getElementById("car_type").focus();
			return false;
		} */
		
		else if(document.getElementById("car_name_id").value == ""){
			alert("차량명을 입력해주세요");
			document.getElementById("car_name_id").focus();
			return false;
		}
		else if(document.getElementById("car_name_id").value.length > 15){
			alert("차량명은 15자이내로 입력해주세요");
			document.getElementById("car_name_id").focus();
			return false;
		}

		else if(document.getElementById("car_img_id").value == ""){
			alert("차량 이미지를 넣어주세요");
			document.getElementById("car_img_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_desc_id").value == ""){
			alert("차량 설명을 입력해주세요");
			document.getElementById("car_desc_id").focus();
			return false;
		}
		else if(document.getElementById("car_desc_id").value.length > 500){
			alert("차량 설명을 500자이내로 적어주세요");
			document.getElementById("car_desc_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_land_id").value == ""){
			alert("내륙 기준 대여 요금을 입력해주세요");
			document.getElementById("car_land_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_jeju_id").value == ""){
			alert("제주 기준 대여 요금을 입력해주세요");
			document.getElementById("car_jeju_id").focus();
			return false;
		}
		
		
		else if(document.getElementById("car_price_id").value == ""){
			alert("쏘카 주중 가격을 입력해주세요");
			document.getElementById("car_price_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_price_so_id").value == ""){
			alert("쏘카 주말 가격을 입력해주세요");
			document.getElementById("car_price_so_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_price_so_id").value == ""){
			alert("쏘카 주말 가격을 입력해주세요");
			document.getElementById("car_price_so_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_drive_id").value == ""){
			alert("주행 요금을 입력해주세요");
			document.getElementById("car_drive_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_com_id").value == ""){
			alert("차량 제조사를 입력해주세요");
			document.getElementById("car_com_id").focus();
			return false;
		}
		else if(document.getElementById("car_com_id").value.length > 50){
			alert("차량제조사이름을 50자이내로 해줴요");
			document.getElementById("car_com_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_fuel_id").value == ""){
			alert("연료 정보를 입력해주세요");
			document.getElementById("car_fuel_id").focus();
			return false;
		}
		else if(document.getElementById("car_fuel_id").value.length > 10){
			alert("연료 정보를 10자이내로 입력해주세요");
			document.getElementById("car_fuel_id").focus();
			return false;
		}
		else if(document.getElementById("car_trans_id").value == ""){
			alert("변속 방식을 입력해주세요");
			document.getElementById("car_trans_id").focus();
			return false;
		}
		else if(document.getElementById("car_trans_id").value.length > 15){
			alert("변속방식에는 15자이내에서만 입력해주세요");
			document.getElementById("car_trans_id").focus();
			return false;
		}
		else if(document.getElementById("car_max_id").value == ""){
			alert("승차 정원을 입력해주세요");
			document.getElementById("car_max_id").focus();
			return false;
		}
		else if(document.getElementById("car_max_id").value > 50){
			alert("승차 정원에는 50명이내에서만 가능합니다");
			document.getElementById("car_max_id").focus();
			return false;
		}
		
	}
	
	</script>
	
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>쿠폰 입력</h2><br/><br/>
				    <form action="<c:url value='/CAR/CarAdd.do'/>" method="post">
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>차량 타입</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
					      	  			<select class="form-control" id="car_type" name="car_type_code">
					      	  				<c:choose>
					      	  					<c:when test="${empty list}">
					      	  						<option>차량 타입이 없습니다 등록부터 하세요</option>
					      	  					</c:when>
					      	  					<c:otherwise>
					      	  						<c:forEach items="${list}" var="item">
					      	  							<option value="${item.car_type_code}">${item.car_type_code} - ${item.car_type}</option>
					      	  						</c:forEach>
					      	  					</c:otherwise>
					      	  				</c:choose>
					      	  			</select>
								        </div>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량명</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_name_id" name="car_name"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 이미지</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input style="font-size: 1em;" id="car_img_id" type="file" name="car_img"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 설명</label></td>
					      	  		<td>
					      	  			
								     	<textarea rows="7" cols="80" id="car_desc_id" class="form-control" name="car_desc"></textarea>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>내륙 기준 대여 요금(10분 기준)</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_land_price" id="car_land_id"/>
								     	</div><p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>제주 기준 대여 요금(10분 기준)</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_jeju_id" name="car_jeju_price"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>쏘카 주중 가격</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_price_id" name="car_price_so_wd"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>쏘카 주말 가격</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_price_so_id" name="car_price_so_we"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>주행 요금</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_drive_id" name="car_drive_price"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>차량 제조사</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="car_com_id" name="car_com"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>연료 정보</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_fuel" id="car_fuel_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>변속 방식</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_trans" id="car_trans_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>승차 정원</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_max_per" id="car_max_id"/>
								     	</div>
								     	<p class="col-xs-1">명</p>
					      	  		</td>
					      	  </tr>
					      	  
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info" onclick="return goListInsert()">등록하기</button>
				      <button type="button" class="btn btn-info" onclick="goList()">리스트 보기</button>
			
				    </form>
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