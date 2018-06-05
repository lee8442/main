function selectBig() {
	var bigCategory = new String("bigCategory=" + $("#big").val());
	if($("#big").val() != "대분류"){
		fetch("getSmallCategory.ado?" + bigCategory, {
			method : "POST",
		}).then(function(response) {
			if(!response.ok){
				alert("fetch 실패");
				threwError(response.statusText);
			}
			return response.json();
		}).then((data) => {
			  if(typeof data != "undefined" && data != null && data != ""){
				  var inHtml = "";
				  $.each(data, function(index, value){
					  inHtml += "<option value=" + value.code + ">" + value.name + "</option>"
				  });
			  } else {
				  alert("소분류가 없습니다.");
			  }
			  $('#small').html(inHtml);
		});
	}
}
