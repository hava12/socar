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
		function goList() {
			location.href="<c:url value='/ZONE/List.do'/>";
		}
		function goEdit(){
			location.href="<c:url value='/ZONE/Edit.do?soz_code=${dto.soz_code}'/>";
		}
		function goDelete(){
			location.href="<c:url value='/ZONE/Delete.do?soz_code=${dto.soz_code}'/>";
		}
		function goIssueCar(){
			if(${dto.soz_i_car}==${dto.soz_maxcar}){
				alert('주차장 한도 초과!');
			}
			else{
			location.href="<c:url value='/CAR/CarIssue.do?soz_code=${dto.soz_code}'/>";
			}
		}
		function goIssueCarView(){
			location.href="<c:url value='/CAR/CarIssueView.do?soz_code=${dto.soz_code}&soz_name=${dto.soz_name}'/>";
		}
		
	</script>
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
    		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>주차장 상세보기</h2><br/><br/>
				      
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th width="15%">항목</th>
				      	  			<th width="50%">내용</th>
				      	  			<th width="35%">지도</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					      	  
					      	  <tr>
					      	  		<td><label>쏘카존 코드</label></td>
					      	  		<td>
								      	<span>${dto.soz_code}</span>
					      	  		</td>
					      	  		<td rowspan="7">
					      	  			<div id="map" style="width:500px;height:500px"></div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>쏘카존명</label></td>
					      	  		<td>
								      	<span>${dto.soz_name}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>위치</label></td>
					      	  		<td>
					      	  			<span>${dto.soz_loc}</span>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>차량 수</label></td>
					      	  		<td>
					      	  		<span>${dto.soz_i_car}/${dto.soz_maxcar}</span> 대
					      	  		<button style="margin-right: 10px;" type="button" class="btn btn-info pull-right" onclick="goIssueCarView()">상세보기</button>  			
					      	  		<button style="margin-right: 15px" type="button" class="btn btn-warning pull-right" onclick="goIssueCar()">차량 입고</button>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>위도</label></td>
					      	  		<td>
					      	  			<span>${dto.soz_latitude}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>경도</label></td>
					      	  		<td>
					      	  			<span>${dto.soz_longitude}</span>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>주차장 등록일</label></td>
					      	  		<td>
					      	  			<span>${dto.soz_date}</span>
					      	  		</td>
					      	  </tr>
					      	  
					      </tbody>
					    
					       </table>
				    <br/><br/><br/><br/><br/><br/><br/><br/>
				      <button type="button" class="btn btn-info" onclick="goEdit()">수정하기</button>
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
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b0979573216988a82c1321345b2297a"></script>	
	<script>
		var mapContainer = document.getElementById('map'),
							mapOption = {center: new daum.maps.LatLng(${dto.soz_latitude}, ${dto.soz_longitude}),//센터 위치
										level:3 //확대 레벨
		};
		var map = new daum.maps.Map(mapContainer,mapOption);//지도 생성
		
		//마커 표시할 위치
		var position = new daum.maps.LatLng(${dto.soz_latitude}, ${dto.soz_longitude});
		
		//마커 생성
		var marker = new daum.maps.Marker({position:position, clickable:true});
		
		//마커를 지도에 표시
		marker.setMap(map);
		
		//마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성
		var iwContent = '<div style="padding:5px;"><b>${dto.soz_name}</b></div><div>${dto.soz_loc}</div><div><a href="https://www.naver.com"><img src="//web-assets.socar.kr/template/asset/images/reservation/btn_able_socar.png" alt="예약가능 쏘카 보기"/></a></div>',
			iwRemoveable = true;
		
		//인포윈도우를 생성
		var infowindow = new daum.maps.InfoWindow({content:iwContent,removable:iwRemoveable});
		
		//마커 위에 인포윈도우를 표시
		infowindow.open(map,marker);
		
		//마커에 클릭이벤트를 등록합니다
		daum.maps.event.addListener(marker,'click',function(){
			//마커 위에 인포윈도우를 표시합니다
			infowindow.open(map,marker);
		});
		
	</script>
  </body>

</html>