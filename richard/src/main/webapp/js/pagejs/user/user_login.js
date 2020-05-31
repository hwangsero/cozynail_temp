
$(function () {
	htmlAjax('/user/include_login.do', $('#login_join'));

    $("#loginBtn").on("click", function () {
      $("h2").removeClass("active")
      $(this).addClass("active")

      //로그인 버튼을 클릭하면 로그인 form으로 변경

      htmlAjax('/user/include_login.do', $('#login_join'));

    })

    $("#regBtn").on("click", function () {
      $("h2").removeClass("active")
      $(this).addClass("active")

      //회원가입 버튼을 클릭하면 회원가입 form으로 변경

      htmlAjax('/user/include_join.do', $('#login_join'));

    })

})
