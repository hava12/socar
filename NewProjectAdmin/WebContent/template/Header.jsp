<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <header class="head-section">
      <div class="navbar navbar-default navbar-static-top container">
          <div class="navbar-header">
              <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<c:url value='/admin/Main.jsp' />">Socar<span>Admin</span></a>
          </div>
          <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                  <li>
                      <a href="<c:url value='/admin/Main.jsp' />">HOME</a>
                  </li>
                 <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">회원관리<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/Member/SimpleMemberList.do' />">기본회원 관리</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Member/MemberList.do' />">SO회원 관리</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Member/MemberShipList.do' />">포인트 발급 보기</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Member/CardList.do' />">카드 등록 정보 보기</a>
                          </li>
                          
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">쏘카존 관리<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/ZONE/List.do' />">쏘카존 리스트</a>
                          </li>
                          <li>
                              <a href="<c:url value='/ZONE/Add.do' />">쏘카존 등록</a>
                          </li>
                      </ul>
                  </li>
                                    <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">차량 관리<i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/CAR/CarTypeAdd.do' />">차량 타입 등록</a>
                          </li>
                          <li>
                              <a href="<c:url value='/CAR/CarTypeList.do' />">차량 타입 리스트</a>
                          </li>
                          <li>
                              <a href="<c:url value='/CAR/CarAdd.do' />">차량 등록</a>
                          </li>
                          <li>
                              <a href="<c:url value='/CAR/CarList.do' />">차량 리스트</a>
                          </li>
                          <li>
                              <a href="<c:url value='/CAR/CarWasteList.do' />">폐기차량 리스트</a>
                          </li>

                      </ul>
                  </li>
                

                  
                 <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">이용 관련 <i class="fa fa-angle-down"></i>
                      </a>

                      <ul class="dropdown-menu">

                          <li class="dropdown-submenu">
                              <a href="#" tabindex="-1">예약 관리</a>

	                              <ul class="dropdown-menu">
                                  <li>
                                      <a href="<c:url value='/Reserve/InsertReserve.do' />">예약 수동 등록</a>
                                  </li>
                                  <li>
                                      <a href="<c:url value='/Reservation/ReserveList.do' />">예약 보기</a>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </li>
                  
                  
                  <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">게시판관리 <i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/Bbs/Notice.do' />">공지사항 관리</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Bbs/Inquiry.do' />">1:1문의 관리</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Bbs/RqCarList.do' />">차량신청 게시판 관리</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Bbs/RqLocList.do' />">지역신청 게시판 관리</a>
                          </li>
                   
                          
                      </ul>
                  </li>
				  
				 <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">쿠폰 관리 <i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/admin/coupon/CouponInsert.jsp' />">쿠폰 정보 생성</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Coupon/CouponList.do' />">쿠폰 리스트 </a>
                          </li>
<!--                     	  <li> -->
<%--                               <a href="<c:url value='/Coupon/CouponCreate.do' />">쿠폰 발급 </a> --%>
<!--                           </li> -->
<!--                     	  <li> -->
<%--                               <a href="<c:url value='/Coupon/CouponIssue.do' />">쿠폰 발급 </a> --%>
<!--                           </li> -->
                   
                          
                          
                      </ul>
                  </li>
				  
	  			     <li class="dropdown">
                      <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown" href="#">어드민 관리 <i class="fa fa-angle-down"></i>
                      </a>
                      <ul class="dropdown-menu">
                          <li>
                              <a href="<c:url value='/Admin/DeptList.do' />">부서 보기</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Admin/InsertDept.do' />">부서 생성</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Admin/AdminList.do' />">어드민 리스트</a>
                          </li>
                          <li>
                              <a href="<c:url value='/Admin/AdminInsert.do' />">어드민 등록</a>
                          </li>
                   
                      </ul>
                  </li>
				  
			
				  
				  <li>
                      <a href="<c:url value='/Member/Logout.do' />">로그아웃</a>
                  </li>
                 
          </div>
      </div>
    </header>