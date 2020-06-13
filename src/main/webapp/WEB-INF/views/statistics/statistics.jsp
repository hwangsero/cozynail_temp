<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
     <div class="row">

       <div class="row col-md-12 checks" style="font-size: 1.1em;">
			<input type="radio" id="ex_rd" name="ex_rds" value="YY"><label for="ex_rd">연간</label>
			<input type="radio" id="ex_rd2" name="ex_rds" value="MM"><label for="ex_rd2">월간</label>
	   </div>
       <div class="row col-md-offset-6 col-md-6"  style="font-size: 3em;">
      	<p class="text-center">월간 매출</p>
       </div>
	   <div class="row col-md-12">
			<table class="table">
			 <thead>
			   <tr>
			      	<th>날짜</th>
		            <th>현금</th>
		            <th>이체</th>
		            <th>카드</th>
		            <th>현영</th>
		            <th>외상</th>
		            <th>월총액</th>
		            <th>원장님</th>
		            <th>A선생님</th>
		            <th>B선생님</th>
			   </tr>
			 </thead>
			 <tbody>

			 </tbody>
			</table>
		</div>
	</div>
</div>
<script>
  var data = [
    {
      title : "1",
      cash : "500",
      bankTransfer : "400",
      card : "300",
      cashReceipts : "300",
      credit : "300",
      monthTotal : "4600",
      topTeacher : "2000",
      teacherA : "1000",
      teacherB : "1600",
    },
    {
      title : "2",
      cash : "500",
      bankTransfer : "400",
      card : "300",
      cashReceipts : "300",
      credit : "300",
      monthTotal : "4600",
      topTeacher : "2000",
      teacherA : "1000",
      teacherB : "1600",
    },
  ];

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

// function goSearch() {
// 	$.ajax({
// 		url : "/",
// 		data : convertToObject($("#frm"), true),
// 		type : 'POST'
// 		success : onSuccess
// 	});
// 	//Handler
// 	function onSuccess(res,status,xhr){
// 		var data = res.result;

// 		if(data != null){

// 		}
// 	}
// }
  </script>
</body>
</html>