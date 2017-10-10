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
		
		
		
		function find(sel) {
			var menu = document.getElementById("menu");
			if (sel == "id") {
				menu.innerHTML = "제목 검색<span class='fa fa-caret-down' value='not_title'></span>";
				abc.value="not_title"
			} else if (sel == "name") {
				menu.innerHTML = "작성자 검색<span class='fa fa-caret-down' value='ad_id'></span>";
				abc.value="ad_id"
			}
		}
		
		
	</script>
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   		<div class="container">
             <h2 id="tables-contextual-classes">
            	1:1문의 관리
          </h2><br/><br/>
			<span class="input-group-btn pull-right" style="margin-right:60px;">
	                     <button class="btn btn-success btn-info" type="button" onclick="insertNotice()">글쓰기</button>
	             </span>
          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              
              <thead>
                <tr>
                  <th style="text-align: center; width: 10%">번호</th>
                  <th style="text-align: center; width: 10%">카테고리</th>
                  <th style="text-align: center; width: 40%">제목</th>
                  <th style="text-align: center; width: 15%">작성자</th>
                  <th style="text-align: center; width: 15%">작성일</th> 
                  <!-- <th>수정</th> --> 
                  <th style="text-align: center; width: 10%">처리여부</th> 
                                   
                </tr>
              </thead>
              <tbody>
                
                <c:choose>
                	<c:when test="${empty list}">
                	<tr><td colspan="4" align="center">등록된 글이 없습니다</td></tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="dto" items="${list}">
     
                		<tr>
	                		<td align="center">${dto.i_no}</td>
	                		<td align="center"><script>document.write(categoryConvert('${dto.category}'))</script></td>
	                		<td align="center"><a href="<c:url value='/Bbs/InquiryDetail.do' />?i_no=${dto.i_no}">${dto.title}</a></td>
	                		<td align="center">${dto.smem_id}</td>
	                		<td align="center">${dto.i_date}</td>
	                		<%-- <td style="text-align: center;"><a href="<c:url value='/Bbs/NoticeEdit.do?not_no=${dto.not_no}'/>"><button class="btn btn-info btn-sm">수정하기</button></a></td> --%>
	                		<td style="text-align: center;"><a href='javascript:isDelete(${dto.i_no})'><button class="btn btn-warning btn-sm">처리하기</button></a></td>
                		</tr>
                		</c:forEach>
                	</c:otherwise>
                
                </c:choose>
                
                
              </tbody>
            </table>
          </div>
          <!--// 검색창  -->
          
        <form method="post">
 		<div class="col-xs-5 pull-right">
 	     <div class="box-body">
             <div class="input-group margin">
                 <div class="input-group-btn">
                     <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" id="menu">-선택-<span class="fa fa-caret-down"></span></button>
                     <ul id="menu" class="dropdown-menu" name="searchColumn">
                         <li><a onclick="find('id')" >제목 검색</a></li>
                         <li><a onclick="find('name')">작성자 검색</a></li>
                     </ul>
                 </div>
                 <input type="text" class="form-control" name="searchWord"/>
             	<span class="input-group-btn">
             		<input type="hidden" name="searchColumn" id="abc"/>
                     <button class="btn btn-success btn-info" type="submit" id="menu" value="검색">검색</button>
            	 </span>
             </div>
         </div>
	   </div>
	   
	   </form>
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