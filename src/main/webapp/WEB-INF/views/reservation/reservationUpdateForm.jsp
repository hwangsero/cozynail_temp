<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
              <h4 class="alert-heading">예약 수정</h4>
            </div>
            <!-- Button trigger modal -->
			<button type="button" disabled class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			  회원 검색
			</button>
			<span style='color: red' id="msgUserInfo">&nbsp&nbsp회원검색을 통해 회원정보를 선택해주세요</span>
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
			      </div>
			    </div>
			  </div>
			</div>

			<form class="form-reserve" name="form-reserve" action="/reservation/update.do" method="post">
			<input id="userNo" name="userNo" type="hidden" class="form-control" value=${reserveInfo.userNo } readonly>
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
				value="${reserveInfo.userTel}" readonly>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveDate" class="col-sm-2 col-form-label">예약일자</label>
			    <div class="col-sm-10">
			      <input id="reserveDate" name="reserveDate" type="date" class="form-control" value="${reserveInfo.reserveDate}">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="reserveTime" class="col-sm-2 col-form-label">예약시간</label>
			    <div class="col-sm-10">
			      <input id="reserveTime" name="reserveTime" type="time" class="form-control" value="${reserveInfo.reserveTime}">
			    </div>
			  </div>
			  <div class="form-group row">

			    <c:set var="works" value="${reserveInfo.reserveWorks}"></c:set>
			    <c:set var="splitWorks" value="${fn:split(works,',')}"></c:set>
			    <c:set var="joinedWorks" value="${fn:join(splitWorks,'][')}"></c:set>
			    <span>
			    </span>

			    <label class="col-sm-2 col-form-label">시술종류</label>
			    <div class="col-sm-10 divWorkInfo">
			    <c:forEach items="${reserveFormInfo.workMasterList}" var="workInfo">
					<c:choose>
						<c:when test="${fn:contains(joinedWorks,workInfo.workNm) }">
				    		<label>${workInfo.workNm }<input name="workNo" type="checkbox" checked value="${workInfo.workNo}" class="form-control"></label>&nbsp&nbsp
						</c:when>
						<c:otherwise>
				    		<label>${workInfo.workNm }<input name="workNo" type="checkbox" value="${workInfo.workNo}" class="form-control"></label>&nbsp&nbsp
						</c:otherwise>
					</c:choose>
			    </c:forEach>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label class="col-sm-2 col-form-label">결제방법</label>
			    <div class="col-sm-10">
			    <c:forEach items="${reserveFormInfo.payMasterList}" var="payInfo">
				    <c:if test="${payInfo.payState eq reserveInfo.payState }">
					    <c:choose>
					    	<c:when test="${payInfo.payNm eq '현금'}">
					    		 <label>${payInfo.payNm }(${payInfo.payMark })&nbsp<input class="payState" name="payState" type="radio" value="${payInfo.payState }" checked class="form-control"></label>&nbsp&nbsp
					    	</c:when>
					    	<c:otherwise>
					    		 <label>${payInfo.payNm }&nbsp
					    		 <input class="payState" name="payState" type="radio" value="${payInfo.payState }" checked class="form-control"></label>&nbsp&nbsp
					    	</c:otherwise>
					    </c:choose>
					</c:if>
					<c:if test="${payInfo.payState != reserveInfo.payState }">
					    <c:choose>
					    	<c:when test="${payInfo.payNm eq '현금'}">
					    		 <label>${payInfo.payNm }(${payInfo.payMark })&nbsp<input class="payState" name="payState" type="radio" value="${payInfo.payState }" class="form-control"></label>&nbsp&nbsp
					    	</c:when>
					    	<c:otherwise>
					    		 <label>${payInfo.payNm }&nbsp
					    		 <input class="payState" name="payState" type="radio" value="${payInfo.payState }" class="form-control"></label>&nbsp&nbsp
					    	</c:otherwise>
					    </c:choose>
					</c:if>
			    </c:forEach>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="payPrice" class="col-sm-2 col-form-label">결제금액</label>
			    <div class="col-sm-10">
			      <input id="payPrice" name="payPrice" type="text" class="form-control" value="${reserveInfo.payPrice}">
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="workerMater" class="col-sm-2 col-form-label">근무자</label>
			    <div class="col-sm-10">
			      <select name="workerNo">
			      <c:forEach items="${reserveFormInfo.workerMasterList}" var="workerInfo">
				      <c:if test="${workerInfo.workerNo == reserveInfo.workerNo }">
				      	<option value="${workerInfo.workerNo}" selected="selected">${workerInfo.workerNm} ${workerInfo.workerTel }</option>
				      </c:if>
				      <c:if test="${workerInfo.workerNo != reserveInfo.workerNo }">
				      	<option value="${workerInfo.workerNo}">${workerInfo.workerNm} ${workerInfo.workerTel }</option>
				      </c:if>
			      </c:forEach>
			      </select>
			    </div>
			    </div>
			    <div class="form-group row">
			    <label for="otherInfo" class="col-sm-2 col-form-label">기타</label>
			    <div class="col-sm-10">
			      <input id="otherInfo" name="otherInfo" type="text" class="form-control" value="${reserveInfo.otherInfo}">
			    </div>
			  </div>

			  <div class="form-group row">
			    <div class="col">
			      <input type="button" class="btn-reserve btn-dark" value="수정">
 				    </div>
			  </div>


			  <input type="hidden" name="reserveNo" value="${reserveInfo.reserveNo }">
			  <!-- 중복방지 Token Parameter -->
			  <input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
			  <!-- 중복방지 Token Parameter -->
			</form>
		</div>
	</div>
</div>
<script type="text/javascript" src="${pagecontext.request.contextPath }/js/pagejs/reservation/reservationForm.js"></script>"
<script id="template-search-list" type="text/template">
<span class="searchName" style='width: 85px'> {userNm}</span>
<span class="searchTel" style='width: 150px'> {userTel} </span>
<span class="searchId" style='width: 150px'> {userId} </span>
<input class="searchNo" type="hidden" style='width: 0px' value='{userNo}'/>
</script>
</body>
</html>