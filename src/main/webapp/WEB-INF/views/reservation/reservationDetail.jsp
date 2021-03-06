<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reservationForm.css" />
	<meta charset="utf-8"/>
	<title>코지 네일 신규 회원 등록</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<div class="alert alert-success" role="alert">
              <h4 class="alert-heading">예약 상세</h4>
            </div>

			<form class="form-reserve" name="form-reserve">
			<input id="userNo" name="userNo" type="hidden" class="form-control" readonly>
			  <div class="form-group row div-name">
			    <label for="name" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10">
			      <input id="name" name="userNm" type="text" class="form-control" value="${reserveInfo.userNm}" readonly>
			    </div>
			  </div>
			  <div class="form-group row div-phone">
			    <label for="phone" class="col-sm-2 col-form-label">연락처</label>
			    <div class="col-sm-10">
			      <input id="phone" name="userTel" type="text" class="form-control"
			      value="${fn:substring(reserveInfo.userTel, 0, 3)}-${fn:substring(reserveInfo.userTel, 3, fn:length(reserveInfo.userTel)-4)}-${fn:substring(reserveInfo.userTel, fn:length(reserveInfo.userTel)-4, fn:length(reserveInfo.userTel))}" readonly>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveDate" class="col-sm-2 col-form-label">예약일자</label>
			    <div class="col-sm-10">
			      <input id="reserveDate" name="reserveDate" type="date" class="form-control" value="${reserveInfo.reserveDate}" readonly>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveTime" class="col-sm-2 col-form-label">예약시간</label>
			    <div class="col-sm-10">
			      <input id="reserveTime" name="reserveTime" type="time" class="form-control" value="${reserveInfo.reserveTime}" readonly>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label class="col-sm-2 col-form-label">시술종류</label>
			    <div class="col-sm-10 divWorkInfo">
			    <c:forEach items="${reserveInfo.reserveWorks}" var="workNm" varStatus="workInfo">
			    <c:if test="${workInfo.index != 0 }">,&nbsp</c:if>
			     ${workNm}
			    </c:forEach>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label class="col-sm-2 col-form-label">결제방법</label>
			    <div class="col-sm-10">
			   <span>${reserveInfo.payNm}</span>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="payPrice" class="col-sm-2 col-form-label">결제금액</label>
			    <div class="col-sm-10">
			   <fmt:formatNumber type="number" maxFractionDigits="3" value="${reserveInfo.payPrice}" var="price"/>
			      <input id="payPrice" name="payPrice" type="text" class="form-control" value="${price}" readonly>
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="workerMater" class="col-sm-2 col-form-label">근무자</label>
			    <div class="col-sm-10">
			      <span>${reserveInfo.workerNm}</span>
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="otherInfo" class="col-sm-2 col-form-label">기타</label>
			    <div class="col-sm-10">
			      <input id="otherInfo" name="otherInfo" type="text" class="form-control" value="${reserveInfo.otherInfo}" readonly>
			    </div>
			  </div>

			  <div class="form-group row">
			    <div class="col">
			    </div>
			  </div>
			  <!-- 중복방지 Token Parameter -->
			   <input type="hidden" id="input-reserveNo" name="reserveNo" value="${reserveInfo.reserveNo }">
			  <input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
			  <!-- 중복방지 Token Parameter -->
			</form>
			      <input type="button" class="btn-reserve-update btn-dark" value="수정" onclick="location.href='reservation/updateForm.do?reserveNo=${reserveInfo.reserveNo}'">
			      <input type="button" class="btn-reserve-delete btn-dark" value="삭제">
		</div>
	</div>
</div>

<script>
	function validForm(event) {
		console.log("function "+event);
		event.preventDefault();
		var form = document.RegisterForm;
		form.method = "post";
		form.action = "${pageContext.request.contextPath}/registersuccess.do"
		form.submit();
	}
</script>
<script type="text/javascript" src="${pagecontext.request.contextPath }/js/pagejs/reservation/reservationDetail.js"></script>"
<script id="template-search-list" type="text/template">
<span class="searchName" style='width: 85px'> {userNm}</span>
<span class="searchTel" style='width: 150px'> {userTel} </span>
<span class="searchId" style='width: 150px'> {userId} </span>
<input class="searchNo" type="hidden" style='width: 0px' value='{userNo}'/>
</script>
</body>
</html>