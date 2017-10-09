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
	
	 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    
    
    
    
    
    
    
    
    
    

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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/component.css"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/bootstrap/css/style-responsive.css" rel="stylesheet" />

<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/parallax-slider/parallax-slider.css" /> --%>


<%--     <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/parallax-slider/modernizr.custom.28468.js"> --%>
    </script>
    <style>
    	tr *{
    		color:black !important;
    	}
    	#slider-range{
    		height:1.7em;
    	}
    	#slider-range span{
    		height:1.7em;
    		top:0em;
    		width:.1em;
    		background-color: black;
    		margin-left: 0;
    		border:1px solid black;
    	}

		.ui-widget-header{
			background-color: deepskyblue;
			border:1px solid black !important;
		}
    </style>
    
 
	<script>
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	$(function(){
		
		var rs_year = document.getElementById("rs_year");
		var rs_month = document.getElementById("rs_month");
		var rs_date = document.getElementById("rs_date");
		var re_year = document.getElementById("re_year");
		var re_month = document.getElementById("re_month");
		var re_date = document.getElementById("re_date");
		
		
		var re_time = document.getElementById("re_time");
		var rs_time = document.getElementById("rs_time");

		var now = new Date();
		var year = now.getFullYear();
		var mon = now.getMonth()+1;
		var date = now.getDate();
		
		for(var i=year;i<=year+1;i++){
			rs_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			re_year.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			
		}
		for(var i=1;i<=12;i++){
			if(i<10){i="0"+i}
			if(i==mon){
				rs_month.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";
				re_month.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";	
			}
			else{
				rs_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				re_month.innerHTML += "<option value='"+i+"'>"+i+"</option>";
			}
		}
		var lastdate = new Date(year,1);
		lastdate = new Date(lastdate-1);
	
		for(var i=1;i<=lastdate.getDate();i++){
			if(i<10){i = "0"+i;}
			if(i==date){
				rs_date.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";
				re_date.innerHTML += "<option value='"+i+"' selected='selected'>"+i+"</option>";					
			}
			else{
				rs_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
				re_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";					
			}
 		}
		for(var i=0 ; i < 24 ; i++){
				if(i<10){i = "0"+i;}
			for(var j = 0 ; j<= 50 ; j += 10){
				if(j==0){j = "0"+j;}
				rs_time.innerHTML += "<option value='"+i+":"+j+"'>"+i+":"+j+"</option>";
				if(j==30 && i==00){
					re_time.innerHTML += "<option value='"+i+":"+j+"' selected='selected'>"+i+":"+j+"</option>";	
				}
				else{
					re_time.innerHTML += "<option value='"+i+":"+j+"'>"+i+":"+j+"</option>";
				}
				if(j==00){j=0}
			}
		}
		
		var value = rs_month.options[rs_month.selectedIndex].value + "." + (parseInt(rs_date.options[rs_date.selectedIndex].value));
		p_rs_date.innerHTML = value;
		
		var value = re_month.options[rs_month.selectedIndex].value + "." + (parseInt(re_date.options[rs_date.selectedIndex].value)+1);
		p_re_date.innerHTML = value;
		
	
		
  	 <c:if test="${not empty list}">
   		 	<c:forEach items="${list}" var="item" varStatus="loop">
					var startdate = new Date($("#rs_year option:selected").val(),$("#rs_month option:selected").val()-1,$("#rs_date option:selected").val());
		   			var enddate = new Date($("#re_year option:selected").val(),$("#re_month option:selected").val()-1,$("#re_date option:selected").val()+1);
		  		  
		   			var itemSTime = '${item.res_date_start.time}';
		   			var itemETime ='${item.res_date_end.time}';
		   			//나중에 수정
		   			var innerDate = $("#re_date option:selected").val()-$("#rs_date option:selected").val()+1
		   			
		   			var leftper = (itemSTime-startdate.getTime())/((innerDate)*60*60*10*24);
   					var widthper = (itemETime-itemSTime)/((innerDate)*60*60*10*24);
    				if(leftper<0){
   						widthper = widthper + leftper;
   						leftper = -0.01;
   					}
   					if(leftper+widthper > 100){
   						widthper=100.8-leftper;
   					}
   					if(enddate.getTime()>itemSTime){
						$("#slider-range").append("<span class='reservedTime' id='reservedTime' name='reservedTime' style='height:1.6em; border:1px solid lightgrey; background-color:lightgrey; position:absolute; left:"+leftper+"%; width:"+widthper+"%;'></span>");
   					}
   					
			</c:forEach>
	 </c:if>

	
		
		
	
		
		
	});
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	function changeSMonth(){
		var rs_year = document.getElementById("rs_year");
		var rs_month = document.getElementById("rs_month");
		var mon = new Date(rs_year.value,rs_month.value);
		mon = new Date(mon-1);
		rs_date.innerHTML="";
		for(var i=1;i<=mon.getDate();i++){
			if(i<10){i = "0"+i;}
			rs_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	function changeEMonth(){
		var re_year = document.getElementById("re_year");
		var re_month = document.getElementById("re_month");
		var mon = new Date(re_year.value,re_month.value);	
		mon = new Date(mon-1);
		re_date.innerHTML="";
		for(var i=1;i<=mon.getDate();i++){
			if(i<10){i = "0"+i;}
			re_date.innerHTML += "<option value='"+i+"'>"+i+"</option>";
		}
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	function changeP_Date(SorE){
			var p_rs_date = document.getElementById("p_rs_date");
			var p_re_date = document.getElementById("p_re_date");	
			
			
			var rs_year = document.getElementById("rs_year");
			var rs_month = document.getElementById("rs_month");
			var rs_date = document.getElementById("rs_date");
			
			var re_year = document.getElementById("re_year");
			var re_month = document.getElementById("re_month");
			var re_date = document.getElementById("re_date");
			
		if(rs_date.value > re_date.value ){
			re_date.value = rs_date.value;
		}
		
	
			var value = rs_month.options[rs_month.selectedIndex].value + "." + (parseInt(rs_date.options[rs_date.selectedIndex].value));
			p_rs_date.innerHTML = value;
		
			var value = re_month.options[re_month.selectedIndex].value + "." + (parseInt(re_date.options[re_date.selectedIndex].value)+1);
			
			p_re_date.innerHTML = value;
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	function changeGraph(){
		$(function(){
			
			var rs_year = $("#rs_year");
			var rs_month = $("#rs_month");
			var rs_date = $("#rs_date");
			
			var re_year = $("#re_year");
			var re_month = $("#re_month");
			var re_date = $("#re_date");
			
			var date_s = new Date(rs_year.val(),rs_month.val(),rs_date.val());
			var date_e = new Date(re_year.val(),re_month.val(),parseInt(re_date.val())+1);
			
			var rs_time = $("#rs_time");
			var re_time = $("#re_time");
			
			
			
 			$("#slider-range").slider( "option", "max", date_e.getTime()-date_s.getTime() );
 			
 			var time_s = new Date(rs_year.val(),rs_month.val(),rs_date.val(),rs_time.val().split(":")[0],rs_time.val().split(":")[1]);
			var time_e = new Date(re_year.val(),re_month.val(),re_date.val(),re_time.val().split(":")[0],re_time.val().split(":")[1]);
			
		
  			$( "#slider-range" ).slider( "option", "values", [ time_s.getTime()-date_s.getTime() , time_e.getTime() - date_s.getTime() ] );
  			
  			$("#slider-range #reservedTime").remove();
  			$("#bannedTime").remove();
  			
  			
  		
  <c:if test="${not empty list}">
  		 	<c:forEach items="${list}" var="item">
  		 			
					var startdate = new Date($("#rs_year option:selected").val(),$("#rs_month option:selected").val()-1,$("#rs_date option:selected").val());
		   			var enddate = new Date($("#re_year option:selected").val(),$("#re_month option:selected").val()-1,$("#re_date option:selected").val()+1);
		  		  
		   			var itemSTime = '${item.res_date_start.time}';
		   			var itemETime ='${item.res_date_end.time}';
		   			
		   			//나중에 수정
		   			var innerDate = $("#re_date option:selected").val()-$("#rs_date option:selected").val()+1
		   			
		   			var leftper = (itemSTime-startdate.getTime())/((innerDate)*60*60*10*24)+0.8;
  					var widthper = (itemETime-itemSTime)/((innerDate)*60*60*10*24)+0.8;

  					if(leftper>=0 || startdate.getTime()<itemETime){
  						if(leftper <= 0 && startdate.getTime()<=itemETime){
  							widthper = widthper + leftper;
  							leftper=0;
  						}
	  					if(leftper+widthper > 100){
	  						widthper=100-leftper;
	  					}
	  					if(enddate.getTime()>itemSTime){
							$("#slider-range").append("<span id='reservedTime' name='reservedTime' style='height:1.6em; margin-left:-.6em; border:1px solid lightgrey; background-color:lightgrey; position:absolute; left:"+leftper+"%; width:"+widthper+"%;'></span>");
	  					}
  					}
  					
			</c:forEach>
	 </c:if>

  			
		});
	}
	</script>
  

  </head>

  <body>
   
   		<div class="container">
          <h2 id="tables-contextual-classes">
            	시간 선택
          </h2><br/><br/>
 

          <div class="table-responsive">
          <form action="<c:url value='/Member/FindId.do'/>" method="post">
			<table class="table table-bordered table-striped">
              <thead>

                <tr>
                  <th style="text-align: center; width: 3%"> </th>
                  <th style="text-align: center; width: 15%">일자 선택</th>
                </tr>

              </thead>
              <tbody>
                
			
                		
	                		<tr>
	                				<td><label>시작 일자 </label></td>
	                				<td>
	                				<div class="col-xs-2" >
								        <select class="form-control" id="rs_year" name="rs_year">
								        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
								        <select class="form-control" id="rs_month"  onchange="changeSMonth();changeGraph();" name="rs_month">
								        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
								        <select class="form-control" onchange="changeP_Date('start');changeGraph();" id="rs_date"  name="rs_date">
								        </select> 
								        </div>
								        <p class="col-xs-1">일</p>
								        <div class="col-xs-2">
								        <select class="form-control" onchange="changeGraph();" id="rs_time" name="rs_time">
								        </select> 
								    </div>
								    </td>
	                				
	                		</tr>
                			<tr>
	                				<td><label>종료 일자</label> </td>
	                				<td>
	                				<div class="col-xs-2" >
									    <select class="form-control" id="re_year" name="re_year">
									        </select>
								        </div>
								        <p class="col-xs-1">년</p>
					      	  			<div class="col-xs-2" >
									        <select class="form-control" id="re_month" onchange="changeEMonth();changeGraph();" name="re_month">
									        </select> 
								        </div>
								        <p class="col-xs-1">월</p>
								        <div class="col-xs-2">
									        <select class="form-control"  onchange="changeP_Date('end');changeGraph();" id="re_date" name="re_date">
									        </select> 
								        </div>
								        <p class="col-xs-1">일</p>
								        <div class="col-xs-2">
									        <select class="form-control" onchange="changeGraph();" id="re_time" name="re_time">
									        </select> 
								    </div>
								    <br/>
	                				</td>
	                				
	                		</tr>
	                		
                
              </tbody>
              
            </table>
            <br/>
            <img id="reservation_image" src="https://web-assets.socar.kr/template/asset/images/reservation/list_noti.gif" alt='ㅎㅇ' style="margin-left:5%; margin-top: 35px;" />
											
        	<div id="slider-range" name="slider-range" style="margin-left:5%; width: 1000px">
<!-- 				<a href="#" class="slider-range-div" style="height:.5em; margin-left:-.6em; border:1px solid black; position:absolute; background-color: deepskyblue; " ></a> -->
				
			
			</div>
			<span style="margin-left:4%" id="p_rs_date"></span>
			<span style="margin-left:87%" id="p_re_date"></span>
			<p id="resmessage"style="margin-left:10%"></span>
        </form>

            	
                     <button class="btn btn-success btn-info pull-right" id="choice" onclick="choice()" style="margin-right: 30px !important; margin-top: 30px !important;">선택 완료</button>
        </div>

 


	   
	   </form>
          <table width="100%">
		                        <tr align="center">
		                          <td>${pagingString}</td>
		                        </tr>
		                      </table>
 		</div>


    <!-- js placed at the end of the document so the pages load faster
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js">
</script>
-->

    
    <script>
		function choice(){
			$(function(){
					var resTime = new Date($("#rs_year").val(),$("#rs_month").val(),$("#rs_date").val());
		    		resTime.setTime(resTime.getTime()+$("#slider-range").slider("values",0));
		    		var minuteSet = Math.round(resTime.getMinutes()/10)*10;
		    		if(minuteSet == 60){
		    			resTime.setTime(resTime.getTime()+1000*60*5);
		    			minuteSet = Math.round(resTime.getMinutes()/10)*10;
		    		}
					opener.document.getElementById("rs_year_val").value = resTime.getFullYear(); 
					opener.document.getElementById("rs_year").value = resTime.getFullYear(); 
					
 					opener.document.getElementById("rs_month_val").value = resTime.getMonth()<10?"0"+resTime.getMonth():resTime.getMonth(); 
					opener.document.getElementById("rs_month").value = resTime.getMonth()<10?"0"+resTime.getMonth():resTime.getMonth(); 
					
					
 					opener.document.getElementById("rs_date_val").value = resTime.getDate()<10?"0"+resTime.getDate():resTime.getDate(); 
					opener.document.getElementById("rs_date").value = resTime.getDate()<10?"0"+resTime.getDate():resTime.getDate(); 
					
					
					var hour = resTime.getHours()<10?"0"+resTime.getHours():resTime.getHours();
					minuteSet = minuteSet < 10 ? "0"+minuteSet : minuteSet;
 					opener.document.getElementById("rs_time_val").value = hour + ":" + minuteSet;
					opener.document.getElementById("rs_time").value = hour + ":" + minuteSet;
								
					alert(opener.document.getElementById("rs_time").value);
					
					//////////////////////////끝시간
					
					
					resTime = new Date($("#rs_year").val(),$("#rs_month").val(),$("#rs_date").val());
					resTime.setTime(resTime.getTime()+$("#slider-range").slider("values",1));
		    		var minuteSet = Math.round(resTime.getMinutes()/10)*10;
		    		if(minuteSet == 60){
		    			resTime.setTime(resTime.getTime()+1000*60*5);
		    			minuteSet = Math.round(resTime.getMinutes()/10)*10;
		    		}
		    		
 					opener.document.getElementById("re_year_val").value = resTime.getFullYear(); 
					opener.document.getElementById("re_year").value = resTime.getFullYear(); 
					
					
 					opener.document.getElementById("re_month_val").value = resTime.getMonth()<10?"0"+resTime.getMonth():resTime.getMonth(); 
					opener.document.getElementById("re_month").value = resTime.getMonth()<10?"0"+resTime.getMonth():resTime.getMonth(); 
					
					
 					opener.document.getElementById("re_date_val").value = resTime.getDate()<10?"0"+resTime.getDate():resTime.getDate(); 
					opener.document.getElementById("re_date").value = resTime.getDate()<10?"0"+resTime.getDate():resTime.getDate(); 
					
					
					hour = resTime.getHours()<10?"0"+resTime.getHours():resTime.getHours();
					minuteSet = minuteSet < 10 ? "0"+minuteSet : minuteSet;
					
 					opener.document.getElementById("re_time_val").value = hour + ":" + minuteSet;
					opener.document.getElementById("re_time").value = hour + ":" + minuteSet;
								
					alert(opener.document.getElementById("re_time").value);
					opener.location.href="javascript:changePrice();"; // 일반적인 방법
		
					window.close();
					
					
			});
		}
    
    
        $( function() {
	
    	  $("#slider-range").slider({
    	    range: true,
    	    min: 0.1,
    	    max: 1000*60*60*24,
     	    values: [ 0.1, 1000*60*30 ],
     	    create:hohoworld,
     	    slide: hohoworld,
    	    change:hohoworld
     	  });///////////////////////////////////////////////////////
		
    	  $("#slider-range").css("margin-top","15px");
    		
    });
        
       var hohoworld = function( event, ui ) {
        	$(function(){
        	$("span[name='reservedTime']").each(function(index){
        		
        		var max = $( "#slider-range" ).slider( "option", "max" );
        		
        		var start =  $(this).css("left").replace("px", "")*1/10 ;
        		var end   =  ($(this).css("left").replace("px", "")*1 +$(this).css("width").replace("px", "")*1)/10;
        		
        		
        		$(".bannedTime"+index).remove();
        		
      				var left_percent = $( "#slider-range" ).slider( "values", 0 )/max*100 ;
      				var right_percent = $( "#slider-range" ).slider( "values", 1 )/max*100 ;
      				
      		//시작점이 예약시간 사이일 때	
        	if(left_percent > start && left_percent < end){
    				
        		if(right_percent>end){
    	    				var width_bann = end - left_percent;
        				
    	    				console.log(index + "번째 "+start +":"+end+":"+left_percent);
        				
    	    	    		$("#slider-range").append("<span class='bannedTime"+index+"' id='bannedTime' name='bannedTime' style='z-index: 3; height:1.6em; border:1px solid black; background-color:red; position:absolute; left:"+left_percent+"%; width:"+width_bann+"%;'></span>");
        		}
        		if(right_percent<end){
        			var width_bann = right_percent - left_percent;
        			
        				$("#slider-range").append("<span class='bannedTime"+index+"' id='bannedTime' name='bannedTime' style='z-index: 3; height:1.6em; border:1px solid black; background-color:red; position:absolute; left:"+left_percent+"%; width:"+width_bann+"%;'></span>");	
        		}
        	}
      		
      		//끝점이 예약 시간 사이일 때
    		if(right_percent > start && right_percent < end){
    				
        		if(left_percent > start){
    	    				var width_bann = right_percent - left_percent;
        				
    	    	    		$("#slider-range").append("<span class='bannedTime"+index+"' id='bannedTime' name='bannedTime' style='z-index: 3; height:1.6em; border:1px solid black; background-color:red; position:absolute; left:"+left_percent+"%; width:"+width_bann+"%;'></span>");
        		}
        		if(left_percent < start){
        				var width_bann = right_percent-start;
        			
        				$("#slider-range").append("<span class='bannedTime"+index+"' id='bannedTime' name='bannedTime' style='z-index: 3; height:1.6em; border:1px solid black; background-color:red; position:absolute; left:"+start+"%; width:"+width_bann+"%;'></span>");	
        		}
        	}
      		//그냥 사이일 때
        	if(left_percent < start && right_percent > end){
        	    		var width_bann = end - start;
        	    		$("#slider-range").append("<span class='bannedTime"+index+"' id='bannedTime' name='bannedTime' style='z-index: 3; height:1.6em; border:1px solid black; background-color:red; position:absolute; left:"+start+"%; width:"+width_bann+"%;'></span>");	
        	}
        	
      		
        	
        	});//////////////////////////////////////////////each
        	if($("#bannedTime").length!=0){
        		$("#resmessage").css("color","red").html("이미 예약된 시간이 포함되어 있습니다.");
        	}
        	else{
        		$("#resmessage").css("color","blue");
            	$("#resmessage").html("");
            	
        		for(var i = 0 ; i < 2;i++){
        			var resTime = new Date($("#rs_year").val(),$("#rs_month").val(),$("#rs_date").val());
            		resTime.setTime(resTime.getTime()+$("#slider-range").slider("values",i));
            		var minuteSet = Math.round(resTime.getMinutes()/10)*10;
            		if(minuteSet == 60){
            			resTime.setTime(resTime.getTime()+1000*60*5);
            		}
            		var status = i==0?"부터":"까지";
            		$("#resmessage").append(resTime.getFullYear()+"년 "+resTime.getMonth() +"월 "+resTime.getDate()+ "일 "+resTime.getHours()+"시 "+Math.round(resTime.getMinutes()/10)*10+"분 "+status+" ");	
            		
            		
        		}
        			
        	}
        	
        	});////////////////////////////function
        	
        }//////////////////////////////////////////////////////////////hohoworld
    </script>
 </body>
</html>