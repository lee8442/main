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

$("#keyword")
		.keyup(
				function() {
					var k = $(this).val();
					$("#list-table > tbody > tr").hide();
					var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
							+ k + "')");
					$(temp).parent().show();
				});

$('.table-list tr').hover(function() {
	$(this).children().removeClass('graytd');
	$(this).addClass('hover');
}, function() {
	$(this).removeClass('hover');
	$(this).children(':even').addClass('graytd');
});

$('.table-list tr').click(function() {
	alert("눌림");
});
