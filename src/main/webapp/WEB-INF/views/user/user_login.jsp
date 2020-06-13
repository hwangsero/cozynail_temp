<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="decorator" content="no" />
  <title>Login&Join</title>
  <link rel='stylesheet' href="<c:url value='/css/bootstrap.css' />">
  <link rel="stylesheet" href="<c:url value='/css/login.css' />">
  <link rel="stylesheet" href="<c:url value='/css/reg.css' />">
  <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
  <script src="<c:url value='/js/pagejs/user/login/include_login.js' />"></script>
  <script src="<c:url value='/js/pagejs/user/join/include_join.js' />"></script>
  <script src="<c:url value='/js/pagejs/user/user_login.js' />"></script>
  <script src="<c:url value='/js/common.js' />"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

  <!--로그인 :: S -->
  <div class="wrapper fadeInDown">

      <div id="formContent">
        <!-- Tabs Titles -->
        <h2 class="active underlineHover" id="loginBtn"> Sign In </h2>
        <h2 class="inactive underlineHover" id="regBtn">Sign Up </h2>

        <div class="login_join" id="login_join">


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