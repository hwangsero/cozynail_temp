<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 FAQ</title>
	<link rel='stylesheet' href="<c:url value='/css/faq.css' />">
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
  <h1>FAQ</h1>

  <div class="col-sm-12">

    <div class="tab">
      <input id="tab-one" type="checkbox" name="tabs">
      <label for="tab-one">자주받는 질문 첫번째</label>
      <div class="tab-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
      </div>
    </div>
    <div class="tab">
      <input id="tab-two" type="checkbox" name="tabs">
      <label for="tab-two">자주받는 질문 두번째</label>
      <div class="tab-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
      </div>
    </div>
    <div class="tab">
      <input id="tab-three" type="checkbox" name="tabs">
      <label for="tab-three">자주받는 질문 세번째</label>
      <div class="tab-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, architecto, explicabo perferendis nostrum, maxime impedit atque odit sunt pariatur illo obcaecati soluta molestias iure facere dolorum adipisci eum? Saepe, itaque.</p>
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