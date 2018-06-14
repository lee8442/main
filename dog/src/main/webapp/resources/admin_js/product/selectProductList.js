$(document).ready(
	$("#select_info").find("*").prop("disabled", true)
);

function selectBig() {
	if($("#big").val() != "대분류"){
		var bigCategory = new String("bigCategory=" + $("#big").val());
		fetch("getSmallCategory.ado?" + bigCategory, {
			method : "POST",
		}).then(function(response) {
			if(!response.ok){
				alert("에러가 발생했습니다.");
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
	} else {
		$('#small').html("<option>소분류</option>");
	}
}

$("#keyword").keyup(
	function() {
		if($("#big").val() != "대분류" && $("#small").val() != "소분류"){
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')").parent();
			var temp2 = $(temp).children("td:nth-child(4n+2):contains('"
					+ $("#small").val() + "')");
			$('.table-list tbody tr').removeClass('clicked');
			$('.table-list tbody tr').find(".mode").prop("type", "hidden");
			$(".able").prop("disabled", true);
			$(temp2).parent().show();
		} else if($("#big").val() != "대분류" && $("#small").val() == "소분류") {
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')").parent();
			var temp2 = $(temp).children("td:nth-child(4n+2):contains('"
					+ $("#big").val() + "')");
			$('.table-list tbody tr').removeClass('clicked');
			$('.table-list tbody tr').find(".mode").prop("type", "hidden");
			$(".able").prop("disabled", true);
			$(temp2).parent().show();
		} else {
			var k = $(this).val();
			$("#list-table > tbody > tr").hide();
			var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
					+ k + "')");
			$('.table-list tbody tr').removeClass('clicked');
			$('.table-list tbody tr').find(".mode").prop("type", "hidden");
			$(".able").prop("disabled", true);
			$(temp).parent().show();
		}
	}
);

$("#big").change(
		function() {
			$("#keyword").val("");
			if($("#big").val() != "대분류"){
				var big = $("#big").val();
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ big + "')");
				$('.table-list tbody tr').removeClass('clicked');
				$('.table-list tbody tr').find(".mode").prop("type", "hidden");
				$(".able").prop("disabled", true);
				$(temp).parent().show();
			} else {
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ '' + "')");
				$('.table-list tbody tr').removeClass('clicked');
				$('.table-list tbody tr').find(".mode").prop("type", "hidden");
				$(".able").prop("disabled", true);
				$(temp).parent().show();
			}
		}
);

$("#small").change(
		function() {
			$("#keyword").val("");
			if($("#small").val() != "소분류"){
				var small = $("#small").val();
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ small + "')");
				$('.table-list tbody tr').removeClass('clicked');
				$('.table-list tbody tr').find(".mode").prop("type", "hidden");
				$(".able").prop("disabled", true);
				$(temp).parent().show();
			} else {
				$("#list-table > tbody > tr").hide();
				var temp = $("#list-table > tbody > tr > td:nth-child(4n+2):contains('"
						+ $("#big").val() + "')");
				$('.table-list tbody tr').removeClass('clicked');
				$('.table-list tbody tr').find(".mode").prop("type", "hidden");
				$(".able").prop("disabled", true);
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

$('.table-list tbody tr').click(function() {
	if($(this).attr("class") != "clicked") {
		$(this).addClass('clicked');
		$(this).siblings().removeClass('clicked');
		$(this).siblings().find(".mode").prop("type", "hidden");
		$(".able").prop("disabled", true);
		$(this).find(".mode").prop("type", "button");
		var count = $(this).children("td:nth-child(5n+1)").text() - 1;
		var productInfoArray = new Array();
		for(var i = 1; i < $("#select_info").find("input:text").length + 2; i++) {
			productInfoArray.push($("#select_info").find("input:text:nth-of-type(" + i + ")"));
		}
		productInfoArray.push($("#select_info").find("textarea:nth-of-type(1)"));
		productInfoArray[0].val(productArray[count].code.substring(3, 7));
		productInfoArray[1].val(productArray[count].code);
		productInfoArray[2].val(productArray[count].name);
		productInfoArray[3].val(productArray[count].price);
		productInfoArray[4].val(productArray[count].image);
		alert($(".imageForm").prop("type"));
		alert($("#select_info").find("input:nth-of-type(1) type:text").prop("name"));
		productInfoArray[5].val(productArray[count].simple_explain);
		productInfoArray[6].val(productArray[count].explain);
	} else {
		$(this).removeClass('clicked');
		$(this).find(".mode").prop("type", "hidden");
		$(".able").prop("disabled", true);
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

$(".mode").click(function() {
	if(".mode:first") {
		//$("#select_info").find("*:not(.able)").prop("disabled", true);
		$(".able").prop("disabled", false);
	} else {
		alert("삭제");
	}
});