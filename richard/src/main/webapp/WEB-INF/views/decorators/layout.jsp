<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title><decorator:title /></title> <!-- decorator:title : 컨텐츠 페이지에서 title을 가져온다. -->
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css'>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.13/css/all.css'>
		<link href="<c:url value='/css/main.css' />" rel="stylesheet" type="text/css">
		<script>
		    window.console = window.console || function (t) { };
		    if (document.location.search.match(/type=embed/gi)) {
		      window.parent.postMessage("resize", "*");
		    }
	  	</script>
	  	<!-- header -->
		<decorator:head></decorator:head><!-- decorator:head : 컨텐츠 페이지에서 head 를 가져온다 -->
		<!-- //header -->
	</head>
	<body>
		<div class="page-wrapper chiller-theme toggled">
			<a id="show-sidebar" class="btn btn-sm btn-dark" href="javascript:void(0);">
				<i class="fas fa-bars"></i>
			</a>
			<jsp:include page="nav.jsp" />
			<!-- 페이지 컨텐트 시작 -->
			<main class="page-content" style="padding-bottom: 0px;">
			<jsp:include page="header.jsp" />
			<decorator:body />
			<jsp:include page="footer.jsp" />
			</main>
			<!-- 페이지 컨텐트 끝 -->
  		</div>

		<script src="<c:url value='/js/main.min.js' />"></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js'></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js'></script>
		<script id="rendered-js">
		/*
		dependencies:
		//cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js
		//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/esm/popper.js
		//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.js
		*/
		$(".sidebar-dropdown > a").click(function () {
		  $(".sidebar-submenu").slideUp(200);
		  if ($(this).parent().hasClass("active")) {
		    $(".sidebar-dropdown").removeClass("active");
		    $(this).parent().removeClass("active");
		  } else {
		    $(".sidebar-dropdown").removeClass("active");
		    $(this).next(".sidebar-submenu").slideDown(200);
		    $(this).parent().addClass("active");
		  }
		});

		$("#close-sidebar").click(function () {
		  $(".page-wrapper").removeClass("toggled");
		});
		$("#show-sidebar").click(function () {
		  $(".page-wrapper").addClass("toggled");
		});
		//# sourceURL=pen.js
		</script>
	</body>
</html>