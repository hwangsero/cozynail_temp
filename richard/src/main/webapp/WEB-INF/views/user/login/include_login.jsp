<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Icon -->
<div class="fadeIn first">
  <img src="<c:url value='/img/bt21_door.gif' />" id="icon" alt="User Icon" />
</div>
<!-- Login Form -->
<form class="login" name="login">
  <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
  <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
  <input type="submit" class="fadeIn fourth" value="Log In">
<!-- 중복방지 Token Parameter -->
<input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
<!-- 중복방지 Token Parameter -->
</form>

