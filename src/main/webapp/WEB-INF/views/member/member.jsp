<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="sub">
  <div class="table-wrap type2">

    <div class="login-input">
      <label class="black" for="text">검색 </label>
      <input type="text" name="password" id="text">
    </div>

    <div class="table-con type2">
      <table class="table-style3 wi250" id="user">
        <thead>
          <tr>
            <th>이름</th>
            <th>연락처</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>

      <div class="table-between">
        ==>
      </div>
      <table class="table-style3 type2 wi800" id="detail">
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