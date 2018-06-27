function exchangeCodeCheck(Check){
	var obj = $(".exchangeCheck");
	for(var i=0; i<obj.length; i++){
		if(obj[i] != Check){
			obj[i].checked = false;
		}
	}
	$("#exchangeCheck").prop("checked");
}


//교환완료
function OrderExchangeEnd() {
	var cancleCodeS = new String("cancleCodeS=" + $("#exchangeCheck:checked").val());
	fetch("updateOrderExchangeEnd.ado?" + cancleCodeS, {
		method : "POST",
	});
	location.reload();
}