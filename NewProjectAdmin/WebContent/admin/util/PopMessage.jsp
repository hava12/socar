<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${WHERE eq 'ADMIN_EDIT'}">
		<c:set var="SUC_MSG" value="수정 성공"/>
		<c:set var="FAIL_MSG" value="수정 실패"/>
		<c:set var="MSG" value="opener.location.reload(true)"/>
	</c:when>
	<c:when test="${WHERE eq 'FIND_MEM'}">
		<c:set var="SUC_MSG" value='확인되었습니다.'/>
		<c:set var="FAIL_MSG" value=''/>
	</c:when>
	<c:when test="${WHERE eq 'INSERT_RENT_E'}">
		<c:set var="SUC_MSG" value='렌트 종료 입력 완료'/>
		<c:set var="FAIL_MSG" value='렌트 종료 입력 실패'/>
	</c:when>
</c:choose>

<script>
	<c:choose>
		<c:when test="${SUC_FAIL ==1}">
		
			alert("${SUC_MSG}");
			${MSG}
			window.close();
			
		</c:when>
		<c:when test="${SUC_FAIL ==0}">
			alert("${FAIL_MSG}");
			${MSG}
			window.close();
		</c:when>		
	</c:choose>
</script>