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
	
	window.onload = function(){
		
		var sel_year = document.getElementById("year");
		var sel_month = document.getElementById("month");
		var sel_day = document.getElementById("day");
		
		
		var now = new Date();
		var year = now.getFullYear();
		var mon = now.getMonth()+1;
		var day = now.getDate();
		
		for(var i=year+3;i>=year;i--){
			sel_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
		for(var i=1;i<=12;i++){
			sel_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
		for(var i=1;i<=31;i++){
			sel_day.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
	};
	</script>
	<script>
	function goback(){
		history.back();
	}
	</script>
	
	<script>
	
function goadmin(){
		
		if(document.getElementById("car_reason_id").value == ""){
			alert("차량 폐차 사유를 입력해주세요");
			document.getElementById("car_reason_id").focus();
			return false;
		}
		else if(document.getElementById("car_reason_id").value > 500){
			alert("차량 폐차 사유를 500자이내로 적어주세요");
			document.getElementById("car_reason_id").focus();
			return false;
		}
		
		
}
	
	
	
	</script>
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>차량폐차</h2><br/><br/>
				    <form action="<c:url value='/CAR/CarWaste.do'/>" method="post">
				    <input type="hidden" name="soz_code" value="${param.soz_code}"/>
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>차량보유코드</label></td>
					      	  		<td>
								      	<div class="col-xs-5">
								      	${param.car_i_code}
								      	<input type="hidden" name="car_i_code" value="${param.car_i_code}"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  	<td><label>폐차일</label></td>
					      	  		<td>
					      	  			<div class="col-xs-3" >
								        <select class="form-control" id="year" name="car_waste_date_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="month" name="car_waste_date_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="day" name="car_waste_date_day">
								        </select> 
								        </div>
								        <p class="col-xs-3">일</p>					      	  			
 					      	  		</td> 					      	  		
					      
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량폐차사유</label></td>
					      	  		<td>  	  			
								     	<textarea rows="7" cols="80" class="form-control" name="car_w_reason" id="car_reason_id"></textarea>
					      	  		</td>
					      	  </tr>
					      	  
					      	  
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info" onclick="return goadmin()">폐차하기</button>
				      <button type="button" class="btn btn-info" onclick="goback()">취소</button>
			
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