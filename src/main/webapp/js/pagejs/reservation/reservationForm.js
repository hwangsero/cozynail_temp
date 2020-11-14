window.addEventListener('DOMContentLoaded', ()=>{
	getUserInfoAjax();
	clickUserInfo();
	setPayPriceOnlyNumber()
	clickSearchBtn();
	clickBtnReserve();
})

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

	function clickSearchBtn() {
		btnSearch = document.querySelector('.btn-primary');
		let modalUl = document.querySelector('.modal-Ul');
		btnSearch.addEventListener('click',()=>{
			document.querySelector('#search').value = '';
			modalUl.innerText = '';
		})
	}

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
				/* addDiv.setAttribute("OnClick","location.href='http://naver.com'")*/;
				addDiv.setAttribute("class","searchList");
				addDiv.setAttribute("style","cursor:Pointer");
				addLi.append(addDiv);
				modalUl.append(addLi);
			}
	  });
  }

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

  	function setPayPriceOnlyNumber() {
  		let inputPayPrice = document.querySelector('#payPrice');
  		inputPayPrice.addEventListener('input',(e) => {
  			e.target.value = e.target.value.replace(/[^0-9]/g,'').replace(/\B(?=(\d{3})+(?!\d))/g,',');
  		})
  	}

  	function clickBtnReserve() {
  		let btnReserve = document.querySelector('.btn-reserve');
  		let formReserve = document.querySelector('.form-reserve');
  		btnReserve.addEventListener('click',()=> {
  			if(checkAllForm()) formReserve.submit();
  		})
  	}

  	function checkAllForm() {
  		if(checkUserInfo() && checkReserveDate() && checkReserveTime() && checkWorkCate() && checkPayPrice()) return true;
  		return false;
  	}

  	function checkUserInfo() {
  		let inputUserName = document.querySelector('#name');
  		if(inputUserName.value === '') {
  			alert('회원정보를 입력해주세요');
  			inputUserName.focus();
  			return false;
  		}
  		return true;
  	}

  	function checkReserveDate() {
  		let inputReserveDate = document.querySelector('#reserveDate');
  		if(inputReserveDate.value === '') {
  			alert('예약일자를 입력해주세요');
  			inputReserveDate.focus();
  			return false;
  		}
  		return true;
  	}

  	function checkReserveTime() {
  		let inputReserveTime = document.querySelector('#reserveTime');
  		if(inputReserveTime.value === '') {
  			alert('예약시간을 입력해주세요');
  			inputReserveTime.focus();
  			return false;
  		}
  		return true;
  	}

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

  	function checkPayPrice() {
  		let inputPayPrice = document.querySelector('#payPrice');
  		if(inputPayPrice.value === '') {
  			alert('결제금액을 입력해주세요');
  			inputPayPrice.focus();
  			return false;
  		}
  		return true;
  	}

  	//금액 이랑 이름 추가
