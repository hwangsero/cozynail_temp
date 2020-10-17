
var oldVal = "";
$(document).on('propertychange change keyup paste input','#nickname', function() { // input(propertychange)
	var currentVal = $(this).val().trim();
    if(currentVal == oldVal) {
    	nicknameCheck();
    	return;
    }
    oldVal = currentVal;
});

var isIdOk = false;
function idCheck(){
	var frm = $("form[name='reg-wrap']");
	$.ajax({
		type:"post",
	   	url:"/user/user_id_check.ajax",
	    dataType:"json",
	    data: frm.serialize(),
	    success:function(data){
	    	//alert(data.result);
	    	alert(data.msg);
	    	if(data.result == 'Y'){
	    		isIdOk = true;
	    	}
	    },
	    error: function(xhr,status,error){
	    	alert(error);
	    },
	    beforeSend:function(){
	    	//여기에 로딩중 아이콘 show
	    },
	    complete:function()
	    {
	     	//여기에 로딩중 아이콘 hide
	    }
    });
}
function nicknameCheck(){
	$.ajax({
		type:"post",
	   	url:"/user/user_nickname_check_ajax.do",
	    dataType:"json",
	    success:function(data){
	    	$('#nicknm').text(data.msg);
	    },
	    error: function(xhr,status,error){
	    	alert(error);
	    },
	    beforeSend:function(){
	    	//여기에 로딩중 아이콘 show
	    },
	    complete:function()
	    {
	     	//여기에 로딩중 아이콘 hide
	    }
    });
}

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
	//email이 올바른지 검증 추가 해야함.

	//전화번호 최대 4글자 체크. value값도 수정.
	phoneNum.val($('#phoneFirst').val() + $('#phoneSecond').val() + $('#phoneThird').val());

	if(!checkedNumber($('#phoneFirst')) || !checkedNumber($('#phoneSecond')) || !checkedNumber($('#phoneThird'))){
		//alert("폰번호는 숫자만 입력해주세요.");
		return false;
	}

	//비밀번호 암호화도 추후에 추가해야함.
	if($('#password1').val() != $('#password2').val()){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	var shaPw = CryptoJS.SHA256($('#password1').val()).toString();
	$('#password').val(shaPw);

	if(!isIdOk){
		alert("id 중복체크를 해주세요.");
		return false;
	}

	if(writeInput === checkInputLen){
		if(confirm("제출 하시겠습니까?") == true){ //확인
			if(doubleSubmitCheck()){return false;}
			var form = $('form[name="reg-wrap"]');
			form.attr("method", "POST");
			form.attr("action", "/user/join_process.do");
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