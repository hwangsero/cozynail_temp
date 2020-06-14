<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 신규 회원 등록</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<div class="row">
		<div class="col-md-12">
			<div class="alert alert-success" role="alert">
              <h4 class="alert-heading">신규 회원 등록</h4>
              <p>회원 가입 입력 양식</p>
            </div>
			<form class="login" name="login-form">
			  <div class="form-group row">
			    <label for="name" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10">
			      <input id="name" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="phone" class="col-sm-2 col-form-label">연락처</label>
			    <div class="col-sm-10">
			      <input id="phone" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="email" class="col-sm-2 col-form-label">Email</label>
			    <div class="col-sm-10">
			      <input id="email" type="text" class="form-control">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="email" class="col-sm-11 col-form-label"></label>
			    <div class="col">
			      <input type="button" class="btn btn-dark" value="저장" onclick="validForm()">
			    </div>
			  </div>

			  <!-- 중복방지 Token Parameter -->
			  <input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
			  <!-- 중복방지 Token Parameter -->
			</form>
		</div>
	</div>
</div>

<script>
	function validForm(event) {
		console.log("function "+event);
		event.preventDefault();
		var form = document.RegisterForm;
		form.method = "post";
		form.action = "${pageContext.request.contextPath}/registersuccess.do"
		form.submit();
	}

	/* $(document).ready(function(){

		  $("#saveRegister").click(function(event){
			  confirm("등록하시겠습니까?"
					  ,function(event){
				  		console.log("confirm "+event);
				  		validForm(event);
			 		  }
			  		  ,function(){
						return false;
					  }
			  );

		  });

	  }); */
</script>

</body>
</html>