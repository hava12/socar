<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="login mwCont">


	<form name="login" method="post" action="<c:url value='/Member/Login.do' />">
		<input id="redirect" name="redirect" type="hidden" value=""/>
		<input id="redirect_data" name="redirect_data" type="hidden" value=""/>
		<fieldset>
			<dl>
				<dt><img alt="아이디" src='${pageContext.request.contextPath}/template/image/id.png' /></dt>
				<dd><input type="text" class="input" name="smem_id" /></dd>
				<dt><img alt="비밀번호" src='${pageContext.request.contextPath}/template/image/pw.png' /></dt>
				<dd><input type="password" class="input" name="smem_pwd" /></dd>
			</dl>
			<input type="image" src='${pageContext.request.contextPath}/template/image/btn_login.png' class="submit" id="login_btn" />

		</fieldset>
	</form>

	<ul>
		<li><a title="회원가입" class="lg1" href="<c:url value='/Join/Join.do' />"><img src='${pageContext.request.contextPath}/template/image/join.png' alt="회원가입" /></a></li>
		<li><a title="아이디·비밀번호 찾기" class="lg2" href="#"><img src='${pageContext.request.contextPath}/template/image/idpw.png' alt="아이디·비밀번호 찾기" /></a></li>
	</ul>
</div>