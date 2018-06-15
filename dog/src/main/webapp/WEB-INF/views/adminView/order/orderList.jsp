<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주문 목록</h3><hr/><br/>
	<form id="list">
		<table border="1">
			<tr>
				<td>주문번호</td><td>주문일자</td><td>상품명</td><td>금액</td><td>구매수량</td><td>처리상태</td>
			</tr>
			<c:forEach var="List" items="${OrderList }">
			<tr>
				<td>
					<input id="orderCheck" type="checkbox" class="orderCheck" onclick="OrderCodeCheck(this)" name="code" value="${List.code }">${List.code }
				</td>
				<td>
					<label>${List.product_order_date }</label>
				</td>
				<td>
					<label>${List.product_code }</label>
				</td>
				<td>
					<label>금액</label>
				</td>
				<td>
					<label>${List.amount }</label>
				</td>
				<td>
					<label>${List.delivery_code }</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<input type="button" onclick="OrderDeliveryStert()" value="출고">
		<input type="button" onclick="OrderDeliveryEnd()" value="배송완료">
	</form>
	<script type="text/javascript" src="resources/admin_js/order/OrderList.js"></script>
</body>
</html>