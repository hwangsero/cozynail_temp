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
<div class="container-fluid" style="min-height: 66vh;">
        <div class="row">
          <div id='calendar' class="form-group col-md-offset-2 col-md-10 ">

          </div>
        </div>
        <div class="price-con">
			<div class="">
			  <div class="">현금 : 1원</div>
			  <div class="">이체 : 1원</div>
			  <div class="">카드 : 1원</div>
			  <div class="">현:영 : 1원</div>
			  <div class="">외상 : 1원</div>
			</div>
			<div class="">
			  <div class="">총 월 매출</div>
			  <div class="">원장님 : 50원</div>
			  <div class="">선생님A : 50원</div>
			  <div class="">선생님B : 50원</div>
			</div>
        </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarList = <%= (List)request.getAttribute("calList") %>;
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      eventClick: function(info) {
        console.log(info.event);
        location.href="/1/detail.do"
      },
      eventDrop: function(info) {
        console.log(info.event)
      },
      dateClick: function() {
        alert('a day has been clicked!');
      },
      locale: 'ko',
      plugins: [ 'dayGrid','interaction', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,dayGridWeek,dayGridDay,listMonth'
      },
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      events: [
        {
          title: 'Business Lunch',
          start: '2020-05-31T13:00:00',
          constraint: 'businessHours',
          id: "10"
        },
      ]
    });
    calendar.render();
    calendarList.forEach( function (ele) {
      console.log(ele)
    })
  });
</script>

</body>
</html>