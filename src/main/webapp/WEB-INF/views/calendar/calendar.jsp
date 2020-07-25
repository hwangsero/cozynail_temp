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
  Launch demo modal
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
        ...
      </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

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
	  var calendarList;

	  viewCalendar();
	  search();

  });

  function viewCalendar() {
	  calendarList = <%= (List)request.getAttribute("calList") %>;
	    var calendarEl = document.getElementById('calendar');
	    var calendarData = new Array();
	    calendarList.forEach( function (e) {
	       calendarData.push({
	          title: e.clientNm + '(' + e.workNm + ')',
	            start: e.reserveDate,
	            end: e.reserveDate,
	            id: e.RESERVE_NO
	      })
	    });
	    console.log(calendarData);

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      eventClick: function(info) {
	    	var reserveDate = "";
	    	reserveDate +=	info.event.start.getFullYear() + "-";
	    	reserveDate +=	(info.event.start.getMonth() + 1) + "-";
	    	reserveDate +=	info.event.start.getDate();

	       location.href="/" + reserveDate + "/detail.do"
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
	      events: calendarData

	    });
	    calendar.render();
	    calendarList.forEach( function (ele) {
	      console.log(ele)
	    })
  }

  function search() {
	  let searchInput = document.querySelector('#search');
	  let tempq = [{
			  e : 'g',
			  q : 'q',
			  w : 'w',
			  r : 'e'
	  },
	  {
		  e : 'g1',
		  q : 'q1',
		  w : 'w1',
		  r : 'e1'
  }]
	  searchInput.addEventListener('keyup', function() {
			let searchVal = searchInput.value;
			let searchResult = calendarList.filter(e => e.userNm.includes(searchVal));
			let modalUl = document.querySelector('.modal-Ul')
			modalUl.innerText = '';
			if(searchVal === '') {
			 return;
			}
			for(let i = 0; i < searchResult.length; i++) {
			var addLi = document.createElement('li');
			var addDiv = document.createElement('div');
			addLi.setAttribute("style","list-style:none");
			addDiv.innerText = searchResult[i].userNm;
			addDiv.setAttribute("OnClick","location.href='http://naver.com'");
			addDiv.setAttribute("class","searchList");
			addDiv.setAttribute("style","cursor:Pointer");
			addLi.append(addDiv);
			modalUl.append(addLi);
			}
	  });
  }
</script>
</body>
</html>