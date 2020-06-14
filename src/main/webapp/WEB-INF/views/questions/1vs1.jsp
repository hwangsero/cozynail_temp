<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 1:1 문의</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<div class="row col-md-offset-6 col-md-6"  style="font-size: 3em;">
	      		<p class="text-center">1:1 문의</p>
	       	</div>
		</div>
		<div class="row col-md-12">
			<table class="table table-striped">
				 <thead>
				   <tr>
				      <th>번호</th>
				      <th>제목</th>
				      <th>작성자</th>
				      <th>날짜</th>
				      <th>조회수</th>
				   </tr>
				 </thead>
				 <tbody>
				   <tr>
				      <td>1</td>
				      <td><i class="fa fa-lock" aria-hidden="true"></i>
				      제목을 정해주세요.</td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>3</td>
				   </tr>
				   <tr>
				      <td>2</td>
				      <td><i class="fa fa-lock" aria-hidden="true"></i>
				      제목을 정해주세요.2</td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>3</td>
				   </tr>
				   <tr>
				      <td>3</td>
				      <td><i class="fa fa-lock" aria-hidden="true"></i>
				      제목을 정해주세요.3</td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>3</td>
				   </tr>
				   <tr>
				      <td>6</td>
				      <td><i class="fa fa-arrow-right" aria-hidden="true"></i>
				      	3의 답글입니다.인덴트 구현해줘야해요.</td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>1</td>
				   </tr>
				   <tr>
				      <td>4</td>
				      <td><i class="fa fa-lock" aria-hidden="true"></i>
				      기본적으로 비밀글로 작성되고 관리자가 답글달수 있도록</td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>4</td>
				   </tr>
				   <tr>
				      <td>5</td>
				      <td><i class="fa fa-lock" aria-hidden="true"></i>
				      관리자만 전부 볼 수 있도록. 문의글 누구나 쓸 수 있고 </td>
				      <td>john</td>
				      <td>2020-06-14</td>
				      <td>3</td>
				   </tr>
				 </tbody>
				</table>
		</div>
		<div class="col-md-5">
		</div>
		<div class="row col-md-5">
		  <ul class="pagination justify-content-center">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		        <span class="sr-only">Previous</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		      </a>
		    </li>
		  </ul>
		</div>
		<div class="col">
			<button type="button" class="btn btn-dark">문의하기</button>
		</div>
	</div>
</div>
<script>
	$(document).ready(function () {
		$("#questions-sub").slideUp(200);
		$("#questions-sub").show();
		$("#questions > a").parent().addClass("active");
	});
</script>
</body>
</html>