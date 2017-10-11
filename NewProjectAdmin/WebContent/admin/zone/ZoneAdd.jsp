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
    <style>
    	tr td:first-child {text-align: center;}
    </style>
    <script>
    	function goList() {
			history.back();
		}
    </script>
    
    <script>
    
    function goInsert(){
    	
    	if(document.getElementById("soz_code_id").value == ""){
			alert("쏘카존 코드를 입력해주세요");
			document.getElementById("soz_code_id").focus();
			return false;
		}
    	if(document.getElementById("soz_code_id").value.length > 15){
			alert("쏘카존 코드를 15자이내로 입력해주세요");
			document.getElementById("soz_code_id").focus();
			return false;
		}
		else if(document.getElementById("soz_name_id").value == ""){
			alert("쏘카존명을 입력해주세요");
			document.getElementById("soz_name_id").focus();
			return false;
		}
		else if(document.getElementById("soz_name_id").value.length > 30){
			alert("쏘카존명을 30자이내로 입력해주세요");
			document.getElementById("soz_name_id").focus();
			return false;
		}
		else if(document.getElementById("soz_loc_id").value == ""){
			alert("위치를 입력해주세요");
			document.getElementById("soz_loc_id").focus();
			return false;
		}
		else if(document.getElementById("soz_loc_id").value == ""){
			alert("위치가 너무깁니다.30자이내로 써주세요.");
			document.getElementById("soz_loc_id").focus();
			return false;
		}
		else if(document.getElementById("maxcar_id").value == ""){
			alert("최대 차량수를 입력해주세요");
			document.getElementById("maxcar_id").focus();
			return false;
		}
		else if(document.getElementById("latitude_id").value == ""){
			alert("위도를 입력해주세요");
			document.getElementById("latitude_id").focus();
			return false;
		}
		else if(document.getElementById("longitude_id").value == ""){
			alert("경도를 입력해주세요");
			document.getElementById("longitude_id").focus();
			return false;
		}
    }
    
    
    </script>
    
    

  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   
     		<div class="container">
   				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>쏘카존 등록</h2><br/><br/>
				    <form action="<c:url value='/ZONE/Add.do'/>" method="post">
		   			<div id="map" style="width:100%;height:350px;"></div>
			    	
				      	  <table class="table table-bordered table-striped">
				      	  
				      	  <thead >
				      	  		<tr>
				      	  			<th>항목</th>
				      	  			<th>내용</th>
				      	  		</tr>
				      	  </thead>
				      	  <tbody>
					
					      	  <tr>
					      	  		<td><label>쏘카존명</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
					      	  			 <input type="text" class="form-control" name="soz_name" id="soz_name_id"/>
								    	</div>
								    </td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>위치</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" name="soz_loc" id="soz_loc_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>최대 차량수 </label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" name="soz_maxcar" id="maxcar_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>위도</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" name="soz_latitude" id="latitude_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  <tr>
					      	  		<td><label>경도</label></td>
					      	  		<td>
					      	  			<div class="col-xs-5">
								        <input type="text" class="form-control" name="soz_longitude" id="longitude_id"/>
								     	</div>
					      	  		</td>
					      	  </tr>
					      	  
					      </tbody>
					    
					       </table>
				    	<br/><br/><br/><br/><br/><br/><br/><br/>
				      <button type="submit" class="btn btn-info" onclick="return goInsert()">등록완료</button>
				      <button type="button" class="btn btn-info" onclick="goList()">돌아가기</button>
				     
				    </form>
				  </div><!-- /example -->

 		</div>
	    
	    <!-- 지도 API 스크립트 -->
	    
	    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b0979573216988a82c1321345b2297a"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new daum.maps.LatLng(37.485392, 126.877270), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 지도를 클릭한 위치에 표출할 마커입니다
			var marker = new daum.maps.Marker({ 
			    // 지도 중심좌표에 마커를 생성합니다 
			    position: map.getCenter() 
			}); 
			// 지도에 마커를 표시합니다
			marker.setMap(map);
			
			// 지도에 클릭 이벤트를 등록합니다
			// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
			    
			    // 클릭한 위도, 경도 정보를 가져옵니다 
			    var latlng = mouseEvent.latLng; 
			    
			    // 마커 위치를 클릭한 위치로 옮깁니다
			    marker.setPosition(latlng);
			    
			    //위도 경도 뿌려주기
			    document.getElementById('latitude_id').value = latlng.getLat();
			    document.getElementById('longitude_id').value = latlng.getLng();
	    
			});
</script>
   
   
   
   
   
   
   


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