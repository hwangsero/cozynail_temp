<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
      <meta charset="UTF-8">
      <title>Richard MAIN</title>
      <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
    </head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-auto">
                        <h5>진행중인 커리큘럼</h5>
                    </div>
                    <div class="col align-top">
                        <button type="button" class="btn btn-primary btn-sm" onclick="alert('개발중입니다');">더보기</button>
                    </div>
                </div>
                <div class="card rounded-0 p-0 shadow-sm">
                    <img src="/img/이미지.png" class="card-img-top rounded-0" alt="Angular pro sidebar">
                    <div class="card-body text-center">
                        <h6 class="card-title">커리큘럼명</h6>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-auto">
                        <h5>최근 작성된 커리큘럼</h5>
                    </div>
                    <div class="col align-top">
                        <button type="button" class="btn btn-primary btn-sm" onclick="alert('개발중입니다');">더보기</button>
                    </div>
                </div>
                <div class="card rounded-0 p-0 shadow-sm">
                    <img src="/img/이미지.png" class="card-img-top rounded-0" alt="Angular pro sidebar">
                    <div class="card-body text-center">
                        <h6 class="card-title">커리큘럼명</h6>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group col-md-12 p-2"></div>

        <div class="row">
            <div class="col-auto">
                <h5>최근 활동</h5>
            </div>
            <div class="col align-top">
                <a href="/manage/activeList.do">
                    <button type="button" class="btn btn-primary btn-sm">더보기</button>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{username} 님께서 댓글을 작성하였습니다.</td>
                            <td>2020-05-30</td>
                        </tr>
                        <tr>
                            <td>{username} 님께서 댓글을 작성하였습니다.</td>
                            <td>2020-05-30</td>
                        </tr>
                        <tr>
                            <td>{username} 님께서 댓글을 작성하였습니다.</td>
                            <td>2020-05-30</td>
                        </tr>
                        <tr>
                            <td>{username} 님께서 댓글을 작성하였습니다.</td>
                            <td>2020-05-30</td>
                        </tr>
                    </tbody>
                </table>
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