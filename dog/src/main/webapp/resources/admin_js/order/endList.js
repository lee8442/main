function endCodeCheck(Check){
	var obj = $(".endCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#endCheck").prop("checked");
}

//배송중
function OrderDeliveryStert() {
	var orderCodeS = new String("orderCodeS=" + $("#OrderCheck:checked").val());
		fetch("updateENdDeliveryStart.ado?" + orderCodeS, {
			method : "POST",
		});
		location.reload();
	}

//교환 신청
function endExchangeStart() {
	var cancleCodeS = new String("cancleCodeS=" + $("#endCheck:checked").val());
	fetch("updateOrderExchangeStart.ado?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}

//환불 신청
function endRefundStart() {
	var cancleCodeS = new String("cancleCodeS=" + $("#endCheck:checked").val());
	fetch("updateOrderRefundStart.ado?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}