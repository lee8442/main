var periodDateStatus = 0;

$(document).ready(function() {
	$("#monthDate").prop("max", function(){
		var max;
		var month = (new Date).getMonth() + 1;
		if (month < 10) {
			max = (new Date).getFullYear() + "-0" + month;
		} else {
			max = (new Date).getFullYear() + "-" + month;
		}
	    return max;
	});
});

$("#option").change(function () {
	$("#errorDiv").text("");
	if ($("#option").val() == "period") {
		if ($("#periodSpan").length == 0) {
			var periodSpan = "<span id='periodSpan'><input type='date' id='periodDate' " +
				"onchange='createChart($(\"#orderSales\"))'>" +
				"<label> ~ </label><input type='date' id='periodDate2' " +
				"onchange='createChart($(\"#orderSales\"))' onclick='periodDateCheck()'></span>"
			$("#monthDate").after(periodSpan);
			dateMax($("#periodDate"));
			dateMax($("#periodDate2"));
		}
		periodDateStatus = 0;
		$("#monthDate").val("");
		$(".dateTable").hide();
		$("#monthDate").hide();
		$("#periodSpan").show();
		if ($(".canvasjs-chart-container").length != 0) {
			$(".canvasjs-chart-container").remove();
		}
	} else {
		$("#periodDate").val("");
		$("#periodDate2").val("");
		$(".dateTable").hide();
		$("#periodSpan").hide();
		$("#monthDate").show();
		if ($(".canvasjs-chart-container").length != 0) {
			$(".canvasjs-chart-container").remove();
		}
	}
});

function periodDateCheck() {
	if ($("#periodDate").val() == ""){
		periodDateStatus = 0;
		alert("앞의 날짜를 선택해주세요.");
		return;
	} else {
		periodDateStatus = 1;
	}
}

function dateMax(e) {
	$(e).prop('max', function(){
		var max;
		var month = (new Date).getMonth() + 1;
		var day;
		if ((new Date).getDate() < 10) {
			day = "0" + (new Date).getDate();
		} else {
			day = (new Date).getDate();
		}
		if (month < 10) {
			max = (new Date).getFullYear() + "-0" + month + "-" + day;
		} else {
			max = (new Date).getFullYear() + "-" + month + "-" + day;
		}
	    return max;
	});
}

function createChart(e) {
	if ($(".canvasjs-chart-container").length != 0) {
		$(".canvasjs-chart-container").remove();
	}
	var chartKeyword = e.val();
	var product_order_date = "";
	var product_order_date2 = "";
	if ($("#periodSpan").length == 0 || $("#periodSpan").css("display") == "none") {
		product_order_date = $("#monthDate").val();
	} else {
		if (periodDateStatus == 0) {
			return;
		}
		if ($("#periodDate2").val() < $("#periodDate").val()) {
			alert("기간이 올바르지 않습니다.");
			$("#periodDate2").val("");
			return;
		}
		product_order_date = $("#periodDate").val();
		product_order_date2 = $("#periodDate2").val();
	}
	$.ajax({
		url : "salesChart.ado",
		type : "post",
		data : {
			"chartKeyword" : chartKeyword,
			"product_order_date" : product_order_date,
			"product_order_date2" : product_order_date2
		},
		success : function(data) {
			if (data.length != 0) {
				$("#errorDiv").text("");
				$("#chartKeyword").css("display", "block");
				var chartTitleDate;
				if (product_order_date2 == "") {
					chartTitleDate = product_order_date;
				} else {
					chartTitleDate = product_order_date + " ~ " + product_order_date2;
				}
			   	var dataY1 = [];
			   	var dataY2 = [];
				if (chartKeyword == "상품별 조회") {
					$.each(data, function(key, value){
						dataY1.push({label: value.product_code, y: Number(value.amount)});
						dataY2.push({label: value.product_code, y: Number(value.amount * value.price)});
					});
					salesChart(chartTitleDate + " 상품별 통계", "상품명", "판매량", "판매액", dataY1, dataY2);
				} else {
					$.each(data, function(key, value){
						dataY1.push({label: value.product_order_date, y: Number(value.price)});
						dataY2.push({label: value.product_order_date, y: Number(value.price)});
					});
					salesChart(chartTitleDate + " 날짜별 통계", "날짜", "판매량", "판매액", dataY1, dataY2);
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