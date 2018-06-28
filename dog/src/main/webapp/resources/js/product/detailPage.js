
$(document).ready(function() {
	$("#span_mileage_text").text($("#span_product_price_text").text() * 0.01 + "원");
	$("#money").text($("#span_product_price_text").text() * 0.01 + "원");
	$("#span_product_price_text").text($("#span_product_price_text").text() + "원");
	$("#submitpayment_amunt").val($("#quantity").val());
});

function up(){
	var num = $("#quantity").val();
	
	if(num<99){
	$("#quantity").val(Number(num)+1);
	$("#amount").val(Number(num)+1);
	}
	else{
		alert("최대 주문 수량이 99개를 초과할 수 없습니다.");
		$("#amount").val("99");
	}
	var a = $("#priceHidden").text();
	$("#quantity").val();
	$(".quantity_price").text(a*$("#quantity").val());
	var b = $(".quantity_price").text();
	$("#money").text(b*0.01+"원");
	$(".totalnum").text(b+"원");
	$("#submitpayment_amunt").val($("#quantity").val());
	
};

function down(){
	var num = $("#quantity").val();
	if(num >1){
	$("#quantity").val(Number(num)-1);
	$("#amount").val(Number(num)-1);}
	else{alert("최소주문 수량이 1개이상입니다.")
		$("#amount").val("1");
	}
	var a = $("#priceHidden").text();
	$("#quantity").val();
	$(".quantity_price").text(a*$("#quantity").val());
	$("#money").text(a*0.01);
	var b = $(".quantity_price").text();
	$("#money").text(b*0.01+"원");
	$(".totalnum").text(b+"원");
	$("#submitpayment_amunt").val($("#quantity").val());
	
}
//수량텍스트 숫자만 입력가능
function onlyNumber(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^0-9]/g,""));
    }); 
}

$(document).ready(function() {
	$("#quantity").on('input', function() {
		var num = $("#quantity").val();
		$("#amount").val(num);
			if(Number(num) > 99){
				alert("최대 주문 수량이 99개를 초과할 수 없습니다.");
				$("#quantity").val("99");
				$("#amount").val("99");
			}
			if(Number(num) < 1){
				alert("최소주문 수량이 1개이상입니다.");
				$("#quantity").val("1");
				$("#amount").val("1");
			}
			var a = $("#priceHidden").text();
			$("#quantity").val();
			$(".quantity_price").text(a*$("#quantity").val());
			$("#money").text(a*0.01);
			var b = $(".quantity_price").text();
			$("#money").text(b*0.01+"원");
			$(".totalnum").text(b+"원");
			$("#submitpayment_amunt").val($("#quantity").val());
		});
	});

function aaa(num) {
	location.href='productInquiryDetail.do?num='+num;
}
function bbb(num) {
	location.href='selectReviewDetail.do?num='+num;
}

