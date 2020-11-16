<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
	<title>Calendar</title>
	<script src='<c:url value="/js/utils/fullcalendar/core/main.js" />'></script>
	<script src='<c:url value="/js/utils/fullcalendar/daygrid/main.js" />'></script>
	<script src='<c:url value="/js/utils/fullcalendar/timegrid/main.js" />'></script>
	<script src='<c:url value="/js/utils/fullcalendar/interaction/main.js" />'></script>
	<script src='<c:url value="/js/utils/fullcalendar/list/main.js" />'></script>
	<link rel="stylesheet" href='<c:url value="/css/calendar.css" />' />
	<link rel="stylesheet" href='<c:url value="/js/utils/fullcalendar/core/main.css" />'/>
	<link rel="stylesheet" href='<c:url value="/js/utils/fullcalendar/daygrid/main.css" />'/>
	<link rel="stylesheet" href='<c:url value="/js/utils/fullcalendar/list/main.css" />'/>
	<link rel="stylesheet" href='<c:url value="/js/utils/fullcalendar/timegrid/main.css" />'/>
</head>
<body>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  예약 검색
</button>
<button type="button" class="btn btn-primary" onclick="location.href='/reservation/register.do'">
  예약 등록
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
      </div>
    </div>
  </div>
</div>

<div class="container-fluid" style="min-height: 66vh;">
        <div class="row">
          <div id='calendar' class="form-group col-md-offset-2 col-md-10 ">

          </div>
        </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/pagejs/calendar/calendar.js"></script>
<script id="template-search-list" type="text/template">
<span class='searchInfo' style='width: 85px'> {userNm}</span>
<span class='searchInfo' style='width: 150px'> {userTel} </span>
<span class='searchInfo' style='width: 120px'> {reserveDate} </span>
<span class='searchInfo'> {workerNm} </span>
<input class='searchReserveNo searchInfo' type='hidden' value='{reserveNo}'/>
</script>
</body>
</html>