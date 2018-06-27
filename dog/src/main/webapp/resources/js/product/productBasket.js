/*
 * $(".checkbox").click(){
 */
//삭제버튼
$("#delete").click(function() {
	/*
	 * var a =
	 * $(this).parents().siblings(".order_table_center02").children(".order_name").text();
	 */

	/* $(".chkBox").prop("checked") ; */

	/*
	 * $("input:checkbox[name='checkbox']").is(":checked") == true : false
	 */

	var items = [];
	$('input:checkbox[type=checkbox]:checked').each(function() {
		items.push($(this).parents().siblings(".order_table_center07").val());
	});
	if (items == "") {
		alert("선택한 물품이 없습니다.")
	} else if (items != null) {

		$.ajax({
			url : "deleteProductBasket.do",
			type : "post",
			dataType : 'text',
			data : {
				"product_code" : items
			},
			success : function(data) {
				location.reload();
			},

		});
	}
});

$(document).ready(
		function() {
			// 수량 증가
			$(".amountUp").click(
					function() {
						var amount = Number($(this).parent().parent().siblings().children(
								".amount").val()) + 1;
						var code = $(this).parent().parent().parent().parent()
								.siblings(".order_table_center07").val();

						$.ajax({
							url : "updateProductBasket.do",
							type : "post",
							data : {
								"amount" : amount,
								"code" : code
							},
							success : function(data) {
								location.reload();
							},

						});

					});
			// 수량 감소
			$(".amountDown").click(
					function() {
						var amount = Number($(this).parent().parent().siblings().children(
								".amount").val()) - 1;
						if (amount < 1) {
							alert("1개 이하는 불가능 합니다");

							// ajax

						} else {
							var code = $(this).parent().parent().parent()
									.parent().siblings(".order_table_center07")
									.val();

							$.ajax({
								url : "updateProductBasket.do",
								type : "post",
								data : {
									"amount" : amount,
									"code" : code
								},
								success : function(data) {
									location.reload();
								},

							});

						}

					});
			//합계 구하기
			var size = $("input[name='productResult']").length;
			var result =0;
			for (i = 0; i < size; i++) {
				
				$("input[name='productResult']").eq(i).val(Number($("input[name='amount_num']").eq(i).val())*Number($("input[name='price_num']").eq(i).val()));
				$("input[name='point_num']").eq(i).val(Number($("input[name='amount_num']").eq(i).val())*Number($("input[name='price_num']").eq(i).val())*0.01);
				result +=Number($("input[name='amount_num']").eq(i).val())*Number($("input[name='price_num']").eq(i).val());
			}
			$(".finalresult").text(result);
			
		});


function insertCheck(){
	var items = [];
	$('input:checkbox[type=checkbox]:checked').each(function() {
		items.push($(this).parents().siblings(".order_table_center07").val());
	});
	if (items == "") {
		alert("선택한 물품이 없습니다.")
		return false;
	}
	
}
