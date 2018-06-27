$(document).ready(
	$("#select_info").find("*:not(option)").prop("disabled", true),
	$(".image_file_label").css("background-color", "gray")
);

function selectBig(e) {
	var big = $("#big");
	if($("#big").attr("id") != e.attr("id")){
		big = $("#select_info_big");
	}
	var small = big.siblings("select");
	if(big.val() != "0"){
		var bigCategory = new String("bigCategory=" + big.val());
		fetch("getSmallCategory.ado?" + bigCategory, {
			method : "POST"
		}).then((response) => {
			if(!response.ok){
				alert("에러가 발생했습니다.");
				threwError(response.statusText);
			}
			return response.json();
		}).then((data) => {
			if(typeof data != "undefined" && data != null && data != ""){
				var inHtml = "<option value='0'>소분류</option>";
				$.each(data, function(index, value){
					inHtml += "<option value=" + value.code + ">" + value.name + "</option>"
				});
				small.html(inHtml);
				if(big.attr("id") == $("#select_info_big").attr("id")) {
					var count = $(".clicked").children("td:nth-child(5n+1)").text() - 1;
					small.val(productArray[count].small_class);
					if(small.val() == null) {
						small.val("0");
					}
				}
			} else {
				alert("소분류가 없습니다.");
			}
		});
	} else {
		small.html("<option value='0'>소분류</option>");
	}
}

$("#keyword").keyup(
	function() {
		if($("#big").val() != "0" && $("#small").val() != "0"){
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')").parent();
			var temp2 = $(temp).children("td:nth-child(4n+1)[id*="
				+ $("#small").val() + "]");
			allClear();
			$(temp2).parent().show();
		} else if($("#big").val() != "0" && $("#small").val() == "0") {
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')").parent();
			var temp2 = $(temp).children("td:nth-child(4n+1)[id*="
					+ $("#big").val() + "]");
			allClear();
			$(temp2).parent().show();
		} else {
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')");
			allClear();
			$(temp).parent().show();
		}
	}
);

$("#big").change(
		function() {
			$("#keyword").val("");
			var big = $("#big").val();
			if(big != "0"){
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+1)[id*="
						+ big + "]");
				allClear();
				$(temp).parent().show();
			} else {
				$("#list-table > tbody > tr").hide();
				allClear();
				$("#list-table > tbody > tr").show();
			}
		}
);

$("#small").change(
		function() {
			$("#keyword").val("");
			var small = $("#small").val();
			if(small != "0"){
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+1)[id*="
						+ small + "]");
				allClear();
				$(temp).parent().show();
			} else {
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+1)[id*="
						+ $("#big").val() + "]");
				allClear();
				$(temp).parent().show();
			}
		}
);

