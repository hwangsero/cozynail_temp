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
    <div class="row page-header">
        <h1 id="timeline">Timeline</h1>
    </div>
<c:if test = "${rank eq 'M'}">
    <div class="row col-sm-12 justify-content-end">
		<button type="button" class="btn btn-dark" onclick="location.href='main_write_form.do'">글쓰기</button>
    </div>
</c:if>
    <ul class="timeline col-sm-12">

    <c:forEach var="vo" items="${mainList}" varStatus="status">
   	<c:if test="${status.count %2 != 0 }">
   		<li>
   	</c:if>
   	<c:if test="${status.count %2 == 0 }">
   		<li class="timeline-inverted">
   	</c:if>
   	<c:choose>
   		<c:when test="${vo.color == 'GN' }">
   		  <div class="timeline-badge success"><i class="glyphicon glyphicon-thumbs-up"></i></div>
   		</c:when>
   		<c:when test="${vo.color == 'SK' }">
   		  <div class="timeline-badge info"><i class="glyphicon glyphicon-floppy-disk"></i></div>
   		</c:when>
   		<c:when test="${vo.color == 'BL' }">
   		  <div class="timeline-badge primary"><i class="glyphicon glyphicon-credit-card"></i></div>
   		</c:when>
   		<c:when test="${vo.color == 'RE' }">
   		  <div class="timeline-badge danger"><i class="glyphicon glyphicon-credit-card"></i></div>
   		</c:when>
   		<c:when test="${vo.color == 'OR' }">
   		  <div class="timeline-badge warning"><i class="glyphicon glyphicon-credit-card"></i></div>
   		</c:when>
   		<c:otherwise>
   		  <div class="timeline-badge"><i class="glyphicon glyphicon-check"></i></div>
   		</c:otherwise>
   	</c:choose>
          <div class="timeline-panel">
<c:if test = "${rank eq 'M'}">
	        <button type="button" class="btn btn-dark" onclick="updateItem('${vo.no }')">수정</button>
        	<button type="button" class="btn btn-dark" onclick="deleteItem('${vo.no }','${vo.title }')">삭제</button>
        	<p>${vo.userNm} : ${vo.userId }</p>
</c:if>
            <div class="timeline-heading">
              <h4 class="timeline-title">${vo.title }</h4>
              <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i>${vo.updateDate }</small></p>
            </div>
            <div class="timeline-body">
              <img src="${vo.photoUrl }" /> <!-- photo, content null 허용. -->
              <p>${vo.content}</p>
            </div>
          </div>
        </li>
    </c:forEach>
    </ul>
</div>
</body>
</html>