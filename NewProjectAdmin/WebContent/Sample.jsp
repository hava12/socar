<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="author" content="cosmic">
    <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png">
	
    <title>
      Acme | Home
    </title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-reset.css" rel="stylesheet">
    <!-- <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">-->

    <!--external css-->
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css"/>
    <link href="${pageContext.request.contextPath}/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/owlcarousel/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/owlcarousel/owl.theme.css">

    <link href="${pageContext.request.contextPath}/css/superfish.css" rel="stylesheet" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/parallax-slider/modernizr.custom.28468.js">
    </script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/js/html5shiv.js">
    </script>
    <script src="${pageContext.request.contextPath}/js/respond.min.js">
    </script>
    <![endif]-->
  </head>

  <body>
	

          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              <colgroup>
                <col class="col-xs-1">
                <col class="col-xs-7">
                <col class="col-xs-1">
                <col class="col-xs-1">
                
              </colgroup>
              <thead>
                <tr>
                  <th>
                    	글번호
                  </th>
                  
                  <th>
                    	제목
                  </th>
                  <th>
                    	작성자
                  </th>
                  <th>
                    	작성일
                  </th>
                </tr>
                
              </thead>
              <tbody>
                <tr>
		                  <td>
		                    
		                  </td>
		                  <td>
		                  
		                  </td>
		                   <td>
		                  
		                  </td>
		                  <td>
		                  
		                  </td>
                </tr>
                <tr>
		                  <td>
		                    
		                  </td>
		                  <td>
		                  
		                  </td>
		                   <td>
		                  
		                  </td>
		                   <td>
		                  
		                  </td>
               </tr>
               
              </tbody>
            </table>
          </div>























<!--
<script src="${pageContext.request.contextPath}/js/jquery.js">
</script>
-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/hover-dropdown.js">
    </script>
    <script defer src="${pageContext.request.contextPath}/js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/bxslider/jquery.bxslider.js">
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js">
    </script>
    <script src="${pageContext.request.contextPath}/js/wow.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/assets/owlcarousel/owl.carousel.js">
    </script>

    <script src="${pageContext.request.contextPath}/js/jquery.easing.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/js/link-hover.js">
    </script>
    <script src="${pageContext.request.contextPath}/js/superfish.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/parallax-slider/jquery.cslider.js">
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
    <script src="${pageContext.request.contextPath}/js/common-scripts.js">
    </script>

    <script type="text/javascript">
      jQuery(document).ready(function() {


        $('.bxslider1').bxSlider({
          minSlides: 5,
          maxSlides: 6,
          slideWidth: 360,
          slideMargin: 2,
          moveSlides: 1,
          responsive: true,
          nextSelector: '#slider-next',
          prevSelector: '#slider-prev',
          nextText: 'Onward →',
          prevText: '← Go back'
        });

      });


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