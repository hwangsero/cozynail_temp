<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
          <div class="form-group col-md-12">
          <ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#qwe">QWE</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#asd">ASD</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#zxc">ZXC</a>
			  </li>
			</ul>
			<div class="tab-content">
			  <div class="tab-pane fade show active" id="qwe">
			    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id ornare libero. Vivamus iaculis, justo vel mattis pharetra, nisi ligula varius nisl, sit amet mollis tortor ligula vitae nisi.</p>
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

	<!-- 아코디언 -->
		<div class="row">
          <div class="form-group col-md-12">
			<div class="accordion" id='accordion2'>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent='#accordion2' href='#collapseOne'>
						아코디언 메뉴1
						</a>
					</div>
					<div id="collapseOne" class="accordion-body collapse in">
						<div class="accordion-inner">
						아코디언메뉴1 내용부분입니다.
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
						아코디언 메뉴2
						</a>
					</div>
					<div id="collapseTwo" class="accordion-body collapse">
						<div class="accordion-inner">
						아코디언메뉴2 내용부분입니다.
						</div>
					</div>
				</div>
			</div>
		  </div>
		</div>
		<!-- List 첫번째 타입 시작 -->
        <div class="row">
          <div class="form-group col-md-12">

            <p class="text-primary">테이블 리스트, 테이블 리스트, 테이블 리스트, 테이블 리스트</p>
            <p class="text-success">테이블 리스트, 테이블 리스트, 테이블 리스트, 테이블 리스트</p>
            <p class="text-waring">테이블 리스트, 테이블 리스트, 테이블 리스트, 테이블 리스트</p>
            <p class="text-info">테이블 리스트, 테이블 리스트, 테이블 리스트, 테이블 리스트</p>
            <p class="text-danger">테이블 리스트, 테이블 리스트, 테이블 리스트, 테이블 리스트</p>
            <button type="button" class="btn btn-primary">버튼</button>
            <button type="button" class="btn btn-success">버튼</button>
            <button type="button" class="btn btn-waring">버튼</button>
            <button type="button" class="btn btn-info">버튼</button>
            <button type="button" class="btn btn-danger">버튼</button>
			<button type="button" class="btn btn-default ">버튼</button>
            <div class="alert alert-success" role="alert">
              <h4 class="alert-heading">New !</h4>
              <p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
            </div>

          </div>
		<div class="row col-md-12">
			<table class="table">
				 <thead>
				   <tr>
				      <th>Firstname</th>
				      <th>Lastname</th>
				      <th>Email</th>
				   </tr>
				 </thead>
				 <tbody>
				   <tr>
				      <td>John</td>
				      <td>Doe</td>
				      <td>john@example.com</td>
				   </tr>
				   <tr>
				      <td>Mary</td>
				      <td>Moe</td>
				      <td>mary@example.com</td>
				   </tr>
				   <tr>
				      <td>July</td>
				      <td>Dooley</td>
				      <td>july@example.com</td>
				   </tr>
				 </tbody>
				</table>
		</div>
	</div>
	<!-- List 첫번째 타입 끝 -->
	<hr><hr>
	<!-- List 두번째 타입 시작 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<h6 class="card-title">Product description <a href="#" target="_blank" class="btn btn-primary btn-sm">펼쳐보기</a></h6>
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                  sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
	        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	        <h6 class="card-title">Product description <a href="#" target="_blank" class="btn btn-primary btn-sm">펼쳐보기</a></h6>
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                  sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                  sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
	        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
	        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
	        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
	            <div class="card rounded-0 p-0 shadow-sm">
	              <img src="<c:url value='/img/이미지.png' />" class="card-img-top rounded-0" alt="Angular pro sidebar">
	              <div class="card-body text-center">
	                <h6 class="card-title">Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,</h6>
	                <a href="#" target="_blank" class="btn btn-primary btn-sm">보기</a>
	                <a href="#" target="_blank" class="btn btn-success btn-sm">찜</a>
	              </div>
	            </div>
	        </div>
		</div>
	</div>
	</div>
	<!-- List 두번째 타입 끝 -->
</body>
</html>
