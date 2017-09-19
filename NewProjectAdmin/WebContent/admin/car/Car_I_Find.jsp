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
			if(sel=="id"){
				menu.innerHTML = "아이디검색<span class='fa fa-caret-down'></span>";
				menu.value="smem_id";
			}
			else if(sel=="name"){
				menu.innerHTML = "이름검색<span class='fa fa-caret-down'></span>";
				menu.value="smem_name";
			}	
		}	
		function search() {
			var menu = document.getElementById("menu");
			location.href="<c:url value='/Member/IdSearch.do'/>?where="+menu.value+"&mem="+document.getElementById("searchtext").value;
		}
		function pushparent(id,name,car_land_price,car_jeju_price,car_price_so_wd,car_price_so_we,car_insurance_one_hour,car_insurance_one_day,car_insurance_two_hour,car_insurance_two_day) {
			opener.document.getElementById("car_i_code").value = id;
			opener.document.getElementById("car_i").value = name;
			
			opener.document.getElementById("car_land_price").value = car_land_price;
			opener.document.getElementById("car_jeju_price").value = car_jeju_price;
			opener.document.getElementById("car_price_so_wd").value = car_price_so_wd;
			opener.document.getElementById("car_price_so_we").value = car_price_so_we;
			opener.document.getElementById("car_insurance_one_hour").value = car_insurance_one_hour;
			opener.document.getElementById("car_insurance_one_day").value = car_insurance_one_day;
			opener.document.getElementById("car_insurance_two_hour").value = car_insurance_two_hour;
			opener.document.getElementById("car_insurance_two_day").value = car_insurance_two_day;
			
			
			window.close();
		}
	</script>
  </head>

  <body>
   
   		<div class="container">
          <h2 id="tables-contextual-classes">
            	차량 검색
          </h2><br/><br/>
 

          <div class="table-responsive">
            <table class="table table-bordered table-striped">

              <thead>

                <tr>
                  <th style="text-align: center; width: 10%">차량보유코드</th>
                  <th style="text-align: center; width: 10%">차량명코드</th>
                  <th style="text-align: center; width: 10%">쏘카존코드</th>
                  <th style="text-align: center; width: 10%">차량발급일</th>
                  <th style="text-align: center; width: 10%">차량번호</th>
                  <th style="text-align: center; width: 20%">차량안전옵션</th>
                  <th style="text-align: center; width: 10%">차량부가옵션</th>
                  <th style="text-align: center; width: 10%">차량별칭</th>
                  <th style="text-align: center; width: 10%">차량선택</th>
                </tr>

              </thead>
              <tbody>
                
				<c:if test="${empty list}" var="listSimpleMem">
						<tr><td colspan="9">등록된 차량이 없습니다.</td></tr>
				</c:if>
                <c:if test="${not listSimpleMem}">
                		<c:forEach items="${list}" var="item">
	                		<tr>
	                				<td>${item.car_i_code}</td>	           	                					
					                <td>${item.car_name_code}</td>
					                <td>${item.soz_code}</td>
					                <td>${item.car_i_date}</td>
					                <td>${item.car_i_num}</td>
					                <td>${item.car_i_safe_option}</td>
					                <td>${item.car_i_add_option}</td>
					                <td>${item.car_nick}</td>
	                				<td style="text-align: center">
	                					<button class="btn btn-default btn-sm" onclick="pushparent('${item.car_i_code}','${item.car_nick}','${item.car_land_price}','${item.car_jeju_price}','${item.car_price_so_wd}','${item.car_price_so_we}','${item.car_insurance_one_hour}','${item.car_insurance_one_day}','${item.car_insurance_two_hour}','${item.car_insurance_two_day}')">
	                					선택
	                					</button>
	                				</td>
	                		
	                		</tr>
                		</c:forEach>
                </c:if>
              </tbody>
            </table>
</div>
            
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