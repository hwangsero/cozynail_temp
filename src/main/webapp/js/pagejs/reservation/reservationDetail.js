window.addEventListener('DOMContentLoaded', ()=>{
	clickBtnReserve();
})

	// 삭제 여부 확인
  	function clickBtnReserve() {
  		let btnReserve = document.querySelector('.btn-reserve-delete');
  		let reserveNo = document.querySelector('#input-reserveNo').value;
  		btnReserve.addEventListener('click',()=> {
  			if(confirm(btnReserve.value + "하시겠습니까?"))
  				location.href='reservation/delete.do?reserveNo='+reserveNo;
  		})
  	}
