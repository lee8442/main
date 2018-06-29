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
				<td>주문번호</td><td>구매자</td><td>상품명</td><td>주문일자</td><td>구매수량</td><td>금액</td><td>주문현황</td><td>주문상태</td><td>배송지</td>
			</tr>
			<c:forEach var="List" items="${OrderList }">
			<tr>
			<!-- 주문번호 -->
				<td>
					<input id="OrderCheck" type="checkbox" class="OrderCheck" onclick="orderCodeCheck(this)" name="code" value="${List.code }">${List.code }
				</td>
				<!-- 구매자 -->
				<td>
					<label>${List.member_id }</label>
				</td>
				<!-- 주문코드(상품명) -->
				<td>
					<label>${List.product_code }</label>
				</td>
				<!-- 주문일자 -->
				<td>
					<label>${List.product_order_date }</label>
				</td>
				
				<!-- 상품수량(주문한 갯수 -->
				<td>
					<label>${List.amount }</label>
				</td>
				<!-- 상품금액 -->
				<td>
					<label>${List.price }</label>
				</td>
				<!-- 처리상태 -->
				<td>
					<label>${List.delivery_code }</label>
				</td>
				<td>
					<label>${List.cancle_code }</label>
				</td>
				<td>
					<label>${List.delivery_address }</label>
				</td>
			</tr>
			</c:forEach>
			<tr></tr>
			<tr>
				<td>
					<input type="button" onclick="OrderDeliveryStert()" value="출고">
				</td>
				<td>
					<input type="button" onclick="OrderDeliveryEnd()" value="배송완료">
				</td>
			</tr>
		</table>
	</form>
	<script type="text/javascript" src="resources/admin_js/order/orderList.js"></script>
</body>
</html>