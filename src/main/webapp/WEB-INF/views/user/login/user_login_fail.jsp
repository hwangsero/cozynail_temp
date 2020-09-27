<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="decorator" content="no" />
  <title>LoginComplete</title>
  <link rel='stylesheet' href="<c:url value='/css/bootstrap.css' />">
  <link rel="stylesheet" href="<c:url value='/css/login.css' />">
  <link rel="stylesheet" href="<c:url value='/css/reg.css' />">
  <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
</head>
<body>
<video autoplay muted loop id="myVideo">
  <source src="/video/main-video.mp4" type="video/mp4">
</video>
<div class="video-dim"></div>
  <!--로그인 :: S -->
  <div class="wrapper fadeInDown">

      <div id="formContent">

        <div class="login_join" id="login_join">
        	<!-- Icon -->
			<div class="fadeIn first">
			  <img src="<c:url value='/img/bt21_door.gif' />" id="icon" alt="User Icon" />
			</div>
			<p>로그인 실패</p>
        </div>
        <!-- Remind Passowrd -->
        <div id="formFooter">
			<a class="underlineHover" href="<c:url value='main.do' />">Go to home</a>
			<hr>
			<a class="underlineHover" href="#">Forgot Password?</a>
        </div>
		<!-- 로그인 탭 -->
        <!-- 회원가입 탭 -->

      </div>
  </div>
</body>

</html>