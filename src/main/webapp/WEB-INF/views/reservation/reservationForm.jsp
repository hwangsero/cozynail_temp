<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
              <h4 class="alert-heading">신규 회원 등록</h4>
              <p>회원 가입 입력 양식</p>
            </div>
            <!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			  회원 검색
			</button>
            <!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			      	<input type="text" id="search" placeholder="이름을 입력해주세요"/>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      <ul class="modal-ul" >
			      </ul>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>

			<form class="login" name="login-form">
			  <div class="form-group row div-name">
			    <label for="name" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control" readonly>
			    </div>
			  </div>
			  <div class="form-group row div-phone">
			    <label for="phone" class="col-sm-2 col-form-label">연락처</label>
			    <div class="col-sm-10">
			      <input id="phone" type="text" class="form-control" readonly>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveDate" class="col-sm-2 col-form-label">예약일자</label>
			    <div class="col-sm-10">
			      <input id="reserveDate" type="date" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveDate" class="col-sm-2 col-form-label">예약시간</label>
			    <div class="col-sm-10">
			      <input id="reserveDate" type="time" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label class="col-sm-2 col-form-label">시술종류</label>
			    <div class="col-sm-10">
			    <c:forEach items="${reserveFormInfo.workMasterList}" var="workInfo">
			     <label>${workInfo.workNm }<input id="workNm" name="workNm" type="checkbox" value="네일" checked class="form-control"></label>
			    </c:forEach>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label class="col-sm-2 col-form-label">결제방법</label>
			    <div class="col-sm-10">
			    <c:forEach items="${reserveFormInfo.payMasterList}" var="payInfo">
				    <c:choose>
				    	<c:when test="${payInfo.payNm eq '현금'}">
				    		 <label>${payInfo.payNm }(${payInfo.payMark })<input id="payState" name="payState" type="radio" value="카드" checked class="form-control"></label>
				    	</c:when>
				    	<c:otherwise>
				    		 <label>${payInfo.payNm }<input id="payState" name="payState" type="radio" value="카드" checked class="form-control"></label>
				    	</c:otherwise>
				    </c:choose>
			    </c:forEach>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="payPrice" class="col-sm-2 col-form-label">결제금액</label>
			    <div class="col-sm-10">
			      <input id="payPrice" type="text" class="form-control">
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="workerInfo" class="col-sm-2 col-form-label">근무자</label>
			    <div class="col-sm-10">
			      <select name="workerInfo">
			      <c:forEach items="${reserveFormInfo.workerMasterList}" var="workerInfo">
			      	<option value="근무자정보">${workerInfo.workerNm} ${workerInfo.workerTel }</option>
			      </c:forEach>
			      </select>
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">기타</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>

			  <div class="form-group row">
			    <div class="col">
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
<script type="text/javascript" src="${pagecontext.request.contextPath }/js/pagejs/reservation/reservationForm.js"></script>"
<script id="template-search-list" type="text/template">
<span style='width: 85px'> {userNm}</span>
<span style='width: 150px'> {userTel} </span>
</script>
</body>
</html>