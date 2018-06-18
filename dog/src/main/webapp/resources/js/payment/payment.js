function openCity(evt, payment) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(payment).style.display = "block";
	evt.currentTarget.className += " active";
}

$(document).ready(function() {
	var tabcontent;
	tabcontent = document.getElementsByClassName("tabcontent");
	tabcontent[0].style.display = "block";
	
	$(".order_table_result").text($(".order_table_price").text()*$(".order_table_amount").text());
	$(".order_table_point").text($(".order_table_result").text()*0.01);
	$(".order_table_resultBottom").text($(".order_table_result").text());
	
	if( $(".order_table_resultBottom").text() <= "29999" ) {
		$(".order_table_deliveryMoney").text("5000");
	}
	else{
		$(".order_table_deliveryMoney").text("0");
	}
	
	$(".order_table_paymentMoney").text(parseInt($(".order_table_resultBottom").text())+parseInt($(".order_table_deliveryMoney").text()));
});




