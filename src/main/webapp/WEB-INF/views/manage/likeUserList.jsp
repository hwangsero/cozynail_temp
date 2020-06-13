<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
      <meta charset="UTF-8">
      <title>Richard MAIN</title>
      <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
    </head>
<body >
    <div class="container-fluid" style="min-height: 66vh;">
        <div class="row">
            <div class="col-md-12">
                <h5>즐겨찾는 회원</h5>
                <hr>
                <div class="row">
                    <div class="col-auto ml-3">
                        <img style="height: 40px;" class="img-responsive img-rounded"src="/img/user.jpg"/>
                    </div>
                    <div class="col align-self-center">
                        <div class="short-div"><b>Username</b></div>
                        <div class="short-div">소개 소개 소개</div>
                    </div>
                    <div class="col-auto align-self-center mr-3">
                        <button type="button" class="btn btn-dark btn-sm" disabled="true">즐겨찾기</button>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-auto ml-3">
                        <img style="height: 40px;" class="img-responsive img-rounded"src="/img/user.jpg"/>
                    </div>
                    <div class="col align-self-center">
                        <div class="short-div"><b>Username</b></div>
                        <div class="short-div">소개 소개 소개</div>
                    </div>
                    <div class="col-auto align-self-center mr-3">
                        <button type="button" class="btn btn-dark btn-sm" disabled="true">즐겨찾기</button>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-auto ml-3">
                        <img style="height: 40px;" class="img-responsive img-rounded"src="/img/user.jpg"/>
                    </div>
                    <div class="col align-self-center">
                        <div class="short-div"><b>Username</b></div>
                        <div class="short-div">소개 소개 소개</div>
                    </div>
                    <div class="col-auto align-self-center mr-3">
                        <button type="button" class="btn btn-dark btn-sm" disabled="true">즐겨찾기</button>
                    </div>
                </div>
                <hr>
            </div>
        </div>

        <div class="form-group col-md-12"></div>

    </div>
    <script>
	$(document).ready(function () {
		$("#mypage-sub").slideUp(200);
		$("#mypage-sub").show();
		$("#mypage > a").parent().addClass("active");

	});
	</script>
</body>
</html>