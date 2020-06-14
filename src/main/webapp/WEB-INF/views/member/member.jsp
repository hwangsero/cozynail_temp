<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 멤버</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<!-- Search form -->
			<form id="" class="form-inline d-flex justify-content-center md-form form-sm active-cyan-2 mt-2">
			  <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search" aria-label="Search">
			  <button class="btn"><i class="fas fa-search" aria-hidden="true"></i></button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
	      <table class="table table-bordered table-hover" id="user">
	        <thead class="thead-dark">
	          <tr>
	          	<th>번호</th>
	            <th>이름</th>
	            <th>연락처</th>
	            <th>선생님</th>
	          </tr>
	        </thead>
	        <tbody>
	        </tbody>
	      </table>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
	      <i class="fa fa-caret-square-o-right" aria-hidden="true"></i>
	    </div>
	</div>
	<div class="row">
		<div class="col-md-12">
	      <table class="table table-bordered" id="detail">
	        <thead class="thead-dark">
	          <tr>
	            <th>시간</th>
	            <th>이름</th>
	            <th>연락처</th>
	            <th>시술내역</th>
	            <th>기타사항</th>
	            <th>결제방식</th>
	            <th>시술자</th>
	            <th>잔여포인트</th>
	          </tr>
	        </thead>
	        <tbody>

	        </tbody>
	      </table>

		</div>
	</div>
</div>

<script>
  window.addEventListener('load', () => {
    document.querySelector("#detail").style.display="none";
      var userInfo = [
      {
        memberSeq : "1",
        name : "홍길동",
        phone : "01099999999",
        isTeacher : "N"
      },
      {
        memberSeq : "1",
        name : "홍길동",
        phone : "01099999999",
        isTeacher : "N"
      },
      {
          memberSeq : "1",
          name : "홍길동",
          phone : "01099999999",
          isTeacher : "N"
        },
        {
            memberSeq : "1",
            name : "홍길동",
            phone : "01099999999",
            isTeacher : "N"
          },
          {
              memberSeq : "1",
              name : "홍길동",
              phone : "01099999999",
              isTeacher : "N"
            }
    ];

    var data = [{
      memberSeq : "1",
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
      memberSeq : "2",
      time : '11',
      name : "김미영",
      phone : "01099999999",
      desc : "손젤",
      etc : "컬11mm",
      priceType : "카드",
      practitioner : "A선생님",
      cupon : "3000"
    }];

    userInfo.forEach( function(ele) {
      var trNode = document.createElement("tr");
      Object.keys(ele).forEach( function(key) {
        if(!(key == "memberSeq" || key == "isTeacher")) {
          var tdNode = document.createElement("td");
          var textnode = document.createTextNode(ele[key]);
          tdNode.appendChild(textnode);
          trNode.appendChild(tdNode);
          document.querySelector('#user tbody').appendChild(trNode);
        } else {
          var tdNode = document.createElement("td");
          var textnode = document.createTextNode(ele[key]);
          tdNode.classList.add('hide');
          tdNode.appendChild(textnode);
          trNode.appendChild(tdNode);
          document.querySelector('#user tbody').appendChild(trNode);
        }
      })
    });

    data.forEach( function(ele) {
      var trNode = document.createElement("tr");
      Object.keys(ele).forEach( function(key) {
        if(key !== "memberSeq") {
          var tdNode = document.createElement("td");
          var textnode = document.createTextNode(ele[key]);
          tdNode.appendChild(textnode);
          trNode.appendChild(tdNode);
          document.querySelector('#detail tbody').appendChild(trNode);
        }
      })
    });

    document.querySelector("#user").addEventListener('click', (e)=> {
      document.querySelector("#detail").style.display="block";
    })
  })

</script>
<script>
$( document ).ready(function() {
	$('#user tbody tr').click(function() {
	    $(this).addClass('table-active').siblings().removeClass('table-active');
	});
});
</script>

</body>
</html>