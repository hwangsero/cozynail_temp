<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
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
		<a id="newReg" target="_blank" class="btn btn-primary btn-sm" style="color:white;margin-bottom:10px;">신규등록</a>
		<div class="row col-md-12">
			<table class="table">
			 <thead>
			   <tr>
			      	<th>시간</th>
					<th>이름</th>
					<th>연락처</th>
					<th>시술내역</th>
					<th>기타사항</th>
					<th>결제방식</th>
					<th>시술자</th>
					<th>쿠폰현황</th>
			   </tr>
			 </thead>
			 <tbody>

			 </tbody>
			</table>
		</div>
	</div>
	<!-- layerpopup -->
		<div class="layer_popup profile_layer" data-popup="layer-newReg">
		    <div class="popup_box">
		      <strong class="popup_title">지원자 보기</strong>
		      <div class="popup_con">
		      </div>

		      <button type="button" class="btn_pop_close js-popup-close"><span class="blind"></span></button>
		    </div>
		    <div class="dim"></div>
		</div>
</div>
<script>
  var data = [{
    time : '11',
    name : "홍길동",
    phone : "01099999999",
    desc : "손젤",
    etc : "컬11mm",
    priceType : "현금",
    practitioner : "A선생님",
    cupon : "3000"
  },
  {
    time : '11',
    name : "홍길동",
    phone : "01099999999",
    desc : "손젤",
    etc : "컬11mm",
    priceType : "카드",
    practitioner : "A선생님",
    cupon : "3000"
  }];
  data.forEach( function(ele) {
    var trNode = document.createElement("tr");
    Object.keys(ele).forEach( function(key) {
      var tdNode = document.createElement("td");
      var textnode = document.createTextNode(ele[key]);
      tdNode.appendChild(textnode);
      trNode.appendChild(tdNode);
      document.querySelector('tbody').appendChild(trNode);
    })
  })


  $(document).ready(function(){

	  $("#newReg").click(function(){
		  location.href="${pageContext.request.contextPath}/toRegister.do";
	  })

	  //예약 명단을 불러옴
	$.ajax({
			url: "${pageContext.request.contextPath}/getReserveInfo.do",
			type: "POST",
			data:{
				reserveDate: "2020-05-31"
			},
	        success: function (data) {
	        	var results = data.result;
	        	console.log(results);
	        	var str = '<tr>';
	        	$.each(results, function(i){
	        		for (var key in results[i]) {
	        			if(key == "reserveDate") {
	        				continue;
	        			}
		        		str += '<td>' + results[i][key] + '</td>'
		        	}
	        		str += '</tr>'

	        	});
	        	$("#a").append(str);

		    },
		    complete : function(){

			}
	});

  });
</script>

</body>
</html>