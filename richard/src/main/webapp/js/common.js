//숫자만 입력 가능
function checkedNumber(obj) {
	str = obj.value;
	len = str.length;
	ch = str.charAt(0);
	for (i = 0; i < len; i++) {
		ch = str.charAt(i);
		if ((ch >= '0' && ch <= '9' || ch == '-')) {
			continue;
		} else {
			alert("숫자만 입력이 가능합니다.");
			obj.value = "";
			obj.focus();
			return false;
		}
	}
	return true;
}
//이중 클릭 방지
var doubleSubmitFlag = false;
function doubleSubmitCheck(){
   if(doubleSubmitFlag){
      return doubleSubmitFlag;
   }else{
      doubleSubmitFlag = true;
      return false;
   }
}