<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <meta name="description" content="Developed By M Abdur Rokib Promy"> -->
<!--     <meta name="author" content="cosmic"> -->
<!--     <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business"> -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/favicon.png">
	
    <title>
      Acme | Home
    </title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-reset.css" rel="stylesheet">
    <!-- <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->

    <!--external css-->
    <link href="${pageContext.request.contextPath}/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/flexslider.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/assets/owlcarousel/owl.theme.css">

    <link href="${pageContext.request.contextPath}/bootstrap/css/superfish.css" rel="stylesheet" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>

  </head>

  <body>
    <c:import url="/template/Header.jsp" />
         
  
    <div class="container">
          <!-- 공지게시글 5 개 보기 -->
          <h2 id="tables-contextual-classes">
            	공지사항
          </h2>

          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              <colgroup>
                <col class="col-xs-1" />
                <col class="col-xs-7" />
                <col class="col-xs-1" />
                <col class="col-xs-1" />
                
              </colgroup>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                </tr>
              </thead>
              <tbody>
               
                <tr>
                  <td>1</td>
                  <td>공지글</td>
                  <td>조동엽</td>
                  <td>2020-20-20</td>
                  
                </tr>

              </tbody>
            </table>
           <a href="">더 보기..</a>
          </div>
          <!-- 공지게시글 5 개 보기 -->
   
 			<!-- QnA게시글 5 개 보기 -->
          <h2 id="tables-contextual-classes">
            	QnA게시글
          </h2>

          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              <colgroup>
                <col class="col-xs-1"/>
                <col class="col-xs-7"/>
                <col class="col-xs-1"/>
                <col class="col-xs-1"/>
              </colgroup>
              <thead>
	             <tr>
	          	  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
	             </tr>
	          </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>QnA글</td>
                  <td>조동엽</td>
                  <td>2020-20-20</td>
                  
                </tr>
              </tbody>
            </table>
                       <a href="">더 보기..</a>
          </div>
          <!-- QnA게시글 5 개 보기 -->
          
          
          <!-- 신고 게시글 5 개 보기 -->
          <h2 id="tables-contextual-classes">
            	신고게시글
          </h2>

          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              <colgroup>
                <col class="col-xs-1"/>
                <col class="col-xs-7"/>
                <col class="col-xs-1"/>
                <col class="col-xs-1"/>
              </colgroup>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>                  
                </tr>
              </thead>
              <tbody>
                
                <tr>
                  <td>1</td>
                  <td>신고글</td>
                  <td>조동엽</td>
                  <td>2020-20-20</td>  
                </tr>
              </tbody>
            </table>
                       <a href="">더 보기..</a>
          </div>
          
          <!-- 신고게시글 5개 보기 -->
          </div>
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
    <script defer src="${pageContext.request.contextPath}/bootstrap/js/jquery.flexslider.js">
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
    </script>



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