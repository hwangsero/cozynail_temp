<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

<div class="container-fluid" style="min-height: 66vh;">
<form id="frm" name="frm" method="post">
	<div class="custom-control custom-radio custom-control-inline">
		<input type="radio" class="custom-control-input" id="RD" name="RDNM" value="YY" /><label class="custom-control-label" for="RD">연간</label>
	</div>
	<div class="custom-control custom-radio custom-control-inline">
		<input type="radio" class="custom-control-input" id="RD2" name="RDNM" value="MM" /><label class="custom-control-label" for="RD2">월간</label>
	</div>
</form>
	<div class="offset-md-0" style="font-size: 3em;">
		<p>연간 매출</p>
	</div>
	<div class="col">
		<table class="table-bordered">
			<colgroup>
				<c:forEach var="i" begin="0" end="9">
					<col style="width:10%"/>
				</c:forEach>
			</colgroup>
			<thead>
				<tr class="text-center">
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
			<colgroup>
				<c:forEach var="i" begin="0" end="9">
					<col style="width:10%"/>
				</c:forEach>
			</colgroup>
			<tbody>
				<tr class="text-right">
					<td class="text-center">1월</td>
					<td>500</td>
					<td>400</td>
					<td>300</td>
					<td>300</td>
					<td>300</td>
					<td>4600</td>
					<td>2000</td>
					<td>1000</td>
					<td>1600</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script>
//   var data = [
//     {
//       title : "1",
//       cash : "500",
//       bankTransfer : "400",
//       card : "300",
//       cashReceipts : "300",
//       credit : "300",
//       monthTotal : "4600",
//       topTeacher : "2000",
//       teacherA : "1000",
//       teacherB : "1600",
//     },
//     {
//       title : "2",
//       cash : "500",
//       bankTransfer : "400",
//       card : "300",
//       cashReceipts : "300",
//       credit : "300",
//       monthTotal : "4600",
//       topTeacher : "2000",
//       teacherA : "1000",
//       teacherB : "1600",
//     },
//   ];

//   data.forEach( function(ele) {
//     var trNode = document.createElement("tr");
//     Object.keys(ele).forEach( function(key) {
//       var tdNode = document.createElement("td");
//       var textnode = document.createTextNode(ele[key]);
//       tdNode.appendChild(textnode);
//       trNode.appendChild(tdNode);
//       document.querySelector('tbody').appendChild(trNode);
//     })
//   })

/* 조회 */
function goSearch() {
	$.ajax({
		url : "/",
		data : convertToObject($("#frm"), true),
		type : 'POST',
		success : onSuccess
	});
	//Handler
	function onSuccess(res,status,xhr){
		var data = res.result;

		if(data != null){

		}
	}
}

$(document).ready(function(){
	$('input[type="radio"]').not(":checked").on('click' , function(){
		$('input[type="radio"]:checked').val() == "YY" ? $(".offset-md-0 > p").text("연간 매출") : $(".offset-md-0 > p").text("월간 매출");
	});
});




</script>
</body>
</html>