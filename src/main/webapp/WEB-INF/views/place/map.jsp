<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 위치</title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a3a06b149633903216993cef4599bc4c"></script>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<div class="row col-md-offset-6 col-md-6"  style="font-size: 3em;">
	      		<p class="text-center">코지 네일 오시는 길</p>
	       	</div>
			<div id="map" style="width:500px;height:400px;"></div>
		</div>
	</div>
</div>

<script>
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(37.4759787,126.9614359),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);

	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({
	    // 지도 중심좌표에 마커를 생성합니다
	    position: map.getCenter()
	});
	// 지도에 마커를 표시합니다
	marker.setMap(map);
</script>
<script>
	$(document).ready(function () {
		$("#priceplace-sub").slideUp(200);
		$("#priceplace-sub").show();
		$("#priceplace > a").parent().addClass("active");
	});
</script>
</body>
</html>