let calendarList;
window.addEventListener('DOMContentLoaded', ()=>{
	getCalendatInfoAjax();
	search();
	clickUserInfo();
})

	function getCalendatInfoAjax() {
    	let xhr = new XMLHttpRequest;
    	xhr.onload = function(e) {
    	 	if(xhr.status == 200) {
    			let obj = JSON.parse(xhr.responseText);
    			viewCalendar(obj);
    		}
    	};
    	xhr.open("GET",  "calendarInfo.do");
    	xhr.send();
    }

	function viewCalendar(obj) {
	    calendarList = obj;
	    var calendarEl = document.getElementById('calendar');
	    var calendarData = new Array();
	    console.log(calendarList);
	    calendarList.forEach( function (e) {
	       calendarData.push({
	          title: e.reserveTime + " " + e.userNm + '(' + e.workerNm + ')',
	            start: e.reserveDate,
	            end: e.reserveDate,
	            id: e.reserveNo
	      })
	    });
	    console.log(calendarData);

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      eventClick: function(info) {
	    	var reserveDate = "";
	    	reserveDate +=	info.event.start.getFullYear() + "-";
	    	reserveDate +=	(info.event.start.getMonth() + 1) + "-";
	    	reserveDate +=	info.event.start.getDate();

	       location.href="/reservation.do?reserveNo=" + info.event.id;
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
	  searchInput.innerText = "";
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
				addLi.setAttribute("style","list-style:none");
				var addDiv = document.createElement('div');
				var templateList = document.querySelector('#template-search-list').innerHTML;
				templateList = templateList.replace("{userNm}",searchResult[i].userNm + " ");
				templateList = templateList.replace("{userTel}",searchResult[i].userTel.replace(/(.{3})/,"$1-").replace(/(.{8})/,"$1-") + " ");
				templateList = templateList.replace("{reserveDate}",searchResult[i].reserveDate + " ");
				templateList = templateList.replace("{workerNm}",searchResult[i].workerNm);
				templateList = templateList.replace("{reserveNo}",searchResult[i].reserveNo);
				addDiv.innerHTML = templateList;
				addDiv.setAttribute("class","searchList");
				addDiv.setAttribute("style","cursor:Pointer");
				addLi.append(addDiv);
				modalUl.append(addLi);
			}
	  });
  }

  	function clickUserInfo() {
		let modalBody = document.querySelector('.modal-body');
		modalBody.addEventListener('click',(e) => {
			if(!e.target.classList.contains('searchInfo'))
  				return;
			let divSearchList = e.target.closest('.searchList');
			divSearchList.childNodes.forEach((item)=>{
  				if(item.nodeName == 'INPUT' && item.classList.contains('searchReserveNo'))
  					location.href="/reservation.do?reserveNo=" + item.value;
			})
		})
  	}
