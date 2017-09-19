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
		var count = 1;
		var exit = function(){	
			window.close();
		};
		
	</script>
	
	<script>
	
	function adEditInsert(){
		
		//부서명있을시
		/* if(document.getElementById("dept_id").value == "부서가 없습니다."){
			alert("부서명을 선택해주세요");
			document.getElementById("dept_id").focus();
			return false;
		} */
		if(document.getElementById("name_id").value == ""){
			alert("이름을 입력해주세요")
			document.getElementById("name_id").focus();
			return false;
		}
		
		else if(document.getElementById("name_id").value.length > 10){
			alert("이름 10자이내로 입력해주세요")
			document.getElementById("name_id").focus();
			return false;
		}
		else if(document.getElementById("pwd_id").value == ""){
			alert("비밀번호를 입력해주세요.")
			document.getElementById("pwd_id").focus();
			return false;
		}
		else if(document.getElementById("pwd_id").value.length > 15){
			alert("비밀번호를 15자이내로 입력해주세요")
			document.getElementById("pwd_id").focus();
			return false;
		}
		
		
	}
	
	</script>
	
  </head>

  <body>
    
   		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>어드민 수정</h2><br/><br/>
				    <form action="<c:url value='/Admin/AdminEdit.do'/>" method="post">
				    
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>아이디 입력</label></td>
					      	  		<td>
								      	<input type="hidden" name="ad_id" value="${dto.ad_id }" />
								      	<span style="margin-left: 15px;">${dto.ad_id }</span>
								      	
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>부서명</label></td>
					      	  		<td><div class="col-xs-5">
					      	  			<select name="dept_no" class="form-control" id="dept_id">
					      	  				<c:choose>
					      	  					<c:when test="${empty list}">
					      	  						<option>부서가 없습니다.</option>
					      	  					</c:when>
					      	  					<c:otherwise>
					      	  						<c:forEach items="${list}" var="item">
					      	  							<option value="${item.dept_no}">${item.dept_no}(${item.dept_name})</option>
					      	  						</c:forEach>
					      	  					</c:otherwise>
					      	  				</c:choose>
					      	  			</select>
								    </div></td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>이름</label></td>
					      	  		
								    <td>
								    <div class="col-xs-5">
								    	<input type="text" class="form-control" name="ad_name" value="${dto.ad_name}" id="name_id"/>
								    </div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>비밀번호</label></td>
					      	  		
								    <td>
								    <div class="col-xs-5">
					      	  			<input type="password" placeholder="PASSWORD" class="form-control" value="${dto.ad_pwd }" name="ad_pwd" id="pwd_id"/>
								    </div>
					      	  		</td>
					      	  </tr>  
					      	  
					      	  
					      </tbody>
			
		      	  		</table>
				    		
				      <button type="submit" class="btn btn-info" onclick="return adEditInsert()">입력하기</button>
				      <button type="button" class="btn btn-info" onclick="exit()">닫기</button>
			
				    </form>
				  </div><!-- /example -->



 		</div>

 

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