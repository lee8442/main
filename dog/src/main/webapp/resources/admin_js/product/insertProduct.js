var spanCount = 2;

$(document).ready(function() {
	var add_span = "<span class='explain_image_div filebox'>" + 
	"<br /><label>1번</label> <img src='resources/image/product/default.png'></img>" +
	"<label for='explain_image_file1' class='image_file_label'>업로드</label>" +
	"<input type='file' id='explain_image_file1' name='explain_image_file'" +
	"class='imageForm' onchange='img(this)' accept='.gif, .jpg, .png, .jpeg'>" +
	"<label>default.png</label></span>"
	$(".explain_image_div:last").after(add_span);
});

function selectBig(e) {
	var big = $("#big");
	var small = big.siblings("select");
	if (big.val() != "0"){
		var bigCategory = new String("bigCategory=" + big.val());
		fetch("getSmallCategory.ado?" + bigCategory, {
			method : "POST"
		}).then((response) => {
			if (!response.ok){
				alert("에러가 발생했습니다.");
				threwError(response.statusText);
			}
			return response.json();
		}).then((data) => {
			if (typeof data != "undefined" && data != null && data != ""){
				var inHtml = "";
				$.each(data, function(index, value){
					inHtml += "<option value=" + value.code + ">" + value.name + "</option>"
				});
				small.html(inHtml);
				if (big.attr("id") == $("#select_info_big").attr("id")) {
					var count = $(".clicked").children("td:nth-child(5n+1)").text() - 1;
					small.val(productArray[count].small_class);
					if (small.val() == null) {
						small.val("0");
					}
				}
			} else {
				alert("소분류가 없습니다.");
			}
		});
	} else {
		$("input[type='submit']").prop("disabled", true);
		small.html("<option value='0'>소분류</option>");
	}
}

$("input[name='price']").keyup(function() {
	if (/[^0-9]/g.test($("input[name='price']").val())) {
		$("input[name='price']").val($("input[name='price']").val().replace(/[^0-9]/g, ""));
	} else if ($("input[name='price']").val().length > 9) {
		$("input[name='price']").val($("input[name='price']").val().substring(0, 10));
	}
});

function img(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function (e) {
        	$(input).siblings("img").attr('src', e.target.result);
        	$(input).siblings("label:last").text(input.files[0].name);
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		alert("(주의) 파일 선택창에서 취소를 누를 경우 이전에 등록한 이미지가 삭제됩니다.");
		$(input).siblings("img").attr("src", "resources/image/product/default.png");
		$(input).siblings("label:last").text("default.png");
	}
}

$("#add_explain_image").click(function() {
	if (spanCount < 7){
		var add_span;
		if (spanCount == 3 || spanCount == 5){
			add_span = "<span class='explain_image_div filebox'>" + 
			"<br /><label>" + spanCount + "번</label> <img src='resources/image/product/default.png'></img>" +
			"<label for='explain_image_file" + spanCount + "' class='image_file_label'>업로드</label>" +
			"<input type='file' id='explain_image_file" + spanCount + "' name='explain_image_file'" +
			"class='imageForm' onchange='img(this)' accept='.gif, .jpg, .png, .jpeg'>" +
			"<label>default.png</label></span>"
		} else {
			add_span = "<span class='explain_image_div filebox'>" + 
			"<label>" + spanCount + "번</label> <img src='resources/image/product/default.png'></img>" +
			"<label for='explain_image_file" + spanCount + "' class='image_file_label'>업로드</label>" +
			"<input type='file' id='explain_image_file" + spanCount + "' name='explain_image_file'" +
			"class='imageForm' onchange='img(this)' accept='.gif, .jpg, .png, .jpeg'>" +
			"<label>default.png</label></span>"
		}
		$(".explain_image_div:last").after(add_span);
		spanCount++;
	} else {
		alert("더 이상 이미지를 추가할 수 없습니다.");
	}
});

$("#delete_explain_image").click(function() {
	if (spanCount > 1 && spanCount < 8) {
		$(".filebox:last").remove();
		spanCount--;
	}
});

function insertCheck() {
	if ($("#big").val() == "0") {
		alert("대분류를 선택하세요.");
		$("#big").focus();
		return false;
	}
	if ($("#small").val() == null) {
		alert("소분류를 선택하세요.");
		$("#small").focus();
		return false;
	}
	if ($("input[name='name']").val() == "") {
		alert("상품명을 입력하세요.");
		$("input[name='name']").focus();
		return false;
	}
	if ($("input[name='price']").val() == "") {
		alert("가격을 입력하세요.");
		$("input[name='price']").focus();
		return false;
	}
	if ($("input[name='image_file']").val() == "") {
		alert("상품 이미지를 등록하세요.");
		return false;
	}
	if ($("input[name='simple_explain']").val() == "") {
		alert("상품 설명을 입력하세요.");
		$("input[name='simple_explain']").focus();
		return false;
	}
	if ($(".filebox").length == 0) {
		alert("상세설명 이미지는 최소 1개 이상 등록되어야 합니다.");
		return false;
	} else {
		var unInsertImg = "";
		for (var i = 1; i < $("input[name='explain_image_file']").length + 1; i++) {
			if ($("input[id='explain_image_file" + i + "']").val() == "") {
				unInsertImg += i;
			}
		}
		if (unInsertImg != "") {
			alert(unInsertImg.split("").join(", ") + "번 상세설명 이미지를 등록하세요.");
			return false;
		}
	}
	alert("상품 등록이 완료되었습니다.");
	return true;
}