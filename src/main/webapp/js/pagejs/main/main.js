
$(function () {
	$('#green').click(function() {
		$('#color').val('GN');
	});
	$('#sky').click(function() {
		$('#color').val('SK');
	});
	$('#blue').click(function() {
		$('#color').val('BL');
	});
	$('#red').click(function() {
		$('#color').val('RE');
	});
	$('#orange').click(function() {
		$('#color').val('OR');
	});
	$('#gray').click(function() {
		$('#color').val('GR');
	});
});
function Save(){
	var writeInput = 0;
	var checkInputLen = $('.form-control').length;

	$('.form-control').each(function (idx, ele){
		if(ele.value.trim().length === 0){
			alert("모든 창을 입력해주세요.");
			(ele).focus;
			return false;
		} else {
			writeInput ++;
		}
	});

	if(writeInput === checkInputLen){
		if(confirm("제출 하시겠습니까?") == true){ //확인
			if(doubleSubmitCheck()){return false;}
			var form = $('form[name="timeline-form"]');
			form.attr("method", "POST");
			form.attr("action", "/main_write_submit.do");
		    form.submit();
		} else {
			return false;
		}
	}
}

function idCheck(){
	$.ajax({
		type:"post",
	   	url:"/user/user_id_check_ajax.do",
	    dataType:"json",
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