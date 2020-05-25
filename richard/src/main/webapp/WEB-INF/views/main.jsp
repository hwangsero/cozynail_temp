<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	  <meta charset="UTF-8">
	  <title>Richard MAIN</title>
	</head>
<body>
      <div class="container-fluid">
        <div class="row">
          <div class="form-group col-md-4">

            <p>유튜브 교육 서비스를 제공합니다.</p>
            <div class="alert alert-success" role="alert">
              <h4 class="alert-heading">New !</h4>
              <p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
            </div>

          </div>
          <div id="myCarousel" class="carousel slide col-md-8" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
              <li data-target="#myCarousel" data-slide-to="3"></li>
              <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img src="<c:url value='/img/배너1.jpg' />" />
              </div>
              <div class="carousel-item">
                <img src="<c:url value='/img/배너2.jpg' />">
              </div>
              <div class="carousel-item">
                <img src="<c:url value='/img/배너3.jpg' />">
              </div>
              <div class="carousel-item">
                <img src="<c:url value='/img/배너4.jpg' />">
              </div>
              <div class="carousel-item">
                <img src="<c:url value='/img/배너5.jpg' />" />
              </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control-next" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <div class="form-group col-md-12"></div>
        </div>
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
            <div class="card rounded-0 p-0 shadow-sm">
              <img src="img/이미지.png" class="card-img-top rounded-0" alt="Angular pro sidebar">
              <div class="card-body text-center">
                <h6 class="card-title">Angular Pro Sidebar</h6>
                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
            <div class="card rounded-0 p-0 shadow-sm">
              <img src="img/이미지.png" class="card-img-top rounded-0" alt="Angular pro sidebar" />
              <div class="card-body text-center">
                <h6 class="card-title">Angular Dashboard</h6>
                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
            <div class="card rounded-0 p-0 shadow-sm">
              <img src="img/이미지.png" class="card-img-top rounded-0" alt="Angular pro sidebar">
              <div class="card-body text-center">
                <h6 class="card-title">Angular Dashboard</h6>
                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>