$(".table-list tbody tr").click(function() {
	if($(this).attr("class") != "clicked") {
		allClear();
		$(this).addClass("clicked");
		$(this).find(".mode").prop("type", "button");
		var count = $(this).children("td:nth-child(5n+1)").text() - 1;
		var productInfoArray = new Array();
		productInfoArray.push($("#select_info_big"));
		for(var i = 0; i < $("#select_info").find("input:text").length; i++) {
			productInfoArray.push($("#select_info").find("input[type='text']:eq(" + i + ")"));
		}
		productInfoArray.push($("#select_info img"));
		productInfoArray.push($("#select_info div:first label:last"));
		productInfoArray[0].val(productArray[count].big_class);
		selectBig(productInfoArray[0]);
		productInfoArray[1].val(productArray[count].code);
		productInfoArray[2].val(productArray[count].name);
		productInfoArray[3].val(productArray[count].price);
		productInfoArray[4].val(productArray[count].simple_explain);
		productInfoArray[5].attr("src", productArray[count].image);
		productInfoArray[6].text(productArray[count].image.split("/")[productArray[count].image.split("/").length - 1]);
		var explain_img = productArray[count].explain.split(",");
		var add_span = "";
		for(var i = 0; i < explain_img.length; i++) {
			var spanCount = i + 1;
			if(spanCount == 3 || spanCount == 5) {
				add_span += "<span class='explain_image_div filebox'>" + 
				"<br /><label>" + spanCount + "번</label> <img src='" + explain_img[i] + "'></img>" +
				"<label for='explain_image_file" + spanCount + "' class='image_file_label'>업로드</label>" +
				"<input type='file' id='explain_image_file" + spanCount + "' name='explain_image_file'" +
				"class='imageForm' onchange='img(this)' accept='.gif, .jpg, .png, .jpeg' disabled='disabled'>" +
				"<label>" + explain_img[i].split("/")[explain_img[i].split("/").length - 1] + "</label></span>"
			} else {
				add_span += "<span class='explain_image_div filebox'>" + 
				"<label>" + spanCount + "번</label> <img src='" + explain_img[i] + "'></img>" +
				"<label for='explain_image_file" + spanCount + "' class='image_file_label'>업로드</label>" +
				"<input type='file' id='explain_image_file" + spanCount + "' name='explain_image_file'" +
				"class='imageForm' onchange='img(this)' accept='.gif, .jpg, .png, .jpeg' disabled='disabled'>" +
				"<label>" + explain_img[i].split("/")[explain_img[i].split("/").length - 1] + "</label></span>"
			}
		}
		$(".explain_image_div:last").after(add_span);
		$(".image_file_label").css("background-color", "gray");
		$("input[name='code']").val(productArray[count].code);
	} else {
		allClear();
	}
	/*
	 * 아래로 내려 목록을 보여주는 방식 if($(this).attr("class") != "clicked") {
	 * $(this).addClass('clicked'); $(this).siblings().removeClass('clicked');
	 * $(this).siblings(".productTr").remove();
	 * $(this).siblings().css({"background-color": "white"});
	 * $(this).css({"background-color": "#e5ce5838"}); var count =
	 * $(this).children("td:nth-child(4n+1)").text() - 1; var inHtml = "<tr class='productTr'><td colspan='4'>";
	 * inHtml += "<table><tr><td class='productTd' colspan='2'>상품 정보</td></tr>";
	 * inHtml += "<tr><td class='productTd'>상품 번호</td><td>" +
	 * productArray[count].code + "</td></tr>"; inHtml += "<tr><td class='productTd'>상품
	 * 이름</td><td>" + productArray[count].name + "</td></tr>"; inHtml += "<tr><td class='productTd'>상품
	 * 가격</td><td>" + productArray[count].price + "</td></tr>"; inHtml += "<tr><td class='productTd'>상품
	 * 간단 설명</td><td>" + productArray[count].simple_explain + "</td></tr>";
	 * inHtml += "<tr><td class='productTd'>상품 상세 설명</td><td>" +
	 * productArray[count].explain + "</td></tr>"; inHtml += "<tr><td class='productTd'>상품
	 * 이미지</td><td><img src='" + productArray[count].image + "'></img></td></tr>";
	 * inHtml += "<tr><td class='productTd'>상품 소분류</td><td>" +
	 * productArray[count].small_class + "</td></tr>"; inHtml += "<tr><td class='productTd'>상품
	 * 등록일</td><td>" + productArray[count].reg_date + "</td></tr></table>";
	 * inHtml += "<input type='button' onclick='' value='수정'>"; inHtml += "<input
	 * type='button' onclick='' value='삭제'>"; inHtml += "</td></tr>"
	 * $(this).after(inHtml); } else { $(this).removeClass('clicked');
	 * $(this).siblings(".productTr").remove(); $(this).css({"background-color":
	 * "white"}); }
	 */
});

function allClear() {
	$('.table-list tbody tr').removeClass('clicked');
	$('.table-list tbody tr').find(".mode").prop("type", "hidden");
	$("#select_info").find("*:not(option)").prop("disabled", true);
	$("#select_info_big").val("0");
	$("#select_info_small").val("0");
	$("#select_info").find("input[type='text']").val("");
	$("#select_info").find("textarea").val("");
	$("#select_info img").attr("src", "resources/image/product/default.png");
	$("input[name='image_file']").val("");
	$("#select_info div:first label:last").text("");
	$("input[name='code']").val("");
	$(".image_file_label").css("background-color", "gray");
	$(".filebox").remove();
}

$(".mode").click(function(e) {
	if ($(".mode:first").val() == $(e.target).val()) {
		$("#select_info").find("*:not(#code)").prop("disabled", false);
		$(".image_file_label").css("background-color", "#2dbcc3");
	} else {
		if (confirm($(e.target).parent().siblings("td").eq(2).text() +" 상품을 삭제하시겠습니까?")){
			window.location="deleteProduct.ado?code=" + $(e.target).parent().siblings("td").eq(1).text();
		}
	}
});

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
	var spanCount = $(".filebox").length + 1;
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
	} else {
		alert("더 이상 이미지를 추가할 수 없습니다.");
	}
});

$("#delete_explain_image").click(function() {
	var spanCount = $(".filebox").length + 1;
	if (spanCount > 1) {
		$(".filebox:last").remove();
	}
});

function updateCheck() {
	$("input[name='code']").val($("#code").val());
	if ($("#select_info_big").val() == "0") {
		alert("대분류를 선택하세요.");
		$("#select_info_big").focus();
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
	if ($("input[name='simple_explain']").val() == "") {
		alert("상품 설명을 입력하세요.");
		$("input[name='simple_explain']").focus();
		return false;
	}
	alert("상품 수정이 완료되었습니다.");
	return true;
}