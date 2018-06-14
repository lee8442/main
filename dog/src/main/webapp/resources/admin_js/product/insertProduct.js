var bigcode = 0;
var smallcode = 0;

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
				  alert("대분류가 없습니다.");
			  }
			  $('#small').html(inHtml);
		});
	}
		var sel = document.getElementById("big");
		bigcode = sel.options[sel.selectedIndex].value;
		if (bigcode == "대분류") {
			$('#small').attr('disabled', 'true');
			$('#witer_code').val("");	
			$('#witer_code').attr('disabled', 'true');
			$('#small').val("");	
		}
		if (bigcode != "대분류") {
			$('#small').removeAttr("disabled");
		}
		if (bigcode == "대분류") {
			bigcode = "코드를 선택하세요.";
		}
		$("#code").val(bigcode);
}

function selectSmall() {
	var sel = document.getElementById("small");
	smallcode = sel.options[sel.selectedIndex].value;
	if(smallcode == 0){
		$('#witer_code').attr('disabled', 'true');
		$('#witer_code').val("");
		$("#code").val(bigcode);
		$("#small_code").val(0);
	}
	if(smallcode != 0){
		$('#witer_code').removeAttr("disabled");
		$('#witer_code').val("");
		$("#small_code").val(smallcode);
		$("#code").val(bigcode + smallcode);
	}
}
$(document).ready(function() {
	$("#witer_code").on('input', function() {
		$("#code").val(bigcode + smallcode + $("#witer_code").val());
		$("#codereal").val($("#code").val());
	});
	if (bigcode == 0) {
		$('#small').attr('disabled', 'true');
		$("#witer_code").attr('disabled', 'true');
		bigcode = "코드를 선택하세요.";
		$("#code").val(bigcode);
	}
		
	
});