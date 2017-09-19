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
	
	<script>
		function urlChange(state) {
			
			if(confirm("정말 변경하시겠습니까?")){
						if(state=='rent_start'){
							document.getElementById("f").action="<c:url value='/Reserve/RentStart.do'/>"
							document.getElementById("f").submit();
						}
						else if(state=='rent_end'){
							//document.getElementById("f").action="<c:url value='/Reserve/RentStart.do'/>"
							window.open("<c:url value='/admin/reservation/RentEnd.jsp'/>?res_code="+document.getElementsByName("res_codes")[0].value,"get","height=500,width=1200");
						}
						else{	
							document.getElementById("f").action="<c:url value='/Reserve/RentCancel.do'/>"
							document.getElementById("f").submit();
						}
						
			}
			}//////////////////////////////////
		
			
		function confirmstatus(state) {
			var array = document.getElementsByName("res_codes");
				
			if(state=="반납완료"){
					var check = 0;
					for(var i=0 ; i<array.length;i++){
						if(array[i].checked==true){
									check ++;
							
								if(array[i].id != "렌트 시작"){
									alert(state+" 불가능한 항목이 포함되어 있습니다.");
									return false;
								}
						}
					}
					if(check != 1){
						alert(state+"시에는 한 항목만 선택 가능합니다.");
						return false;
					}
			}
			else{
					for(var i=0 ; i<array.length;i++){
							if(array[i].checked==true && array[i].id != "렌트 전"){
									alert(state+" 불가능한 항목이 포함되어 있습니다.");
									return false;
							}
					}
			}	
			return true;
			
		}///////////////////////////////////////////
		
	</script>
	
  </head>

  <body>
    <c:import url="/template/Header.jsp" />
   		<form action="#" id="f" method="post"/>
   		<div class="container">
             <h2 id="tables-contextual-classes">
            	예약 정보
          </h2><br/><br/>
          <button type="button" onclick="if(confirmstatus('반납완료'))return urlChange('rent_end');" class="btn btn-warning pull-right" >렌트 종료</button>
          <button type="button" onclick="if(confirmstatus('렌트시작'))return urlChange('rent_start');" class="btn btn-info pull-right" style="margin-right:15px;" >렌트 시작</button>
          <button type="button" onclick="if(confirmstatus('취소'))return urlChange('cancel');" class="btn btn-warning pull-right" style="margin-right:15px; margin-bottom: 5px;">취소</button>

          <div class="table-responsive">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>예약 코드</th>
                  <th>아이디</th>
                  <th>예약일</th>
                  <th>시작예정일</th>
                  <th>반납예정일</th>
                  <th>가격</th>
                  <th>상태</th>
                  <th>선택</th>      
                  
                </tr>
              </thead>
              <tbody>
                
                  <c:choose>
                	<c:when test="${empty list}">
                		<tr><td colspan="7">등록된 예약이 없습니다</td></tr>
                	</c:when>
                	<c:otherwise>
                		<c:forEach var="dto" items="${list}">
                		<tr>
	                		<td>${dto.res_code}</td>
	                		<td>${dto.smem_id}</td>
	                		<td>${dto.res_date}</td>
	                		<td>${dto.res_date_start}</td>
	                		<td>${dto.res_date_end}</td>
	                		<td>${dto.res_price+dto.res_inscost-dto.sale_price}</td>
	                		<td>
	                			<p style="color: ${dto.status_color} ; text-align: center;">
	                				${dto.status}
	                			</p>
	                		</td>
	                		<td style="text-align: center;">
	                			<input type="checkbox" name="res_codes" id="${dto.status}" value="${dto.res_code}"/>
	                		</td>
                		</tr>
                		</c:forEach>
                	</c:otherwise>
                
                </c:choose>
                
              </tbody>
            </table>
            </form>
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
	    <p>1 2 3 4 5 6 7 8 9</p>
          <!--// 검색창  -->
        
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