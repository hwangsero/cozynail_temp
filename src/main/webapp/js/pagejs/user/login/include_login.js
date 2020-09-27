function userLogin() {

	if(validForm()){
		if(doubleSubmitCheck()){return false;} // 이중 클릭 방지
		var form = $('form[name="login-form"]');
		form.attr("method", "POST");
		form.attr("action", "/user/login_process.do");
		var shaPw = CryptoJS.SHA256($('#password').val()).toString();
		$('#password').val(shaPw);
	    form.submit();
	} else {
		return false;
	}
}
function validForm(){
	var id = $('#id');
	var password = $('#password');

	if(id.val().trim().length === 0){
		alert("id를 입력해주세요.");
		id.focus;
		return false;
	}

	if(password.val().trim().length === 0){
		alert("password를 입력해주세요.");
		password.focus;
		return false;
	}

	return true;
}