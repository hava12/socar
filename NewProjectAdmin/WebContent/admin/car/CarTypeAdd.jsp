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
	
function goInsert(){
		

		if(document.getElementById("car_type_code_id").value.length > 15){
			alert("차량 코드를 15자이내로 적어주세요");
			document.getElementById("car_type_code_id").focus();
			return false;
		}
		else if(document.getElementById("car_type_id").value == ""){
			alert("차량 타입을 입력해주세요");
			document.getElementById("car_type_id").focus();
			return false;
		}
		else if(document.getElementById("car_type_id").value.length > 15){
			alert("차량 타입은 15자이내로 적어주세요");
			document.getElementById("car_code_id").focus();
			return false;
		}
		else if(document.getElementById("insurance_hour_id").value == ""){
			alert("타입1 1시간기준을 입력해주세요");
			document.getElementById("insurance_hour_id").focus();
			return false;
		}
		else if(document.getElementById("insurance_one_day").value == ""){
			alert("타입1 1일 기준을 입력해주세요");
			document.getElementById("insurance_one_day").focus();
			return false;
		}
		
		else if(document.getElementById("type_two_hour").value == ""){
			alert("타입2 1시간기준을 입력해주세요");
			document.getElementById("type_two_hour").focus();
			return false;
		}
		else if(document.getElementById("type_two_day").value == ""){
			alert("타입2 1일 기준을 입력해주세요");
			document.getElementById("type_two_day").focus();
			return false;
		}
		
}
	
	
	</script>
	
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>차량 타입 등록</h2><br/><br/>
				    <form action="<c:url value='/CAR/CarTypeAdd.do'/>" method="post">
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	 
					      	   <tr>
					      	  		<td><label>차량타입</label></td>
					      	  		<td>
								      	<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_type" id="car_type_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	 
					      	  <tr>
					      	  		<td><label>타입1 _1시간 기준</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_insurance_one_hour" id="insurance_hour_id"/>
								     	</div><p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>타입1 _1일 기준</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" name="car_insurance_one_day" id="insurance_one_day"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>타입2 _1시간 기준</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_insurance_two_hour" id="type_two_hour"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	   <tr>
					      	  		<td><label>타입2 _1일 기준</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control"  name="car_insurance_two_day" id="type_two_day"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	   
					      	  
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info" onclick="return goInsert()">등록하기</button>
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