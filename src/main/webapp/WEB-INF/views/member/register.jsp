<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h2 class="page_title">신규 회원 등록</h2>
<div class="group_form_wrap">
	<div class="group_form">
		<form name="RegisterForm">
			<fieldset>
				<legend>회원 가입 입력 양식</legend>
				<div class="group_form_item">
					<span class="form_name">이름</span>
		            <span class="inp_box">
		            <input type="text" name="clientNm" title="이름 입력" class="inp_not_full">
		            </span>
				</div>
				<div class="group_form_item">
					<span class="form_name">연락처</span>
		            <span class="inp_box">
		            <input type="text" name="clientTel" title="연락처 입력" class="inp_not_full">
		            </span>
				</div>
				<div>
					<button id="saveRegister" type="submit" onclick="validForm(event);">저장</button>
				</div>
				
				<!-- 중복방지 Token Parameter -->
				<input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
				<!-- 중복방지 Token Parameter -->
			</fieldset>
		</form>
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