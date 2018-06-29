<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/admin_css/sales/salesDaily.css">
</head>
<body>
	<h3>일일매출 현황</h3>
	<hr />
	<br />
	<div id="sales">
		<div class="bottomday">
			<div id="chartKeyword">
				<span class="day"></span><input type="button" id="orderSales"
					value="주문별 조회" onclick="createChart($(this))"><input
					type="button" id="productSales" value="상품별 조회"
					onclick="createChart($(this))">
			</div>
		</div>
		<!-- 주문별 테이블 -->
		<div id="orderview">
			<table id="mytable">
				<tr class="backgray">
					<th class="table_th">주문번호</th>
					<th class="table_th">판매금액</th>
					<th class="table_th">포인트 사용</th>
					<th class="table_th">판매금액-포인트</th>
				</tr>
				<tbody class="plus"></tbody>
				<tr class="backgray">
					<td style="text-align: center;" class="ordertd"></td>
					<td style="text-align: center;" class="sumtd"></td>
					<td style="text-align: center;" class="pointtd"></td>
					<td style="text-align: center;" class="sumpointtd"></td>
				</tr>
			</table>
		</div>

		<!-- 상품별 테이블 -->
		<div id="productTableView">
			<table id="productTableform">
				<tr class="backgray">
					<th class="table_th">상품명</th>
					<th class="table_th">판매금액</th>
					<th class="table_th">수량</th>
					<th class="table_th">상품 판매 총금액</th>
				</tr>
				<tbody class="plusproduct"></tbody>
				<tr class="backgray">
					<td class="productname td_center" colspan="2"></td>
					<td class="productamount td_center"></td>
					<td class="productpriceamont td_center"></td>
				</tr>
			</table>
		</div>
		<div id="errorDiv"></div>
		<div>
			<div id="chartContainer"></div>
			
		</div>
	</div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script type="text/javascript"
		src="resources/admin_js/sales/salesDaily.js"></script>
</body>
</html>