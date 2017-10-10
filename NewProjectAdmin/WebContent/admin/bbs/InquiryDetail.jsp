<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script>
function categoryConvert(category){
			switch(category){
			case 'A': return '예약/결제문의';
			case 'B': return '가입문의';
			case 'C': return '차량이용/사고';
			case 'D': return '불편접수/건의';
			case 'E': return '프로모션/쿠폰';
			case 'F': return '법인/단체';
			case 'G': return '탈퇴';
			case 'H': return '쏘파라치';
			case 'I': return '핸들주차비 환급요청';
			default : return '기타';
			}
			
		}
</script>
<head>
    <meta charset="utf-8">
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
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> -->


    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js">
    </script>
    <script>
    	var goList = function() {
    		location.href="<c:url value='/Bbs/Inquiry.do'/>";
		}
    	var goReply = function() {  		
    		location.href="<c:url value='/Bbs/InquiryReply.do?i_no=${dto.i_no}'/>";
		}
    	var goDelete = function() {
    		location.href="<c:url value='/Bbs/InquiryDelete.do?i_no=${dto.i_no}'/>";
		}
    </script>

  </head>

  <body>
    <c:import url="/template/Header.jsp" />
    
    
       
      		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>1:1문의 상세보기</h2><br/><br/>
				   
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th style="width: 30%">항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>문의번호</label></td>
					      	  		<td>
								      	<span>${dto.i_no}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>문의 카테고리</label></td>
					      	  		<td>
					      	  			<span><script>document.write(categoryConvert('${dto.category}'))</script></span>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>제목</label></td>
					      	  		<td>
					      	  			<span>${dto.title}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>문의 이미지</label></td>
					      	  		<td>
					      	  		<img src="/NewProjectFront/UploadInquiry/${dto.image}" alt="이미지에러"/>					      	  							  
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>문의 내용</label></td>
					      	  		<td><span>${dto.content}</span></td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>문의 아이디</label></td>
					      	  		<td>
					      	  			<span>${dto.smem_id}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>문의 날짜</label></td>
					      	  		<td>
					      	  			<span>${dto.i_date}</span>
					      	  		</td>
					      	  </tr>	      	  
					      </tbody>		    
					       </table>
				    
				      <button type="button" class="btn btn-info" onclick="goReply()">답장하기</button>
				      <button type="button" class="btn btn-info" onclick="goDelete()">삭제하기</button>
				      <button type="button" class="btn btn-info" onclick="goList()">리스트 보기</button>
			
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