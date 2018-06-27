function orderCodeCheck(Check){
	var obj = $(".OrderCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#OrderCheck").prop("checked");
}
//배송중
function OrderDeliveryStert() {
	var orderCodeS = new String("orderCodeS=" + $("#OrderCheck:checked").val());
		fetch("updateOrderDeliveryStart.ado?" + orderCodeS, {
			method : "POST",
		});
		location.reload();
	}
//배송완료
function OrderDeliveryEnd() {
	var orderCodeS = new String("orderCodeS=" + $("#OrderCheck:checked").val());
	fetch("updateOrderDeliveryEnd.ado?" + orderCodeS, {
		method : "POST",
	});
	location.reload();
}
