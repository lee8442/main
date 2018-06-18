$(document).ready(
	$("#select_info").find("*:not(option)").prop("disabled", true)
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
			var temp2 = $(temp).children("td:nth-child(4n+2):contains('"
					+ $("#small").val() + "')");
			allClear();
			$(temp2).parent().show();
		} else if($("#big").val() != "0" && $("#small").val() == "0") {
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')").parent();
			var temp2 = $(temp).children("td:nth-child(4n+2):contains('"
					+ $("#big").val() + "')");
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
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ big + "')");
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
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ small + "')");
				allClear();
				$(temp).parent().show();
			} else {
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ $("#big").val() + "')");
				allClear();
				$(temp).parent().show();
			}
		}
);

function productInfo(code) {
	var productCode = new String("productCode=" + code);
	fetch("selectProductInfo.ado?" + productCode, {
		method : "POST",
	}).then(function(response) {
		if(!response.ok){
			alert("fetch 실패");
			threwError(response.statusText);
		}
		return response.json();
	}).then((data) => {
		if(typeof data != "undefined" && data != null && data != ""){
			var inHtml = "<option>소분류</option>";
			$.each(data, function(index, value){
				inHtml += "<option value=" + value.code + ">" + value.name + "</option>"
			});
			$('#small').html(inHtml);
		} else {
			alert("소분류가 없습니다.");
		}
	});
}

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
		productInfoArray.push($("#select_info div label:last"));
		productInfoArray.push($("#select_info textarea"));
		productInfoArray[0].val(productArray[count].big_class);
		selectBig(productInfoArray[0]);
		productInfoArray[1].val(productArray[count].code.substring(3, 7));
		productInfoArray[2].val(productArray[count].code);
		productInfoArray[3].val(productArray[count].name);
		productInfoArray[4].val(productArray[count].price);
		productInfoArray[5].val(productArray[count].simple_explain);
		productInfoArray[6].attr("src", productArray[count].image);
		productInfoArray[7].text(productArray[count].image.split("/")[3]);
		productInfoArray[8].val(productArray[count].explain);
	} else {
		allClear();
	}
	/* 아래로 내려 목록을 보여주는 방식
		if($(this).attr("class") != "clicked") {
		$(this).addClass('clicked');
		$(this).siblings().removeClass('clicked');
		$(this).siblings(".productTr").remove();
		$(this).siblings().css({"background-color": "white"});
		$(this).css({"background-color": "#e5ce5838"});
		var count = $(this).children("td:nth-child(4n+1)").text() - 1;
		var inHtml = "<tr class='productTr'><td colspan='4'>";
		inHtml += "<table><tr><td class='productTd' colspan='2'>상품 정보</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 번호</td><td>" + productArray[count].code + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 이름</td><td>" + productArray[count].name + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 가격</td><td>" + productArray[count].price + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 간단 설명</td><td>" + productArray[count].simple_explain + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 상세 설명</td><td>" + productArray[count].explain + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 이미지</td><td><img src='" + productArray[count].image + "'></img></td></tr>";
		inHtml += "<tr><td class='productTd'>상품 소분류</td><td>" + productArray[count].small_class + "</td></tr>";
		inHtml += "<tr><td class='productTd'>상품 등록일</td><td>" + productArray[count].reg_date + "</td></tr></table>";
		inHtml += "<input type='button' onclick='' value='수정'>";
		inHtml += "<input type='button' onclick='' value='삭제'>";
		inHtml += "</td></tr>"
		$(this).after(inHtml);
	} else {
		$(this).removeClass('clicked');
		$(this).siblings(".productTr").remove();
		$(this).css({"background-color": "white"});
	}*/
});

function allClear() {
	$('.table-list tbody tr').removeClass('clicked');
	$('.table-list tbody tr').find(".mode").prop("type", "hidden");
	$("#select_info").find("*:not(option)").prop("disabled", true);
	$("#select_info_big").val("0");
	$("#select_info_small").val("0");
	$("#select_info").find("input[type='text']").val("");
	$("#select_info").find("textarea").val("");
	$("input[name='image_file']").val("");
	$("input[type='file']").css("width", "73px");
	$("#select_info div label:last").text("");
}

$(".mode").click(function() {
	if(".mode:first") {
		$("#select_info").find("*:not(#code)").prop("disabled", false);
	} else {
		alert("삭제");
	}
});

$("input[type='file']").change(function(input) {
	$(this).css("width", "230px");
	if (input.target.files && input.target.files[0]) {
		$("#select_info div label:last").text("");
        var reader = new FileReader();
        reader.onload = function (e) {
            $("#select_info div img").attr('src', e.target.result)
        };
        reader.readAsDataURL(input.target.files[0]);
    } else {
    	$("#select_info div label:last").text("");
    	$(this).css("width", "73px");
    }
});