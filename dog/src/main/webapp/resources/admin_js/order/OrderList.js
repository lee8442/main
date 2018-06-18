function OrderCodeCheck(Check){
	var obj = $(".orderCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#orderCheck").prop("checked");
}

function OrderDeliveryStert() {
	var orderCodeS = new String("orderCodeS=" + $("#orderCheck:checked").val());
		fetch("updateOrderDeliveryStart.ado?" + orderCodeS, {
			method : "GET",
		});
	}

function OrderDeliveryEnd() {
	var orderCodeS = new String("orderCodeS=" + $("#orderCheck:checked").val());
	fetch("updateOrderDeliveryEnd.ado?" + orderCodeS, {
		method : "POST",
	});
}