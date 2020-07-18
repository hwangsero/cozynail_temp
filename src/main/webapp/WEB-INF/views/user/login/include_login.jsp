<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Icon
<div class="fadeIn first">
  <img src="<c:url value='/img/bt21_door.gif' />" id="icon" alt="User Icon" />
</div>-->
<!-- Login Form -->
<form class="login" name="login-form">
  <input type="text" id="id" class="fadeIn first" name="id" placeholder="login">
  <input type="text" id="password" class="fadeIn second" name="password" placeholder="password">
  <input type="button" class="fadeIn third" value="Log In" onclick="userLogin()">
<!-- 중복방지 Token Parameter -->
<input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
<!-- 중복방지 Token Parameter -->
</form>

