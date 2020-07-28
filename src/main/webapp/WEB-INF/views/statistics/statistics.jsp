<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
	<!-- 차트 링크 -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>

<div class="container-fluid" style="min-height: 66vh;">
<!-- 도넛 차트 예시 -->
<div class="container">
    <div class="row my-3">
        <div class="col">
            <h4>Bootstrap 4 Chart.js</h4>
        </div>
    </div>
    <div class="row py-2">
        <div class="col-md-4 py-1">
            <div class="card">
                <div class="card-body">
                    <canvas id="chDonut1"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 바 차트 예시 -->
<div class="container">
    <div class="row my-3">
        <div class="col">
            <h4>Bootstrap 4 Chart.js - Bar Chart</h4>
        </div>
    </div>
    <div class="row my-2">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <canvas id="chBar" height="100"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>



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


	$(document).ready(function() {
		goSearch();
	});


// 	convertToObject($("#frm"), true),
/* 조회 */
function goSearch() {
	var param = {"YYYYMM" : "YMD"};

	$.ajax({
		url : "/statistics/getYearStaList.do",
		data : JSON.stringify(param),
		dataType : "json",
		contentType: "application/json",
		type : 'POST',
		success : function (res,status,xhr){
			var list = res.result;
			alert("1111");
			alert("2번째" + list);
			//테스트중
		}
	});
}

$(document).ready(function(){
	$('input[type="radio"]').not(":checked").on('click' , function(){
		$('input[type="radio"]:checked').val() == "YY" ? $(".offset-md-0 > p").text("연간 매출") : $(".offset-md-0 > p").text("월간 매출");
	});
});

</script>

<script>
/* chart.js chart examples */

//chart colors
var colors = ['#007bff','#28a745','#444444','#c3e6cb','#dc3545','#6c757d'];

var chBar = document.getElementById("chBar");
var chartData = {
labels: ["S", "M", "T", "W", "T", "F", "S"],
datasets: [{
 data: [589, 445, 483, 503, 689, 692, 634],
 backgroundColor: colors[0]
},
{
 data: [209, 245, 383, 403, 589, 692, 580],
 backgroundColor: colors[1]
},
{
 data: [489, 135, 483, 290, 189, 603, 600],
 backgroundColor: colors[2]
},
{
 data: [639, 465, 493, 478, 589, 632, 674],
 backgroundColor: colors[4]
}]
};

if (chBar) {
new Chart(chBar, {
type: 'bar',
data: chartData,
options: {
 scales: {
   xAxes: [{
     barPercentage: 0.4,
     categoryPercentage: 0.5
   }],
   yAxes: [{
     ticks: {
       beginAtZero: false
     }
   }]
 },
 legend: {
   display: false
 }
}
});
}
</script>

<script>
var donutOptions = {
		  cutoutPercentage: 85,
		  legend: {position:'bottom',
		       labels:{pointStyle:'circle',
		       usePointStyle:true}
		  }
		};
		var chDonutData1 = {
		    labels: ['Bootstrap', 'Popper', 'Other'],
		    datasets: [
		      {
		        backgroundColor: colors.slice(0,3),
		        borderWidth: 0,
		        data: [74, 11, 40]
		      }
		    ]
		};
		var chDonut1 = document.getElementById("chDonut1");
		if (chDonut1) {
		  new Chart(chDonut1, {
		      type: 'pie',
		      data: chDonutData1,
		      options: donutOptions
		  });
		}
</script>
</body>
</html>