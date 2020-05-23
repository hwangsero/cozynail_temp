<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav id="sidebar" class="sidebar-wrapper">
      <div class="sidebar-content">
        <div class="sidebar-brand">
          <a href="#">Youtube Lecture Management</a>
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

        <div class="sidebar-search">
          <!--통합검색창-->
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

        <div class="sidebar-menu">
          <ul>
            <li class="header-menu">
              <span>Hello</span>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-folder"></i>
                <span>Home</span>
              </a>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="fa fa-chart-line"></i>
                <span>마이페이지</span>
                <span class="badge badge-pill badge-warning">New</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">커리큘럼 관리
                      <span class="badge badge-pill badge-success">Pro</span>
                    </a>
                  </li>
                  <li>
                    <a href="#">나의 커리큘럼 진행률</a>
                  </li>
                  <li>
                    <a href="#">즐겨찾는 회원</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="far fa-gem"></i>
                <span>커리큘럼 카테고리</span>
                <span class="badge badge-pill badge-danger">3</span>
              </a>
              <div class="sidebar-submenu">
                <ul><!--이건 유튜브 카테고리 그대로 쓴것.-->
                  <li><a href="#">자동차</a></li>
                  <li><a href="#">뷰티/패션</a></li>
                  <li><a href="#">코미디</a></li>
                  <li><a href="#">교육</a></li>
                  <li><a href="#">엔터테인먼트</a></li>
                  <li><a href="#">가족 엔터테인먼트</a></li>
                  <li><a href="#">영화/애니메이션</a></li>
                  <li><a href="#">음식</a></li>
                  <li><a href="#">게임</a></li>
                  <li><a href="#">노하우/스타일</a></li>
                  <li><a href="#">음악</a></li>
                  <li><a href="#">뉴스/정치</a></li>
                  <li><a href="#">비영리/사회운동</a></li>
                  <li><a href="#">인물/블로그</a></li>
                  <li><a href="#">애완동물/동물</a></li>
                  <li><a href="#">과학기술</a></li>
                  <li><a href="#">스포츠</a></li>
                  <li><a href="#">여행/이벤트</a></li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="javascript:void(0);">
                <i class="fa fa-globe"></i>
                <span>관리자 페이지</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="javascript:void(0);">회원 관리</a>
                  </li>
                  <li>
                    <a href="javascript:void(0);">리뷰 글 관리</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="header-menu">
              <span>Extra</span>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-book"></i>
                <span>리뷰보드</span>
                <span class="badge badge-pill badge-primary">Beta</span>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-calendar"></i>
                <span>달력</span>
              </a>
            </li>

          </ul>
        </div>

      </div>

      <div class="sidebar-footer">
      	<!-- 알림 -->
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-bell"></i>
          <span class="badge badge-pill badge-warning notification">3</span>
        </a>
        <!--쪽지함-->
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-envelope"></i>
          <span class="badge badge-pill badge-success notification">7</span>
        </a>
        <!--내 정보 수정-->
        <a href="#" style="margin-top: 10px;">
          <i class="fa fa-cog"></i>
          <span class="badge-sonar"></span>
        </a>
        <!-- 로그인/로그아웃 -->
        <a href="/login/login.html" style="margin-top: 10px;">
			<i class="fa fa-power-off"></i>
		</a>
      </div>
    </nav>