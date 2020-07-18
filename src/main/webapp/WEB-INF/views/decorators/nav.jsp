<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav id="sidebar" class="sidebar-wrapper">
      <div class="sidebar-content">
        <div class="sidebar-brand">
          <a href="#">COZY NAIL 코지네일</a>
          <div id="close-sidebar">
            <i class="fas fa-times"></i>
          </div>
        </div>
        <div class="sidebar-header">
          <div class="user-pic">
            <!--프로필 사진-->
            <img class="img-responsive img-rounded"src="<c:url value='/img/user.jpg' />" alt="User picture" style="height: auto;"/>
          </div>
          <div class="user-info">
            <span class="user-name">윤지선</span>
            <span class="user-role">Administrator</span>
            <span class="user-status">
              <i class="fa fa-circle"></i>
              <span>Online</span>
            </span>
          </div>
        </div>
<!-- 통합검색창 :: S
        <div class="sidebar-search">
          <div>
            <div class="input-group">
              <input type="text" class="form-control search-menu" placeholder="Search..." />
              <div class="input-group-append">
                <span class="input-group-text">
                  <i class="fa fa-search" aria-hidden="true"></i>
                </span>
              </div>
            </div>
          </div>
        </div>
통합검색창 :: E -->
        <div class="sidebar-menu">
          <ul>
            <li class="header-menu">
              <span></span>
            </li>
            <li>
              <a href="/main.do">
                <i class="fa fa-folder"></i>
                <span>코지 네일 살롱 소개</span>
              </a>
            </li>
            <li>
              <a href="/calendar.do">
                <i class="fa fa-calendar"></i>
                <span>예약 현황</span>
              </a>
            </li>
            <li class="sidebar-dropdown" id="priceplace">
              <a href="javascript:void(0);">
                <i class="far fa-gem"></i>
                <span>가격 & 장소</span>
                <!-- <span class="badge badge-pill badge-danger">3</span> -->
              </a>
              <div class="sidebar-submenu" id="priceplace-sub">
                <ul>
                  <li><a href="/wherecozynail.do">오시는 길</a></li>
                  <li><a href="/rates.do">가격표</a></li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown" id="questions">
              <a href="javascript:void(0);">
                <i class="fa fa-globe"></i>
                <span>문의사항</span>
              </a>
              <div class="sidebar-submenu" id="questions-sub">
                <ul>
                  <li>
                    <a href="/faq.do">FAQ</a>
                  </li>
                  <li>
                    <a href="/onevsone.do">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="header-menu">
              <span>관리자페이지</span>
            </li>
            <li>
              <a href="/statistics.do">
                <i class="fa fa-chart-line"></i>
                <span>통계</span>
                <!-- <span class="badge badge-pill badge-primary">Beta</span>-->
              </a>
            </li>
            <li>
              <a href="/member.do">
                <i class="fa fa-book"></i>
                <span>회원 관리</span>
                <!-- <span class="badge badge-pill badge-warning">New</span> -->
              </a>
            </li>
            <!-- 추후에 지울 예정 -->
			<li>
              <a href="/user/EmplyrCreat.do">
                <i class="fa fa-calendar"></i>
                <span>부트스트랩 샘플 페이지</span>
              </a>
            </li>
             <!-- 추후에 지울 예정 -->
          </ul>
        </div>

      </div>

      <div class="sidebar-footer">
      	<!-- 알림
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-bell"></i>
          <span class="badge badge-pill badge-warning notification">3</span>
        </a>
        <!--쪽지함
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-envelope"></i>
          <span class="badge badge-pill badge-success notification">7</span>
        </a>
        <!--내 정보 수정
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-cog"></i>
          <span class="badge-sonar"></span>
        </a>-->
        <!-- 로그인/로그아웃 -->
        <a href="/user/user_login.do" style="margin-top: 10px;">
			<i class="fa fa-power-off"> 로그인</i>
		</a>
      </div>
    </nav>