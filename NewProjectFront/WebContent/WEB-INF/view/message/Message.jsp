<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:choose>

	<c:when test="${WHERE eq 'Login' }">
		<c:set var="SUC_URL"  value="/Main/Main.do"/>
		<c:set var="SUC_MSG"  value="ID 또는 PASSWORD가 올바르지 않습니다"/>
	</c:when>
	<c:when test="${WHERE eq 'Logout' }">
		<c:set var="SUC_URL"  value="/Main/Main.do"/>
		<c:set var="SUC_MSG"  value="로그아웃 되었습니다."/>
	</c:when>
	<c:when test="${WHERE eq 'COMPLETESOJOIN' }">
		<c:set var="SUC_URL"  value="/Mypage/Mypage.do"/>
		<c:set var="SUC_MSG"  value=" 가입 완료되었습니다."/>
		<c:set var="FAIL_MSG"  value=" 가입실패하엿습니다."/>
	</c:when>
		<c:when test="${WHERE eq 'VERIFY_MEM' }">
		<c:set var="SUC_URL"  value="/Main/Main.do"/>
		<c:set var="SUC_MSG"  value=" 본인인증 완료되었습니다."/>
		<c:set var="FAIL_MSG"  value=" 본인인증에 실패하엿습니다."/>
	</c:when>
	
</c:choose>


<script>
	<c:choose>
		<c:when test="${SUC_FAIL ==1}">
			alert("${SUC_MSG}");
			location.href='<c:url value="${SUC_URL}"/>';
		</c:when>
		<c:otherwise>
			alert("${FAIL_MSG}");
			history.back();
		</c:otherwise>		
	</c:choose>
</script>

