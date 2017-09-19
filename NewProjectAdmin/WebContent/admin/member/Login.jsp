<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Developed By M Abdur Rokib Promy"/>
    <meta name="author" content="cosmic"/>
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img//favicon.png"/>

    <title>Acme | Home</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/theme.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-reset.css" rel="stylesheet"/>
    <!--external css-->
    <link href="${pageContext.request.contextPath}/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/flexslider.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/animate.css"/>
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>


      <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />
	
	<script>
/* 	
 function adLogin(){
	
		
		if(document.getElementById("admin_id").value == ""){
			alert("아이디를 입력해주세요.");
			document.getElementById("admin_id").focus();
			return false;
		}
		else if(document.getElementById("admin_id").value.length > 15){
			alert("아이디를 15자안으로 입력해주세요.");
			document.getElementById("admin_id").focus();
			return false;
		}
		else if(document.getElementById("admin_pwd").value == ""){
			alert("비밀번호를 입력해주세요.");
			document.getElementById("admin_pwd").focus();
			return false;
		}
		else if(document.getElementById("admin_pwd").value.length > 15){
			alert("비밀번호를 15자 안으로 입력해주세요.");
			document.getElementById("admin_pwd").focus();
			return false;
		}
		
		
}  */
	</script>

  </head>

  <body>


    <!--breadcrumbs start-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-4">
                    <h1>프로젝트 팀 관리자 서버 Login</h1>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->

    <!--container start-->
    <div class="login-bg" style="height:850px;">
        <div class="container">
            <div class="form-wrapper" >
            <form class="form-signin wow fadeInUp" action="<c:url value='/MAIN/Login.do' />"  style="height:400px;" method="post" >
            <h2 class="form-signin-heading"><b>관리자 로그인</b></h2>
            <div class="login-wrap">
                <input type="text" class="form-control" name="ad_id" id="admin_id" placeholder="UserID" autofocus/>
                <input type="password" class="form-control" name="ad_pwd" id="admin_pwd"  placeholder="Password" style="margin-top: 30px;"/>
                <label class="checkbox">
                    <span class="pull-right">
							<p style="margin-top: 30px;">비밀번호 분실 시 <br/> 010 - 5626 - 0171 문의</p>
                    </span>
                </label>
                <button class="btn btn-lg btn-login btn-block" type="submit" style="margin-top: 100px;" onclick="return adLogin">로그인</button>

				

            </div>


          </form>
          </div>
        </div>
    </div>
    <!--container end-->


    <!--small footer start -->
    	<c:import url="/template/SmallFooter.jsp" />
     <!--small footer end-->

  <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/bootstrap/js//jquery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js//bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js//hover-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js//jquery.flexslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets//bxslider/jquery.bxslider.js"></script>

    <script src="${pageContext.request.contextPath}/bootstrap/js//jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js//link-hover.js"></script>


     <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/bootstrap/js//common-scripts.js"></script>


    <script src="${pageContext.request.contextPath}/bootstrap/js//wow.min.js"></script>
    <script>
        wow = new WOW(
          {
            boxClass:     'wow',      // default
            animateClass: 'animated', // default
            offset:       0          // default
          }
        )
        wow.init();
    </script>

  </body>

</html>