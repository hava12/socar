<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <meta name="description" content="Developed By M Abdur Rokib Promy"> -->
<!--     <meta name="author" content="cosmic"> -->
<!--     <meta name="keywords" content="Bootstrap 3, Template, Theme, Responsive, Corporate, Business"> -->
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
		function insertNotice() {
			location.href="<c:url value='/Bbs/InsertNotice.do'/>";
		}
		function isDelete(not_no){
			if(confirm("정말로 삭제 할래?")){
				location.href="<c:url value='/Bbs/NoticeDelete.do'/>?not_no="+not_no;
			}//////////////////			
			
		}/////////////////////	
		
	</script>
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   		<div class="container">
             <h2 id="tables-contextual-classes">
            	공지사항 관리
          </h2><br/><br/>
			<span class="input-group-btn pull-right" style="margin-right:60px;">
	                     <button class="btn btn-success btn-info" type="button" onclick="insertNotice()">글쓰기</button>
	             </span>
          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              
              <thead>
                <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th> 
                  <th>수정</th> 
                  <th>삭제</th> 
                                   
                </tr>
              </thead>
              <tbody>
                
                <c:choose>
                	<c:when test="${empty list}">
                	<tr><td colspan="4">등록된 글이 없습니다</td></tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="dto" items="${list}">
                		<tr>
	                		<td>${dto.not_no}</td>
	                		<td><a href="<c:url value='/Bbs/NoticeDetail.do' />?not_no=${dto.not_no}">${dto.not_title}</a></td>
	                		<td>${dto.ad_id}</td>
	                		<td>${dto.not_postdate}</td>
	                		<td style="text-align: center;"><a href="<c:url value='/Bbs/NoticeEdit.do?not_no=${dto.not_no}'/>"><button class="btn btn-info btn-sm">수정하기</button></a></td>
	                		<td style="text-align: center;"><a href='javascript:isDelete(${dto.not_no})'><button class="btn btn-warning btn-sm">삭제하기</button></a></td>
                		</tr>
                		</c:forEach>
                	</c:otherwise>
                
                </c:choose>
                
                
              </tbody>
            </table>
          </div>
          <!--// 검색창  -->
          
        <div class="col-xs-5 pull-right">
	 	    <div class="box-body">
	             <div class="input-group margin">
	                 <div class="input-group-btn">
	                     <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">Action <span class="fa fa-caret-down"></span></button>
	                     <ul class="dropdown-menu">
	                         <li><a href="#">Action</a></li>
	                         <li><a href="#">Another action</a></li>
	                         <li><a href="#">Something else here</a></li>
	                         <li class="divider"></li>
	                         <li><a href="#">Separated link</a></li>
	                     </ul>
	                 </div><!-- /btn-group -->
	                 <input type="text" class="form-control" />
	             <span class="input-group-btn">
	                     <button class="btn btn-success btn-info" type="button">검색</button>
	             </span>
	             </div><!-- /input-group -->
	         </div><!-- /.box-body -->
		   </div>
	    <!-- <p>1 2 3 4 5 6 7 8 9</p> -->
          <!-- 페이징 -->
		                      <table width="100%">
		                        <tr align="center">
		                          <td>${pagingString}</td>
		                        </tr>
		                      </table>
        
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