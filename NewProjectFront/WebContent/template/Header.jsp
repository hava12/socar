<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		

	<script>
	$(function(){
		
			$("#verify_confirm").bind("click",function(a){
					if(<%=session.getAttribute("smem_id")==null%>){
						alert("로그인이 필요합니다");
						a.preventDefault();}
					
					else{
						var smem_id = '<%=session.getAttribute("smem_id")%>';
					
							
								$.ajax({
									url:"<c:url value='/Member/VerifyToMyPage.do'/>",
									data:{smem_id : smem_id },
									dataType:"json",
									async: false,
									success:function(json){
										if(json.verify=="N"){
											alert("본인인증 후 사용 가능합니다.");
											a.preventDefault();
										}
										
									},
									error:function(){
										alert("에러 발생");
										a.preventDefault();
									}
								});
								
					
						
						return true;
					}
							
			
		});
	});
	</script>
	
	<!-- header -->
	<div id="header-wrapper">
	<div id="header">
		<h1><a href="<c:url value='/Main/Main.do'/>"><img width="80" src='${pageContext.request.contextPath}/template/image/header_logo.png' alt="SOCAR"/></a></h1>
		
		<ul class="gnb">
		<li><a href=<c:url value='/Guide/Guide.do' /> class="gnb1" title="서비스안내">서비스안내</a></li>
		<li><a href=<c:url value='/Guide/Fare.do' /> class="gnb3" title="요금안내">요금안내</a></li>
		<li><a href=<c:url value='/Notice/Notice.do' /> class="gnb4" title="고객센터">고객센터</a></li>

		<li><a href="<c:url value='/Mypage/Mypage.do' />" id="verify_confirm" class="gnb5" title="마이페이지" data-href=https://www.socar.kr/mypage>마이페이지</a></li>
		

		<li><a href="<c:url value='/Reserve/Reserve.do' />" class="gnb6" title="쏘카 찾기·예약">쏘카 찾기·예약</a></li>
		</ul>

		<div class="util">	
					<c:if test="${empty sessionScope.smem_id}" var="isLogin">		
							<ul>
							<li><a href="https://www.socar.kr/user/login" class="util1" title="로그인">로그인</a></li>
							<li><a href=<c:url value="/Join/Join.do" /> class="util2" title="회원가입">회원가입</a></li>
							</ul>
					</c:if>
					<c:if test="${not isLogin}">
							<ul>
							<li><a href="<c:url value='/Mypage/Mypage.do' />" id="verify_confirm" class="util3">${sessionScope.smem_name} 님</a></li>
							<li><a href="<c:url value='/Member/Logout.do' />" class="util4" title="로그아웃">로그아웃</a></li>
							</ul>
					</c:if>
		</div>
		
	</div>
	</div>
	<!-- //header -->