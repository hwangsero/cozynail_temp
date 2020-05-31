function userJoin() {
	var writeInput = 0;
	var checkInputLen = $('.reg-submit').length;
	var phoneNum = $('#phone');

	$('.reg-submit').each(function (idx, ele){
		if(ele.value.trim().length === 0){
			alert("모든 창을 입력해주세요.");
			(ele).focus;
			return false;
		} else {
			writeInput ++;
		}
	});

	phoneNum.val($('#phoneFirst').val() + $('#phoneSecond').val() + $('#phoneThird').val());

	if(!checkedNumber($('#phoneFirst')) || !checkedNumber($('#phoneSecond')) || !checkedNumber($('#phoneThird'))){
		//alert("폰번호는 숫자만 입력해주세요.");
		return false;
	}

	if($('#password1').val() != $('#password2').val()){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	$('#password').val($('#password1').val());

	if(writeInput === checkInputLen){
		if(confirm("제출 하시겠습니까?") == true){ //확인
			if(doubleSubmitCheck()){return false;}
			var form = $('form[name="reg-wrap"]');
			form.attr("method", "POST");
			form.attr("action", "/user/userJoinSuccess.do");
		    form.submit();
		} else {
			return false;
		}
	}
}

function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("address").value = roadAddr;
        }
    }).open();
}