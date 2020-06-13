//convertToObject
function convertToObject(formSelector, toString) {
	var param = {};
	var arr = $(formSelector).serializeArray();

	var menuArr = $(document.menuMove).serializeArray();
	$.merge(arr, menuArr);

	if (arr)
		arr.map(function(x) {
			param[x.name] = x.value;
		});

	if (toString)
		param = JSON.stringify(param);

	return param;
}