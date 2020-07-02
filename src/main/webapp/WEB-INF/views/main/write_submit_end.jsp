<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	  <meta charset="UTF-8">
	  <title>Richard MAIN</title>
	  <link rel='stylesheet' href="<c:url value='/css/timeline.css' />">
	  <script src='<c:url value="/js/pagejs/main/main.js" />'></script>
	  <script async src="//www.instagram.com/embed.js"></script>
	</head>
<body>

<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
		<c:if test="${msg == 'success' }">
			<div class="alert alert-success" role="alert">
              <h4 class="alert-heading">타임 라인 등록</h4>
              <p>타임라인 등록 성공</p>
            </div>
        </c:if>
        <c:if test="${msg == 'fail' }">
            <div class="alert alert-danger" role="alert">
              <h4 class="alert-heading">타임 라인 등록</h4>
              <p>타임라인 등록 실패</p>
            </div>
        </c:if>
		</div>
	</div>

    <div class="row col-sm-12 justify-content-end">
		<button type="button" class="btn btn-dark" onclick="location.href='main.do'">메인으로 돌아가기</button>
		<hr>
		<button type="button" class="btn btn-dark" onclick="location.href='main_write_form.do'">새 글 등록</button>
    </div>

</div>
</body>
</html>