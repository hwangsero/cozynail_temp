<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	  <meta charset="UTF-8">
	  <title>Richard MAIN</title>
	  <link rel='stylesheet' href="<c:url value='/css/timeline.css' />">
	  <script src='<c:url value="/js/pagejs/main/main.js" />'></script>
	</head>
<body>

<div class="container-fluid" style="min-height: 66vh;">
    <div class="page-header">
        <h1 id="timeline">Timeline</h1>
    </div>

<div class="row">
		<div class="col-md-12">
			<div class="alert alert-success" role="alert">
              <h4 class="alert-heading">타임 라인 등록</h4>
              <p>타임라인 등록 화면</p>
            </div>
			<form class="form" name="timeline-form" enctype="multipart/form-data">
<c:if test="${mainVo != null && Type=='M'}">
			<input id="no" name="no" type="hidden" value="${mainVo.no }">
</c:if>
			<input id="userNm" name="userNm" type="hidden" value="${name }">
			<input id="userId" name="userId" type="hidden" value="${id }">
			  <div class="form-group row">
			    <label for="title" class="col-sm-2 col-form-label">핀 색깔</label>
			    <div class="btn-group col-sm-10" role="group" aria-label="color pick">
				    <button id="green" name="green" type="button" class="btn btn-success">GREEN</button>
				    <button id="sky" name="sky" type="button" class="btn btn-info">SKY</button>
				    <button id="blue" name="blue" type="button" class="btn btn-primary">BLUE</button>
				    <button id="red" name="red" type="button" class="btn btn-danger">RED</button>
				    <button id="orange" name="orange" type="button" class="btn btn-warning">ORANGE</button>
				    <button id="gray" name="gray" type="button" class="btn btn-secondary">GRAY</button>
				    <input id="color" name="color" type="text" class="form-control" readonly value="${mainVo.color }">
			    </div>

			  </div>
<c:if test="${mainVo == null && Type!='M'}">
			  <div class="form-group row">
			    <label for="title" class="col-sm-2 col-form-label">제목</label>
			    <div class="col-sm-10">
			      <input id="title" name="title" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="photo" class="col-sm-2 col-form-label">사진등록</label>
			    <div class="col-sm-10">
			      <img id="thumbnail" src="/img/No_image_available.png" alt="No_image_available" class="img-thumbnail" style="width:300px">
			      <input id="photo" name="photo" type="file">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="content" class="col-sm-2 col-form-label">내용</label>
			    <div class="col-sm-10">
			   	  <textarea id="content" name="content" class="form-control" rows="4"></textarea>
			    </div>
			  </div>
</c:if>
<c:if test="${mainVo != null && Type=='M'}">
			  <div class="form-group row">
			    <label for="title" class="col-sm-2 col-form-label">제목</label>
			    <div class="col-sm-10">
			      <input id="title" name="title" type="text" class="form-control" value="${mainVo.title }">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="photo" class="col-sm-2 col-form-label">사진등록</label>
			    <div class="col-sm-10">
			      <img id="thumbnail" src="${mainVo.photoUrl }" alt="img-thumbnail" class="img-thumbnail" style="width:300px">
			      <input id="photo" name="photo" type="file">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="content" class="col-sm-2 col-form-label">내용</label>
			    <div class="col-sm-10">
			   	  <textarea id="content" name="content" class="form-control" rows="4">${mainVo.content }</textarea>
			    </div>
			  </div>
</c:if>


			  <!-- 중복방지 Token Parameter -->
			  <input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
			  <!-- 중복방지 Token Parameter -->
			</form>
		</div>
	</div>

    <div class="row col-sm-12 justify-content-end">
    <c:if test="${mainVo == null && Type!='M'}">
		<button type="button" class="btn btn-dark" onclick="Save()">저장</button>
		<button type="button" class="btn btn-dark" onclick="location.href='main.do'">취소</button>
	</c:if>
	<c:if test="${mainVo != null && Type=='M'}">
		<button type="button" class="btn btn-dark" onclick="Update()">수정</button>
		<button type="button" class="btn btn-dark" onclick="location.href='main.do'">취소</button>
	</c:if>
    </div>

</div>
</body>