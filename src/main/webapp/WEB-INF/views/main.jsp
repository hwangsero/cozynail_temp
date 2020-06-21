<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	  <meta charset="UTF-8">
	  <title>Richard MAIN</title>
	  <link rel='stylesheet' href="<c:url value='/css/timeline.css' />">
	  <script src='<c:url value="/js/pagejs/main.js" />'></script>
	  <script async src="//www.instagram.com/embed.js"></script>
	</head>
<body>

<div class="container">
    <div class="page-header">
        <h1 id="timeline">Timeline</h1>
    </div>
    <ul class="timeline">
        <li>
          <div class="timeline-badge"><i class="glyphicon glyphicon-check"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
              <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 11 hours ago via Twitter</small></p>
            </div>
            <div class="timeline-body">
              <img src="<c:url value='/img/cozy/95799837_137445281229552_3014634905752523466_n.jpg' />" />
              <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis.
              Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis.
              Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.
              Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim.
              Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
            </div>
          </div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-badge warning"><i class="glyphicon glyphicon-credit-card"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
            </div>
            <div class="timeline-body">
              <img src="<c:url value='/img/cozy/93600498_244156393616139_6459269023249327437_n.jpg' />">
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge danger"><i class="glyphicon glyphicon-credit-card"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
            </div>
            <div class="timeline-body">
              <img src="<c:url value='/img/cozy/93189889_169012144566792_7288159270551491299_n.jpg' />">
            </div>
          </div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-badge primary"><i class="glyphicon glyphicon-credit-card"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
            </div>
            <div class="timeline-body">
              <img src="<c:url value='/img/cozy/91618656_2811207475663361_255030066860166892_n.jpg' />">
            </div>
          </div>
        </li>
        <li>
          <div class="timeline-badge info"><i class="glyphicon glyphicon-floppy-disk"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
            </div>
            <div class="timeline-body">
              <img src="<c:url value='/img/cozy/100947322_290022428680257_4490345737638263887_n.jpg' />" />
            </div>
          </div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-badge success"><i class="glyphicon glyphicon-thumbs-up"></i></div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4 class="timeline-title">Mussum ipsum cacilds</h4>
            </div>
            <div class="timeline-body">
              <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>
            </div>
          </div>
        </li>
    </ul>
</div>
</body>
</html>