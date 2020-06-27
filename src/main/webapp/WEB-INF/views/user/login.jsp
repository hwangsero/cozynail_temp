<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="decorator" content="no" />
  <title>Login</title>
  <link rel='stylesheet' href="<c:url value='/css/common.css' />">
  <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
</head>
<body>
	<video autoplay muted loop id="myVideo">
	  <source src="/video/main-video.mp4" type="video/mp4">
	</video>
	<div class="video-dim"></div>
	<div class="login-wrap">
	  <form class="login-form" action="/calendar.do">
	    <div class="inner">
	      <div class="login-input">
	        <label for="id">id : </label>
	        <input type="text" name="id" id="id">
	      </div>
	      <div class="login-input">
	        <label for="password">password : </label>
	        <input type="password" name="password" id="password">
	      </div>
	      <div class="btn-style1-con">
	        <input class="btn-style1" type="submit" value="로그인">
	      </div>
	    </div>
	  </form>
	</div>
</body>
</html>