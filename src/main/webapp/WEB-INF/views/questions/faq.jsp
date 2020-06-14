<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 FAQ</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<div class="row col-md-offset-6 col-md-6"  style="font-size: 3em;">
	      		<p class="text-center">FAQ</p>
	       	</div>
		</div>
	</div>
	<div class="row">
          <div class="form-group col-md-12">
          <ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#qwe">자주받는 질문1</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#asd">자주받는 질문2</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#zxc">자주받는 질문3</a>
			  </li>
			</ul>
			<div class="tab-content">
			  <div class="tab-pane fade show active" id="qwe">
			    <p>자주받는 질문의 답변 내용.111111111111111111111111111111111</p>
			  </div>
			  <div class="tab-pane fade" id="asd">
			    <p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
			  </div>
			  <div class="tab-pane fade" id="zxc">
			    <p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque commodo consectetur faucibus. Aenean eget ultricies justo.</p>
			  </div>
			</div>
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