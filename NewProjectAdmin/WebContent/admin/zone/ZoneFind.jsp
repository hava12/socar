<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
		function find(sel) {
			var menu = document.getElementById("menu");
			if(sel=="name"){
				menu.innerHTML = "쏘카존검색<span class='fa fa-caret-down'></span>";
				menu.value="soz_name";
			}
			else if(sel=="loc"){
				menu.innerHTML = "위치검색<span class='fa fa-caret-down'></span>";
				menu.value="soz_loc";
			}	
		}	
		function search() {
			var menu = document.getElementById("menu");
			location.href="<c:url value='/Member/CardSearch.do'/>?where="+menu.value+"&mem="+document.getElementById("searchtext").value;
		}
		function pushparent(id,name) {
			
			opener.document.getElementById("zone").value = name;
			opener.document.getElementById("soz_code").value = id;
			opener.document.getElementById("car_i_code").value = "none";
			opener.document.getElementById("car_i").value = "";
			window.close();
		}
	</script>
  </head>

  <body>
   
   		<div class="container">
          <h2 id="tables-contextual-classes">
            	쏘카존명 검색
          </h2><br/><br/>
 

          <div class="table-responsive">
            <table class="table table-bordered table-striped">

              <thead>

                <tr>
                   <th style="text-align: center; width: 10%">쏘카존명</th>
                  <th style="text-align: center; width: 35%">위치</th>
                  <th style="text-align: center; width: 15%">차량수</th>
                  <th style="text-align: center; width: 10%">쏘카존등록일</th>
                  <th style="text-align: center; width: 15%">위도</th>
                  <th style="text-align: center; width: 15%">경도</th>
                </tr>

              </thead>
              <tbody>
                
				<c:if test="${empty list}" var="listSimpleMem">
						<tr><td colspan="5">등록된 쏘카존이 없습니다.</td></tr>
				</c:if>
                <c:if test="${not listSimpleMem}">
                		<c:forEach items="${list}" var="item">
	                		<tr>
	                				<td>${item.soz_name}</td>
	                				<td><a href="javascript:pushparent('${item.soz_code}','${item.soz_name}')">${item.soz_loc}</a></td>
	                				<td>${item.soz_i_car}/${item.soz_maxcar}</td>
						            <td>${item.soz_date}</td>
						            <td>${item.soz_latitude}</td>
						            <td>${item.soz_longitude}</td>
	                		
	                		</tr>
                		</c:forEach>
                </c:if>
              </tbody>
            </table>

            
        </div>

 		<div class="col-xs-5 pull-right">
 	    <div class="box-body">
             <div class="input-group margin">
                 <div class="input-group-btn">
                     <button type="button" class="btn btn-info dropdown-toggle" value="soz_name" id="menu" data-toggle="dropdown">쏘카존검색<span class="fa fa-caret-down"></span></button>
                     <ul class="dropdown-menu">
                         <li><a onclick="find('name')">쏘카존검색</a></li>
                         <li><a onclick="find('loc')">위치검색</a></li>
                     </ul>
                 </div><!-- /btn-group -->
                 <input type="text" class="form-control" id="searchtext" style="color: black;" />
             <span class="input-group-btn">
                     <button class="btn btn-success btn-info" onclick="search()" type="button">검색</button>
             </span>
             </div><!-- /input-group -->
         </div><!-- /.box-body -->
	   </div>
          <p style="font-size: 1.3em">1 2 3 4 5 6 7 8 9</p>
 		</div>


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