$(document).ready(function () {
	createChart($("#orderSales"));
	orderTable($("#orderSales"));
});

// 주문별 테이블 클릭시
function orderTable(e) {
	var chartKeyword = e.val();	
	var product_order_date = "일일";
	var use_point = 1;
		$.ajax({
			url : "salesChart.ado",
			type : "get",
			data : {
				"chartKeyword" : chartKeyword,
				"product_order_date" : product_order_date,
				"use_point" : use_point
			},
			success : function(data) {
				if (data.length != 0) {
					$("#errorDiv").text("");
					$("#orderview").show();
					$("#productTableView").hide();
					$('#mytable > tbody.plus > tr').remove();
					var a = ''; 
					var b = 0;
		            $.each(data, function(key, value){ 
		            	a +='<tr>';
		            	a +='<td style="text-align: center;">'+value.code+'</td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="sum" value='+(value.price*value.amount)+'></td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="point" value='+value.use_point+'></td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="sumpoint"><td>'
						a +='</tr>'
						b+=1
		            });
		            $('#mytable > tbody.plus').append(a);
		            var point = 0;
		            var sumtd = 0;
		            for (i = 0; i < b; i++) {
		            	sumtd += Number($("input[name='sum']").eq(i).val());
		            	point += Number($("input[name='point']").eq(i).val());
		            	
		            	$("input[name='sumpoint']").eq(i).val(
		            			Number($("input[name='sum']").eq(i).val())-Number($("input[name='point']").eq(i).val()));
		            	
					}
		            $(".sumtd").text(sumtd);
		            $(".pointtd").text(point);
		            $(".sumpointtd").text(sumtd-point);
		            $(".ordertd").text(b+"건");
				}
			},	
		});
}
	

// 상품별 테이블 클릭시
function productTable(e) {
		var chartKeyword = e.val();	
		var product_order_date = "일일";		
		$.ajax({
			url : "salesChart.ado",
			type : "get",
			data : {
				"chartKeyword" : chartKeyword,
				"product_order_date" : product_order_date				
			},
			success : function(data) {
				if (data.length != 0) {
					$("#errorDiv").text("");
		         	var a =''; 
		         	var b=0;
		   			$("#orderview").hide();
		   			$("#productTableView").show();
		   			$('#productTableform > tbody.plusproduct > tr').remove();
		            $.each(data, function(key, value){ 
		            	a +='<tr>';
		            	a +='<td style="text-align: center;">'+value.product_code+'</td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="price" value='+value.price+'></td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="amount" value='+value.amount+'></td>';
						a +='<td><input style="border:none; width:100%; text-align: center;" type="text" name="priceamount"><td>'
						a +='</tr>'
						b+=1
		            });
		            $('#productTableform > tbody.plusproduct').append(a);
		            var amount = 0;
		            var sum =0;
		            for(i=0; i<b; i++){
		            	$("input[name='priceamount']").eq(i).val(Number($("input[name='price']").eq(i).val()) * Number($("input[name='amount']").eq(i).val()))
		            	amount += Number($("input[name='amount']").eq(i).val());
		            	sum +=Number($("input[name='price']").eq(i).val()) * Number($("input[name='amount']").eq(i).val());
		            }
		            $(".productname").text(b+"개");
		            $(".productamount").text(amount+"개");
		            $(".productpriceamont").text(sum);
				}
			},	
		});
		
}

function createChart(e) {
	if (e.val() == "주문별 조회") {
		orderTable(e);
	} else {
		productTable(e);
	}
	var time_t = new Date();
	var s = set_standard(time_t.getFullYear(), 4) + '-'
			+ set_standard(time_t.getMonth() + 1, 2) + '-'
			+ set_standard(time_t.getDate(), 2)
	if ($(".canvasjs-chart-container").length != 0) {
		$(".canvasjs-chart-container").remove();
	}
	var chartKeyword = e.val();
	var product_order_date = "일일";
	$.ajax({
		url : "salesChart.ado",
		type : "post",
		data : {
			"chartKeyword" : chartKeyword,
			"product_order_date" : product_order_date
		},
		success : function(data) {
		   	if (data.length != 0) {
		   		$("#errorDiv").text("");
		   		$(".day").text(s + " ");
		   		var dataY1 = [];
		   		var dataY2 = [];
				if (chartKeyword == "상품별 조회") {
					$.each(data, function(key, value){ 
					   	dataY1.push({label: value.product_code, y: Number(value.amount)});
					   	dataY2.push({label: value.product_code, y: Number(value.amount * value.price)});
					});
					salesChart(s + " 상품별 그래프", "상품명", "판매량", "판매액", dataY1, dataY2);
				} else {
					$.each(data, function(key, value){ 
					   	dataY1.push({label: value.code, y: Number(value.amount)});
					   	dataY2.push({label: value.code, y: Number(value.amount * value.price)});
					});
					salesChart(s + " 주문별 그래프", "주문명", "판매량", "판매액", dataY1, dataY2);
				}
		   	} else {
				$("#errorDiv").text("조회된 데이터가 없습니다.");
			}
		}
	}
);
	
function salesChart(title, titleX, titleY1, titleY2, dataY1, dataY2) {
	var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			zoomEnabled: true,
			theme: "dark2",
			title:{
				text: title
			},
			axisX:{
				title: titleX,
				valueFormatString: "#######",
				interval: 1
			},
			axisY:{
				logarithmic: true, //change it to false
				title: titleY1,
				titleFontColor: "#6D78AD",
				lineColor: "#6D78AD",
				gridThickness: 0,
				lineThickness: 2,
				includeZero: true,
				labelFormatter: addSymbols
			},
			axisY2:{
				title: titleY2,
				titleFontColor: "#51CDA0",
				logarithmic: false, //change it to true
				lineColor: "#51CDA0",
				gridThickness: 0,
				lineThickness: 2,
				labelFormatter: addSymbols
			},
			legend:{
				verticalAlign: "top",
				fontSize: 16,
				dockInsidePlotArea: false
			},
			data: [{
				type: "line",
				xValueFormatString: "####",
				showInLegend: true,
				name: titleY1,
				dataPoints: dataY1
			},
			{
				type: "line",
				xValueFormatString: "####",
				axisYType: "secondary",
				showInLegend: true,
				name: titleY2,
				dataPoints: dataY2
			}]
		});
		chart.render();
		$(".canvasjs-chart-credit").text("");
	}
}

function addSymbols(e){
	var suffixes = [""];
	var order = Math.max(Math.round(Math.log(e.value) / Math.log(1)), 0);
	if(order > suffixes.length - 1) {
		order = suffixes.length - 1;
	}
	var suffix = suffixes[order];
	return CanvasJS.formatNumber(e.value / Math.pow(1, order)) + suffix;
}

function set_standard(time, digits) {
	var zero = '';
	time = time.toString();
	if (time.length < digits) {
		for (i = 0; i < digits - time.length; i++) {
			zero += '0';
		}
	}
	return zero + time;
}