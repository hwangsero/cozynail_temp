<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 회원가입 -->
<!-- Login Form -->
<form class="reg-wrap" name="reg-wrap">
  <div class="reg-title-con">
    <div class="reg-title">
      고객 ID
    </div>
    <div class="reg-input">
      <input class="reg-submit" id="id" name="id" type="text" placeholder="id">
    </div>
    <button type="button" class="btn btn-primary type2" onclick="idCheck();">중복체크</button>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      비밀번호
    </div>
    <div class="reg-input">
      <input class="reg-submit" id="password1" name="password1" type="password">
      <input type="hidden" name="password" id="password" />
    </div>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      비밀번호 확인
    </div>
    <div class="reg-input">
      <input class="reg-submit" id="password2" name="password2" type="password">
    </div>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      이름
    </div>
    <div class="reg-input">
      <input class="reg-submit" id="name" name="name" type="text">
    </div>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      성별
    </div>
    <div class="reg-input">
      <div class="radio-con">
        <input class="mr-2" type="radio" name="gender" id="male" value='M' checked/>
        <label for="male" class="mr-2">남자</label>
        <input class="mr-2" type="radio" name="gender" id="female" value='F'/>
        <label for="female">여자</label>
      </div>
    </div>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      생년월일
    </div>
    <div class="reg-input-wrap">
      <input type="date" name="birthDate" id="birthDate" />
    </div>
  </div>

  <div class="reg-title-con">
    <div class="reg-title">
      휴대전화
    </div>
    <div class="reg-input-wrap">
      <div class="reg-input type2">
        <input id="phoneFirst" class="reg-submit" type="text" value="010">
      </div>
      <div class="">-</div>
      <div class="reg-input type2">
        <input id="phoneSecond" class="reg-submit" type="text">
      </div>
      <div class="">-</div>
      <div class="reg-input type2">
        <input id="phoneThird" class="reg-submit" type="text">
      </div>
    </div>
    <input type="hidden" name="phone" id="phone" />
  </div>
<!-- 중복방지 Token Parameter -->
<input type="hidden" name="TOKEN_KEY" value="${TOKEN_KEY }" />
<!-- 중복방지 Token Parameter -->
<div class="">
  <button type="button" class="btn btn-success" onclick="userJoin();">가입하기</button>
    <button type="button" class="btn btn-secondary">취소</button>
</div>
</form>
