function orderCodeCheck(check) {
	var obj = $(".orderCheck");
	for (var i = 0; i < obj.length; i++) {
		if (obj[i] != check) {
			obj[i].checked = false;
		}
	}
	$("#orderCheck").prop("checked");
}

function startDelivery() {
	var orderCodeS = new String("deliveryCode=" + $("#orderCheck:checked").val());
	fetch("updateStartDelivery.ado?" + orderCodeS, {
		method : "POST",
	});
}

function endDelivery() {
	var orderCodeS = new String("orderCodeS=" + $("#orderCheck:checked").val());
	fetch("updateEndDelivery.ado?" + orderCodeS, {
		method : "POST",
	});
}