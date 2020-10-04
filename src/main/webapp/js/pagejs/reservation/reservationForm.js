window.addEventListener('DOMContentLoaded', ()=>{
	getUserInfoAjax();

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

  function search(userInfo) {
	  let searchInput = document.querySelector('#search');
	  searchInput.innerText = "";
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
				addDiv.innerHTML = templateList;
				/* addDiv.setAttribute("OnClick","location.href='http://naver.com'")*/;
				addDiv.setAttribute("class","searchList");
				addDiv.setAttribute("style","cursor:Pointer");
				addLi.append(addDiv);
				modalUl.append(addLi);
			}
	  });
  }
