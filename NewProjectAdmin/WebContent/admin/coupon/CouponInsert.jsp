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
			
		};
		var go= function(obj){
			
			alert(obj[obj.selectedIndex].value);
			
		};
		
		window.onload = function(){
			
			var sel_year = document.getElementById("year");
			var sel_month = document.getElementById("month");
			var sel_date = document.getElementById("date");
			
			
			var now = new Date();
			var year = now.getFullYear();
			var mon = now.getMonth()+1;
			var date = now.getDate();
			
			for(var i=year+3;i>=year;i--){
				sel_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=1;i<=12;i++){
				sel_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=1;i<=31;i++){
				sel_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
		};
	</script>
	
	<script>
	
	function checkval(){

		
		if(document.getElementById("name_id").value == ""){
			alert("쿠폰명을 입력해주세요");
			document.getElementById("name_id").focus();
			return false;
		}
		
		else if(document.getElementById("name_id").value.length >= 15){
			alert("15자이내로 입력해주세요");
			document.getElementById("name_id").focus();
			return false;
		}
		else if(document.getElementById("desc_id").value == ""){
			alert("부가설명을 입력해주세요");
			document.getElementById("desc_id").focus();
			return false;
		}

		else if(document.getElementById("sale_id").value == ""){
			alert("할인금액을 입력해주세요");
			document.getElementById("sale_id").focus();
			return false;
		}
		
		else if(document.getElementById("sale_id").value < 10){
			alert("할인금액을 10원이상으로 해주세요");
			document.getElementById("sale_id").focus();
			return false;
		}	
		
		else if(document.getElementById("minage_id").value == ""){
			alert("나이를 입력해주세요");
			document.getElementById("minage_id").focus();
			return false;
		}
		else if(document.getElementById("minage_id").value < 19){
			alert("만19세 이상만가능합니다.");
			document.getElementById("minage_id").focus();
			return false;
		}
		else if(document.getElementById("minage_id").value > 150 || document.getElementById("minage_id").value < 0){
			alert("나이를 제대로 입력해주세요.");
			document.getElementById("minage_id").focus();
			return false;
		}
		
		else if(document.getElementById("minuse_id").value == ""){
			alert("최소탑승수를 입력해주세요.");
			document.getElementById("minuse_id").focus();
			return false;
		}
		
		else if(document.getElementById("minuse_id").value < 1){
			alert("최소탑승수를 1명이상 입력하셔야합니다");
			document.getElementById("minuse_id").focus();
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
				    <form action="<c:url value='/Coupon/InsertCoupon.do'/>" method="post">
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>쿠폰명</label></td>
					      	  		<td>
								      	<div class="col-xs-5">
								        <input type="text" class="form-control" id="name_id" name="cou_name"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쿠폰부가설명</label></td>
					      	  		<td>
					      	  			<textarea  name="cou_desc" id="desc_id" rows="10" cols="80" class="form-control" style="margin-left: 15px;"></textarea>
								        
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>할인금액</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" id="sale_id" name="cou_sale"/>
								     	</div>
								     	<p class="col-xs-1">원</p>
					      	  		</td>
					      	  </tr>
					      	  
					      	  <tr>
					      	  		<td><label>쿠폰유효기간</label></td>
					      	  		<td>
					      	  			<div class="col-xs-3" >
								        <select class="form-control" id="year" name="cou_exp_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="month" name="cou_exp_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="date" name="cou_exp_date">
								        </select> 
								        </div>
								        <p class="col-xs-3">일</p>
					      	  			
 					      	  		</td>
					      	  </tr>
					      	 
					      </tbody>
					    <br/><br/>
					       </table>
				    <br/><br/><br/>
				      <button type="submit" class="btn btn-info" onclick="return checkval()">입력하기</button>
				      <button type="button" class="btn btn-info" onclick="goCouponList()">리스트 보기</button>
			
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