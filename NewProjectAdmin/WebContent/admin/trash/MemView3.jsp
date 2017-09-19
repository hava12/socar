<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js"></script>
    <script>
    	
    	function inputPoint(option) {
    		var point = document.getElementById("point");
    		
    		if(parseInt(point.value)!=point.value){
    			alert("입력은 숫자만");
    		}
    		else{
    			location.href="<c:url value='/Member/InputPoint.do'/>?option="+option+"&smem_id=${mem.smem_id}&point="+point.value;
    		}
		}
    </script>
  <style>

  </style>
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   
   		<div class="container">
				  <div class="bs-example" style="font-size: 1.2em">
				  <h2>회원정보 상세보기</h2><br/><br/>
				    <form action="<c:url value='/Member/MemModify.do'/>" method="post">
				    <input type='hidden' name="smem_id" value="${mem.smem_id}"/>
				      <div class="form-group">
				        <label>아이디</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.smem_id}</span>
				        <br/>				        
				        <br/>
				      </div>
				      <div class="form-group">
				        <label>비밀번호</label><br/>
				        <div class="col-xs-3">
				        <input type="password" class="form-control" value="${mem.smem_pwd}" name="smem_pwd" placeholder="Password" />
				     	</div>
				     	<br/>
				      </div>
				      <div class="form-group">
				        <label>비밀번호 확인</label><br/>
				        <div class="col-xs-3">
				        <input type="password" class="form-control" value="${mem.smem_pwd}" name="smem_pwd_confirm" placeholder="Password" />
				     	</div>
				     	<br/>
				      </div>
				       <div class="form-group">
				        <label>이름</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.smem_name}</span>
				        <br/><br/>
				      </div>
				      
				      <div class="form-group">
				        <label>전화번호</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.smem_tel}</span>
				        <br/><br/>
				      </div>
					  
					  <div class="form-group">
				        <label>가입일</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.smem_date}</span>
				        <br/><br/>
				      </div>
				      
				      <div class="form-group">
				        <label>주소</label>
				        <input type="text" name="mem_addr" class="form-control" value="${mem.mem_addr}"/>
				     	<br/><br/>
				      </div>
				      
					  <div class="form-group">
				        <label>주 사용 지역</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_mainarea}</span>
				        <br/><br/>
				      </div>
				       
				      <div class="form-group">
				        <label>생일</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_birth}</span>
				        <br/><br/>
				      </div>	      
				      
				      <div class="form-group">
				        <label>성별</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_gender}</span>
				        <br/><br/>
				      </div>	      
				       <div class="form-group">
				        <label>포인트 보기</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.ms_change}</span><br/><br/>
				        <div class="col-xs-2">
				        <input type="text" id="point" class="form-control"  placeholder="포인트" />
				        </div><br/>
				        <button type="button" class="btn btn-default btn-sm" onclick="inputPoint('')">포인트 주기</button>
						<button type="button" class="btn btn-default btn-sm" onclick="inputPoint('-')">포인트 회수</button>
				        
				        <br/><br/>
				      </div>	      
				      
				      <div class="form-group">
				        <label>면허 타입</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_c_type}</span>
				        <br/><br/>
				      </div>	
				            
				      <div class="form-group">
				        <label>면허번호</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_c_num}</span>
				        <br/><br/>
				      </div>	 
				           
				      <div class="form-group">
				        <label>발급일</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_c_idate}</span>
				        <br/><br/>
				      </div>	
				       
				            
				      <div class="form-group">
				        <label>면허 만료일</label><br/>
				        <span>&nbsp;&nbsp;&nbsp;${mem.mem_c_expdate}</span>
				        <br/><br/><br/>
				      </div>	    
				      
				      <c:forEach var="card" items="${cardlist}" varStatus="vs">  
						      <div class="form-group">
						        <label>카드번호 [${vs.count}번째 카드]</label><br/>
						        <span>&nbsp;&nbsp;&nbsp;${card.card_code}</span>
						        <br/><br/>
						      </div>
						      
						      <div class="form-group">
						        <label>카드 만료일  [${vs.count}번째 카드]</label><br/>
						        <span>&nbsp;&nbsp;&nbsp;${card.card_expdate}</span>
						        <br/><br/>
						      </div>
						      
						      <div class="form-group">
						        <label>카드타입 [${vs.count}번째 카드]</label><br/>
						        <span>&nbsp;&nbsp;&nbsp;${card.card_type}</span>
						        <br/><br/>
						      </div>
						     
						      <div class="form-group">
						        <label>카드비밀번호 앞 2 자리 [${vs.count}번째 카드]</label><br/>
						        <span>&nbsp;&nbsp;&nbsp;${card.card_pwd}</span>
						        <br/><br/>
						      </div>	
				      </c:forEach>
				      
				      
				
				      <button type="submit" class="btn btn-info">수정하기</button>
				      <button type="submit" class="btn btn-info">이용 내역 보기</button>
				      <a href="<c:url value='/Member/MemberList.do' />"><button type="button" class="btn btn-info">뒤로가기</button></a>
				      
				    </form>
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
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/hover-dropdown.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/assets/bxslider/jquery.bxslider.js"></script>

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