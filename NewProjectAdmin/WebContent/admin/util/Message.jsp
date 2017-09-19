<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 어느 컨트롤러에서 왔는지에 따라 분기 -->
<c:choose>	
	<c:when test="${WHERE eq 'INPUTPOINT' }">
		<c:set var="SUC_MSG" value="포인트 변경 성공"/>
		<c:set var="FAIL_MSG" value="포인트 변경 실패"/>
		<c:set var="SUC_URL" value="/Member/MemberDetail.do?smem_id=${param.smem_id}"/>
	</c:when>
	<c:when test="${WHERE eq 'SMEMMODIFY' }">
		<c:set var="SUC_MSG" value="정보 수정 성공"/>
		<c:set var="FAIL_MSG" value="정보 수정 실패"/>
		<c:set var="SUC_URL" value="/Member/SimpleMemberDetail.do?smem_id=${param.smem_id}"/>
	</c:when>
	<c:when test="${WHERE eq 'MEMMODIFY' }">
		<c:set var="SUC_MSG" value="정보 수정 성공"/>
		<c:set var="FAIL_MSG" value="정보 수정 실패"/>
		<c:set var="SUC_URL" value="/Member/MemberDetail.do?smem_id=${param.smem_id}"/>
	</c:when>
	<c:when test="${WHERE eq 'COUINSERT' }">
		<c:set var="SUC_MSG" value="정보 입력 성공"/>
		<c:set var="FAIL_MSG" value="정보 입력 실패"/>
		<c:set var="SUC_URL" value="/Coupon/CouponList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'COUEDIT' }">
		<c:set var="SUC_MSG" value="쿠폰 정보 변경 성공"/>
		<c:set var="FAIL_MSG" value="쿠폰 정보 변경 실패"/>
		<c:set var="SUC_URL" value="/Coupon/CouponDetail.do?cou_code=${param.cou_code}"/>
	</c:when>
	<c:when test="${WHERE eq 'COUCREATE' }">
		<c:set var="SUC_MSG" value="쿠폰 생성 성공"/>
		<c:set var="FAIL_MSG" value="쿠폰 생성 실패"/>
		<c:set var="SUC_URL" value="/Coupon/CouponList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'INSERTNOTICE' }">
		<c:set var="SUC_MSG" value="공지 입력 성공"/>
		<c:set var="FAIL_MSG" value="공지 입력 실패"/>
		<c:set var="SUC_URL" value="/Bbs/Notice.do"/>
	</c:when>
		<c:when test="${WHERE eq 'PARKING_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/ZONE/List.do"/>
	</c:when>
	<c:when test="${WHERE eq 'PARKING_EDIT' }">
		<c:set var="SUC_MSG" value="수정 성공"/>
		<c:set var="FAIL_MSG" value="수정 실패"/>
		<c:set var="SUC_URL" value="/ZONE/List.do"/>
	</c:when>
	<c:when test="${WHERE eq 'PARKING_DELETE'}">
		<c:set var="SUC_MSG" value="삭제 성공"/>
		<c:set var="FAIL_MSG" value="삭제 실패"/>
		<c:set var="SUC_URL" value="/ZONE/List.do"/>
	</c:when>
		<c:when test="${WHERE eq 'CAR_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/CAR/CarList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'CAR_EDIT' }">
		<c:set var="SUC_MSG" value="수정 성공"/>
		<c:set var="FAIL_MSG" value="수정 실패"/>
		<c:set var="SUC_URL" value="/CAR/CarList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'CAR_DELETE'}">
		<c:set var="SUC_MSG" value="삭제 성공"/>
		<c:set var="FAIL_MSG" value="삭제 실패"/>
		<c:set var="SUC_URL" value="/CAR/CarList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'ADMIN_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/Admin/DeptList.do"/>
	</c:when>
		<c:when test="${WHERE eq 'DEPT_EDIT'}">
		<c:set var="SUC_MSG" value="수정 성공"/>
		<c:set var="FAIL_MSG" value="수정 실패"/>
		<c:set var="SUC_URL" value="/Admin/DeptDetail.do?dept_no=${param.dept_no}"/>
	</c:when>
	<c:when test="${WHERE eq 'DEPT_DELETE'}">
		<c:set var="SUC_MSG" value="삭제 성공"/>
		<c:set var="FAIL_MSG" value="삭제 실패"/>
		<c:set var="SUC_URL" value="/Admin/DeptList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'ADMIN_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/Admin/AdminList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'ADMIN_DELETE'}">
		<c:set var="SUC_MSG" value="삭제 성공"/>
		<c:set var="FAIL_MSG" value="삭제 실패"/>
		<c:set var="SUC_URL" value="/Admin/AdminList.do"/>
	</c:when>
		<c:when test="${WHERE eq 'CARD_INSERT'}">
		<c:set var="SUC_MSG" value="등록 성공"/>
		<c:set var="FAIL_MSG" value="등록 실패"/>
		<c:set var="SUC_URL" value="/Member/CardList.do"/>
	</c:when>
		<c:when test="${WHERE eq 'CAR_TYPE_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/CAR/CarTypeList.do"/>
	</c:when>
	<c:when test="${WHERE eq 'CAR_ISSUE'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/ZONE/View.do?soz_code=${param.soz_code}"/>
	</c:when>
	
	<c:when test="${WHERE eq 'CAR_WASTE'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/ZONE/View.do?soz_code=${param.soz_code}"/>
	</c:when>
	
	<c:when test="${WHERE eq 'RES_INSERT'}">
		<c:set var="SUC_MSG" value="입력 성공"/>
		<c:set var="FAIL_MSG" value="입력 실패"/>
		<c:set var="SUC_URL" value="/Reservation/ReserveList.do"/>
	</c:when>
	
	<c:when test="${WHERE eq 'INSERT_RENT_S'}">
		<c:set var="SUC_MSG" value="변경 성공"/>
		<c:set var="FAIL_MSG" value="변경 실패"/>
		<c:set var="SUC_URL" value="/Reservation/ReserveList.do"/>
	</c:when>
	
	<c:when test="${WHERE eq 'RES_CANC'}">
		<c:set var="SUC_MSG" value="취소 성공"/>
		<c:set var="FAIL_MSG" value="취소 실패"/>
		<c:set var="SUC_URL" value="/Reservation/ReserveList.do"/>
	</c:when>
	
</c:choose>














<script>
	<c:choose>
		<c:when test="${SUC_FAIL ==1}">
			alert("${SUC_MSG}");
			location.href='<c:url value="${SUC_URL}"/>';
		</c:when>
		<c:when test="${SUC_FAIL ==0}">
			alert("${FAIL_MSG}");
			history.back();
		</c:when>		
	</c:choose>
</script>