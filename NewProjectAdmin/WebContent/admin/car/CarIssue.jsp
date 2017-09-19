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
		
		for(var i=year;i>=year-2;i--){
			sel_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
		for(var i=1;i<=12;i++){
			if(i<10){i="0"+i}
			if(i==mon){
				sel_month.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";
			}
			else{
				sel_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
		}
		var lastdate = new Date(year,1);
		lastdate = new Date(lastdate-1);
	
		for(var i=1;i<=lastdate.getDate();i++){
			if(i<10){i = "0"+i;}
			if(i==day){
				sel_day.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";					
			}
			else{
				sel_day.innerHTML += "<option value='"+i+"'>"+i+"</option>";					
			}
		}
		
	};
	</script>
		
	<script>
	function goZone() {
		location.href="<c:url value='/ZONE/View.do?soz_code=${param.soz_code}'/>";
	}
	function addCar(){
		location.href="<c:url value='/CAR/CarAdd.do?soz_code=${param.soz_code}'/>"
	}
	
	
	function carInsert(){
		
		if(document.getElementById("car_code_id").value == ""){
			alert("차량 보유 코드를 입력해주세요");
			document.getElementById("car_code_id").focus();
			return false;
		}
		if(document.getElementById("car_code_id").value.length > 15){
			alert("차량 보유 코드를 15자내로 입력해주세요");
			document.getElementById("car_code_id").focus();
			return false;
		}
		/* 차량등록이 있으면 주석풀어주세요.
		
		else if(document.getElementById("car_name_id").value == "차량이 없습니다 등록부터 하세요"){
			alert("차량명 코드를 선택해주세요.");
			document.getElementById("car_name_id").focus();
			return false;
		}
		else if(document.getElementById("soz_code_id").value == "차량이 없습니다 등록부터 하세요"){
			alert("차량명 코드를 선택해주세요.");
			document.getElementById("soz_code_id").focus();
			return false;
		}
		 */
		else if(document.getElementById("car_num_id").value == ""){
			alert("차량 번호를 입력해주세요");
			document.getElementById("car_num_id").focus();
			return false;
		}
		else if(document.getElementById("car_num_id").value.length == 9){
			alert("차량번호를 9자리 이내로 적어주세요");
			document.getElementById("car_num_id").focus();
			return false;
		}
		
		else if(document.getElementById("car_safe_id").value == ""){
			alert("차량 안전 옵션을 입력해주세요");
			document.getElementById("car_safe_id").focus();
			return false;
		}
		else if(document.getElementById("car_safe_id").value.length > 100){
			alert("차량 안전 옵션은 100자이내로 해주세요");
			document.getElementById("car_safe_id").focus();
			return false;
		}
		else if(document.getElementById("car_add_id").value == ""){
			alert("차량 부가 옵션을 입력해주세요");
			document.getElementById("car_add_id").focus();
			return false;
		}
		else if(document.getElementById("car_add_id").value.length > 100){
			alert("차량 부가 옵션은 100자이내로 해주세요");
			document.getElementById("car_add_id").focus();
			return false;
		}
		else if(document.getElementById("car_nick_id").value == ""){
			alert("차량별칭을 입력해주세요");
			document.getElementById("car_nick_id").focus();
			return false;
		}
		else if(document.getElementById("car_nick_id").value.length > 14){
			alert("차량 별칭은 14자이내로 해주세요");
			document.getElementById("car_nick_id").focus();
			return false;
		}
		
	}
	
	</script>
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>차량 입고</h2><br/><br/>
				    <form action="<c:url value='/CAR/CarIssue.do'/>" method="post">
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	 
					      	  <tr>
					      	  		<td><label>차량명 코드</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
					      	  			<select class="form-control" id="car_name_id" name="car_name_code">
					      	  				<c:choose>
					      	  					<c:when test="${empty car_list}">
					      	  						<option>차량이 없습니다 등록부터 하세요</option>
					      	  					</c:when>
					      	  					<c:otherwise>
					      	  						<c:forEach items="${car_list}" var="item">
					      	  							<option value="${item.car_name_code}">${item.car_type_code} - ${item.car_name}</option>
					      	  						</c:forEach>
					      	  					</c:otherwise>
					      	  				</c:choose>
					      	  			</select>
								        </div>
								        <button type="button" class="btn btn-info" onclick="addCar()">차량등록</button>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쏘카존 코드</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
					      	  			<select class="form-control" id="soz_code_id" name="soz_code">
					      	  				<c:choose>
					      	  					<c:when test="${empty zone_list}">
					      	  						<option>차량이 없습니다 등록부터 하세요</option>
					      	  					</c:when>
					      	  					<c:otherwise>
					      	  						<c:forEach items="${zone_list}" var="item">
					      	  							<option value="${item.soz_code}">${item.soz_code} - ${item.soz_name}</option>
					      	  						</c:forEach>
					      	  					</c:otherwise>
					      	  				</c:choose>
					      	  			</select>
								        </div>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  	<td><label>차량발급일</label></td>
					      	  		<td>
					      	  			<div class="col-xs-3" >
								        <select class="form-control" id="year" name="car_i_date_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="month" name="car_i_date_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="day" name="car_i_date_day">
								        </select> 
								        </div>
								        <p class="col-xs-3">일</p>					      	  			
 					      	  		</td> 					      	  		
					      
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 번호</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input style="font-size: 1em;" id="car_num_id" type="text" name="car_i_num"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량안전옵션</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input style="font-size: 1em;" id="car_safe_id" type="text" name="car_i_safe_option"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량부가옵션</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input style="font-size: 1em;" id="car_add_id" type="text" name="car_i_add_option"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량별칭</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input style="font-size: 1em;" id="car_nick_id" type="text" name="car_nick"/>
								     	</div>
					      	  		</td>
					      	  </tr>	  
					      </tbody>
					    
					       </table>
				    
				      	<button type="submit" class="btn btn-info" onclick="return carInsert()">등록하기</button>				    
						<button type="button" class="btn btn-info" onclick="goZone()">취소</button>
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