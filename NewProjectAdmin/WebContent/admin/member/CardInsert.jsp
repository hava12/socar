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
		window.onload = function(){
			
			var years = document.getElementById("year");
			var b_year = document.getElementById("b_year");
			
			var months = document.getElementById("month");
			var b_month = document.getElementById("b_month");
			
			var dates = document.getElementById("date");
			var b_date = document.getElementById("b_date");
			
			
			var now = new Date();
			var year = now.getFullYear();
			var mon = now.getMonth()+1;
			var date = now.getDate();
			
			for(var i=year+7;i>=year;i--){
				years.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=year;i>=year-80;i--){
				b_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=1;i<=12;i++){
				months.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				b_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
			for(var i=1;i<=31;i++){
				dates.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				b_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";	
			}
		};
		
		function popSearchId() {
			window.open("<c:url value='/Member/FindId.do'/>?f_case=input_card","get","height=500,width=1200,resizable=no");
		}
		
		function goback() {
			history.back();
		}
	</script>
	
	<script>
	
function checkval(){
	
		
		if(document.getElementById("card_code").value == ""){
			alert("카드번호를 입력해주세요");
			document.getElementById("card_code").focus();
			return false;
		}
		if(document.getElementById("card_code").value.length > 15){
			alert("카드번호는 15자리까지만 입력해주세요.");
			document.getElementById("card_code").focus();
			return false;
		}
		
		/* else if(document.getElementById("smem").value == ""){
			alert("아이디를 입력해주세요.");
			document.getElementById("smem").focus();
			return false;
		} */
		else if(document.getElementById("card_pwd_one_id").value == ""){
			alert("카드 비밀번호 를입력해주세요.");
			document.getElementById("card_pwd_one_id").focus();
			return false;
		}
		else if(document.getElementById("card_pwd_two_id").value == ""){
			alert("카드 비밀번호 를입력해주세요.");
			document.getElementById("card_pwd_two_id").focus();
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
				    <form action="<c:url value='/Member/CardInsert.do'/>" method="post">
				   		  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>카드번호</label></td>
					      	  		<td>
								      	<div class="col-xs-5">
								        <input type="text" class="form-control" id="card_code" value="${dto.card_code }"  name="card_code"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>등록 아이디</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        	<input type="text" class="form-control" id="smem" name="smem" disabled="disabled"></input>
								     		<input type="hidden" id="smem_id" name="smem_id" />
								     	</div>
								     	<button type="button" onclick="popSearchId()" class="btn btn-info ">아이디 검색</button>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>카드 유효기간</label></td>
					      	  		<td>
					      	  			<div class="col-xs-3" >
								        <select class="form-control" id="year" name="card_exp_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="month" name="card_exp_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="date" name="card_exp_date">
								        </select> 
								        </div>
								        <p class="col-xs-3">일</p>
					      	  		 </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>카드 종류</label></td>
					      	  		<td>
					      	  			<input style="margin-left: 20px" type="radio" name="card_type" >법인</input>
								     	<input style="margin-left: 30px" type="radio" name="card_type" checked="checked" >개인</input>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>생년월일</label></td>
					      	  		<td>
					      	  			<div class="col-xs-3" >
								        <select class="form-control" id="b_year" name="card_birth_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="b_month" name="card_birth_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" id="b_date" name="card_birth_date">
								        </select> 
								        </div>
								        <p class="col-xs-3">일</p>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>카드 비밀번호 두자리</label></td>
					      	  		<td>
					      	  			<div class="col-xs-1">
								        <input type="text" class="form-control" maxlength="1" size="1" id="card_pwd_one_id" name="card_pwd_one"/>
								     	</div>
								    	<div class="col-xs-1">
								        <input type="text" class="form-control" maxlength="1" id="card_pwd_two_id" name="card_pwd_two"/>
								     	</div>
								     	<div class="col-xs-1">●</div>
								     	<div class="col-xs-1">●</div>
								     	
								    </td>
					      	  </tr>
					      	  
					      	
					      </tbody>
					    
					       </table>
				    
				      <button type="submit" class="btn btn-info" onclick="return checkval();">입력하기</button>
				      <button type="button" class="btn btn-info" onclick="goback()">뒤로가기</button>
			
				    </form>
				    
				    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
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