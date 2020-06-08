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
            <div class="col-md-12">
                <h5>활동</h5>
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