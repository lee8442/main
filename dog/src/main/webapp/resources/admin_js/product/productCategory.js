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

function selectButton() {
	var bigCategory = new String("bigCategory=" + $("#big").val());
	var bigText = $("#big option:selected").text();
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
				  var inHtml2 = "";
				  $.each(data, function(index, value){
					  inHtml2 += "<input id='smallCheck' class='smallCheck' name='code' onclick='smallCodeCheck(this)' type='checkbox' value=" + value.code + ">" + value.name + "<br/>"
				  });
			  } else {
				  alert("소분류가 없습니다.");
			  }
			  $('#divSmallVal').html(inHtml2);
			  $('#divBigVal').html("<label>" + bigText + "</label><br/>");
		});
	}
}

function deleteButton() {
	var DelCode = new String("DelCode=" + $("#smallCheck:checked").val());
		fetch("deleteCategory.ado?" + DelCode, {
			method : "POST",
		});
		alert("삭제되었습니다")
	}

function smallCodeCheck(SCheck){
	var obj = $(".smallCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != SCheck){
			obj[i].checked = false;
		}
	}
	$("#smallCheck").prop("checked");
}
