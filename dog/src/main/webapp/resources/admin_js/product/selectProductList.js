$("#keyword")
		.keyup(
				function() {
					var k = $(this).val();
					$("#list-table > tbody > tr").hide();
					var temp = $("#list-table > tbody > tr > td:nth-child(4n+3):contains('"
							+ k + "')");
					$(temp).parent().show();
				});

$('.table-list tr').hover(function() {
	$(this).children().removeClass('graytd');
	$(this).addClass('hover');
}, function() {
	$(this).removeClass('hover');
	$(this).children(':even').addClass('graytd');
});

$('.table-list tr').click(function() {
	alert("눌림");
});

