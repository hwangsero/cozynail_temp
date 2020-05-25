<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="decorator" content="no" />
  <title>Login</title>
  <link rel='stylesheet' href="<c:url value='/css/bootstrap.css' />">
  <link rel="stylesheet" href="<c:url value='/css/login.css' />">
  <link rel="stylesheet" href="<c:url value='/css/reg.css' />">
  <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
</head>

<body>

  <!--로그인 :: S -->
  <div class="wrapper fadeInDown">

      <div id="formContent">
        <!-- Tabs Titles -->
        <h2 class="active underlineHover" id="loginBtn"> Sign In </h2>
        <h2 class="inactive underlineHover" id="regBtn">Sign Up </h2>

        <div class="" id="login">
          <!-- Icon -->
          <div class="fadeIn first">
            <img src="<c:url value='/img/bt21_door.gif' />" id="icon" alt="User Icon" />
          </div>

          <!-- Login Form -->
          <form>
            <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
            <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
            <input type="submit" class="fadeIn fourth" value="Log In">
          </form>

          <!-- Remind Passowrd -->
          <div id="formFooter">
          	<a class="underlineHover" href="<c:url value='main.do 	' />">Go to home</a>
          	<hr>
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>
        </div>

        <!-- 회원가입 -->
        <div id="reg">
          <!-- Login Form -->
          <form class="reg-wrap">
            <div class="reg-title-con">
              <div class="reg-title">
                고객 ID
              </div>
              <div class="reg-input">
                <input type="text" id="login" placeholder="login">
              </div>
              <button type="button" class="btn btn-primary type2">중복체크</button>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                비밀번호
              </div>
              <div class="reg-input">
                <input type="password">
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                비밀번호 확인
              </div>
              <div class="reg-input">
                <input type="password">
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                이름
              </div>
              <div class="reg-input">
                <input type="text">
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                성별
              </div>
              <div class="reg-input">
                <div class="radio-con">
                  <input type="radio" name="sex" class="mr-2">
                  <label for="" class="mr-2">남자</label>
                  <input type="radio" name="sex" class="mr-2">
                  <label for="">여자</label>
                </div>
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                생년월일
              </div>
              <div class="reg-input-wrap">
                <div class="reg-input type2">
                  <input type="text">
                </div>
                <div class="">년</div>
                <div class="reg-input type2">
                  <input type="text">
                </div>
                <div class="">월</div>
                <div class="reg-input type2">
                  <input type="text">
                </div>
                <div class="">일</div>
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                휴대전화
              </div>
              <div class="reg-input-wrap">
                <div class="reg-input type2">
                  <input type="text">
                </div>
                <div class="">-</div>
                <div class="reg-input type2">
                  <input type="text">
                </div>
                <div class="">-</div>
                <div class="reg-input type2">
                  <input type="text">
                </div>
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                이메일
              </div>
              <div class="reg-input">
                <input type="text">
              </div>
            </div>

            <div class="reg-title-con">
              <div class="reg-title">
                이메일 수신여부
              </div>
              <div class="reg-checkbox">
                <input type="checkbox" name="sex" class="mr-2">
                <label for="">본 사이트에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</label>
              </div>
            </div>

            <div class="reg-title-con mb-5">
              <div class="reg-title">
                지역
              </div>
              <div class="reg-select">
                <select name="" id="">
                  <option value="">서울</option>
                  <option value="">경기</option>
                </select>
              </div>
            </div>

            <div class="">
              <button type="button" class="btn btn-success">가입하기</button>
              <button type="button" class="btn btn-secondary">취소</button>
            </div>
          </form>


          <!-- Remind Passowrd -->
          <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>
        </div>

      </div>
  </div>

  <script>
    $(function () {
      $("#reg").hide();
      $("#loginBtn").on("click", function () {
        $("h2").removeClass("active")
        $(this).addClass("active")
        $("#reg").hide();
        $("#login").show();
      })

      $("#regBtn").on("click", function () {
        $("h2").removeClass("active")
        $(this).addClass("active")
        $("#reg").show();
        $("#login").hide();
      })

    })
  </script>
</body>

</html>