
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
	$('#photo').on("change", showThumbnail);
});
function showThumbnail(el){
	var files = el.target.files;
	var arrFiles = Array.prototype.slice.call(files);

	arrFiles.forEach(function(f) {
		if(!f.type.match("image.*")){
			alert("확장자는 이미지 확장자만 가능합니다.");
			return false;
		}

		var reader = new FileReader();
		reader.onload = function(el){
			$('#thumbnail').attr("src", el.target.result);
		}
		reader.readAsDataURL(f);
	});
}

function Update(){
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
		if(confirm("수정 하시겠습니까?") == true){ //확인
			if(doubleSubmitCheck()){return false;}
			var form = $('form[name="timeline-form"]');
			form.attr("method", "POST");
			form.attr("action", "/main_update_submit.do");
		    form.submit();
		} else {
			return false;
		}
	}
}

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
		if(confirm("저장 하시겠습니까?") == true){ //확인
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

function deleteItem(no, title){
	$.ajax({
		type:"post",
	   	url:"/main_delete_item.do",
	   	dataType:"json",
	   	data:{
	   		no : no,
	   		title : title
	   	},
	    success:function(data){
	    	if(data.result == 'Succ'){
	    		alert("삭제 성공");
	    	} else if (data.result == 'Fail'){
	    		alert("삭제 실패");
	    	} else {
	    		alert("삭제 실패");
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
	    	window.location.href = 'main.do'
	    }
    });
}

function updateItem(no){
	window.location.href = "/main_update_item.do?no="+no
}