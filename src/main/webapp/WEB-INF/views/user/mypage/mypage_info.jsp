<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 마이페이지</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<h1>마이페이지 정보 수정</h1>
			<form class="login" name="login-form">
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">ID</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">비밀번호</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">성별</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">생년월일</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="phone" class="col-sm-2 col-form-label">휴대전화</label>
			    <div class="col-sm-10">
			      <input id="phone" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="phone" class="col-sm-2 col-form-label">프로필 사진</label>
			    <div class="col-sm-10">
			      <input id="phone" type="text" class="form-control">
			    </div>
			  </div>

			  <div class="form-group row">
			    <label for="save" class="col-sm-10 col-form-label"></label>
			    <div class="col">
			      <input type="button" class="btn btn-white" value="뒤로가기">
			      <input type="button" class="btn btn-dark" value="저장" onclick="validForm()">
			    </div>
			  </div>

			  <!-- 중복방지 Token Parameter -->
			  <input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
			  <!-- 중복방지 Token Parameter -->
			</form>
		</div>
	</div>
</div>

</body>
</html>