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