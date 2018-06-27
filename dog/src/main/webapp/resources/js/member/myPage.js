function OrderCodeCheck(Check){
	var obj = $(".orderCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#orderCheck").prop("checked");
}
//교환 신청
function orderExchangeStart() {
	var cancleCodeS = new String("cancleCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderExchangeStart.do?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}
//교환 취소
function orderExchangeCancle() {
	var cancleCodeS = new String("cancleCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderExchangeCancle.do?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}
//환불 신청
function orderRefundStart() {
	var cancleCodeS = new String("cancleCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderRefundStart.do?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}
//환불 취소
function orderRefundCancle() {
	var cancleCodeS = new String("cancleCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderRefundCancle.do?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}
// 주문취소
function orderCancle() {
	var cancleCodeS = new String("cancleCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderCancle.do?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}