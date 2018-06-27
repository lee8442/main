function RefundCodeCheck(Check){
	var obj = $(".RefundCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#RefundCheck").prop("checked");
}

//환불 완료
function OrderRefundEnd() {
	var cancleCodeS = new String("cancleCodeS=" + $("#RefundCheck:checked").val());
	fetch("updateOrderRefundEnd.ado?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}