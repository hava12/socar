<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="a" action="<c:url value='/Bbs/InquiryReply.do'/>" method="post">
	<label>제목</label><input name="subject" type="text">
	<label>내용</label><input name="content" type="text">
	<input onclick="check()" type="button" value="메일발송">
	<input name="from" type="hidden" value="jpark4653@naver.com">
	<input name="to" type="hidden" value="jpark4653@gmail.com">
	<input type="hidden" name="i_no" value="${i_no}">
	</form>
	<script>
	function check(){
		document.a.submit();
	}
	</script>
</body>
</html>