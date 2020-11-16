window.addEventListener('DOMContentLoaded', ()=>{
	getUserInfoAjax();
	clickUserInfo();
	setPayPriceOnlyNumber()
	clickSearchBtn();
	clickBtnReserve();
})

	// Ajax를 통해 회원 정보 가져오기
	function getUserInfoAjax() {
		let xhr = new XMLHttpRequest;
		xhr.onload = function(e) {
			if(xhr.status == 200) {
				userInfo = JSON.parse(xhr.responseText);
				search(userInfo);
			}
		};
		xhr.open("GET", "userInfo.do");
		xhr.send();
	}

	// 검색 버튼 클릭 이벤트
	function clickSearchBtn() {
		btnSearch = document.querySelector('.btn-primary');
		let modalUl = document.querySelector('.modal-Ul');
		btnSearch.addEventListener('click',()=>{
			document.querySelector('#search').value = '';
			modalUl.innerText = '';
		})
	}

	// 검색 기능 구현
	function search(userInfo) {
		let searchInput = document.querySelector('#search');
		searchInput.addEventListener('keyup', function() {
			let searchVal = searchInput.value;
			let searchResult = userInfo.filter(e => e.userNm.includes(searchVal));
			let modalUl = document.querySelector('.modal-Ul')
			modalUl.innerText = '';
			if(searchVal === '') {
				return;
			}
			for(let i = 0; i < searchResult.length; i++) {
				var addLi = document.createElement('li');
				addLi.setAttribute("style","list-style:none");
				var addDiv = document.createElement('div');
				var templateList = document.querySelector('#template-search-list').innerHTML;
				templateList = templateList.replace("{userNm}",searchResult[i].userNm + " ");
				templateList = templateList.replace("{userTel}",searchResult[i].userTel.replace(/(.{3})/,"$1-").replace(/(.{8})/,"$1-") + " ");
				templateList = templateList.replace("{userId}",searchResult[i].userId + " ");
				templateList = templateList.replace("{userNo}",searchResult[i].userNo);
				addDiv.innerHTML = templateList;
				addDiv.setAttribute("class","searchList");
				addDiv.setAttribute("style","cursor:Pointer");
				addLi.append(addDiv);
				modalUl.append(addLi);
			}
		});
	}

	// 검색 창에서 회원정보 클릭 이벤트
	function clickUserInfo() {
		let modalBody = document.querySelector('.modal-body');
  		let btnClick = document.querySelector('.btn-secondary');

  		modalBody.addEventListener('click',(e) => {
  			if(!e.target.classList.contains('searchList') && !e.target.classList.contains('searchName') && !e.target.classList.contains('searchTel') )
  				return;
  			let divSearchList = e.target.closest('.searchList');
  			let searchName;
  			let searchTel;
  			let searchNo;
  			divSearchList.childNodes.forEach((item)=>{
  				if(item.nodeName == 'SPAN' && item.classList.contains('searchName'))
  					searchName = item.innerText;
  				else if(item.nodeName == 'SPAN' && item.classList.contains('searchTel'))
  					searchTel = item.innerText;
  				else if(item.nodeName == 'INPUT' && item.classList.contains('searchNo'))
  					searchNo = item.value;
  			})
  			document.querySelector('#name').value = searchName;
  			document.querySelector('#phone').value = searchTel;
  			document.querySelector('#userNo').value = searchNo;
  			btnClick.click();
  			document.querySelector('#msgUserInfo').style.display = "none";
  		})
  	}

	// 금액 창에 숫자만 입력되고 ',' 찍어주기
	function setPayPriceOnlyNumber() {
  		let inputPayPrice = document.querySelector('#payPrice');
  		inputPayPrice.addEventListener('input',(e) => {
  			e.target.value = e.target.value.replace(/[^0-9]/g,'').replace(/\B(?=(\d{3})+(?!\d))/g,',');
  		})
  	}

	// 예약 버튼 클릭 이벤트
  	function clickBtnReserve() {
  		let btnReserve = document.querySelector('.btn-reserve');
  		let formReserve = document.querySelector('.form-reserve');
  		btnReserve.addEventListener('click',()=> {
  			if(checkAllForm()) {
  				if(confirm(btnReserve.value + "하시겠습니까?")) {
  					formReserve.submit();
  				}
  			}
  		})
  	}

  	// 전체 유효성 검사
  	function checkAllForm() {
  		if(checkUserInfo() && checkReserveDate() && checkReserveTime() && checkWorkCate() && checkPayPrice()) return true;
  		return false;
  	}

  	// 회원 정보 유효성 검사
  	function checkUserInfo() {
  		let inputUserName = document.querySelector('#name');
  		if(inputUserName.value === '') {
  			alert('회원정보를 입력해주세요');
  			inputUserName.focus();
  			return false;
  		}
  		return true;
  	}

  	// 예약 일자 유효성 검사
  	function checkReserveDate() {
  		let inputReserveDate = document.querySelector('#reserveDate');
  		if(inputReserveDate.value === '') {
  			alert('예약일자를 입력해주세요');
  			inputReserveDate.focus();
  			return false;
  		}
  		return true;
  	}

  	// 예약 시간 유효성 검사
  	function checkReserveTime() {
  		let inputReserveTime = document.querySelector('#reserveTime');
  		if(inputReserveTime.value === '') {
  			alert('예약시간을 입력해주세요');
  			inputReserveTime.focus();
  			return false;
  		}
  		return true;
  	}

  	// 시술 종류 유효성 검사
  	function checkWorkCate() {
  		let count = 0;
  		let divWorkCate = document.querySelector('.divWorkInfo');
  		divWorkCate.childNodes.forEach((item)=> {
  			if(item.tagName === 'LABEL' && item.firstElementChild.checked) count++;
  		})
  		if(count < 1) {
  			alert('시술종류를 선택해주세요');
  			divWorkCate.focus();
  			return false;
  		}
  		return true;
  	}

  	// 결제 금액 유효성 검사
  	function checkPayPrice() {
  		let inputPayPrice = document.querySelector('#payPrice');
  		if(inputPayPrice.value === '') {
  			alert('결제금액을 입력해주세요');
  			inputPayPrice.focus();
  			return false;
  		}
  		return true;
  	}
