<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/admin_css/sales/salesMonth.css">
</head>
<body>
	<h3>월간매출 통계</h3>
	<hr />
	<br />
	<div id="sales">
		<form>
			<label>옵션 선택</label> <select id="option">
				<option value="month">월간 조회</option>
				<option value="period">기간 조회</option>
			</select><label>일자 선택</label> <input type="month" id="monthDate"
				onchange="createChart($('#orderSales'))">
		</form>
		<div id="chartKeyword">
			<span class="day"></span><input type="button" id="orderSales"
				value="날짜별 조회" onclick="createChart($(this))"><input
				type="button" id="productSales" value="상품별 조회"
				onclick="createChart($(this))">
		</div>
		<div id="chartContainer"></div>
		<div id="errorDiv"></div>
	</div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script type="text/javascript"
		src="resources/admin_js/sales/salesMonth.js"></script>
</body>
</html>