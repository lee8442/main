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
				<td>주문번호</td><td>구매자</td><td>상품명</td><td>주문일자</td><td>구매수량</td><td>금액</td><td>처리상태</td>
			</tr>
			<c:forEach var="List" items="${OrderList }">
			<tr>
			<!-- 주문번호 -->
				<td>
					<input id="orderCheck" type="checkbox" class="orderCheck" onclick="OrderCodeCheck(this)" name="code" value="${List.code }">${List.code }
				</td>
				<!-- 구매자 -->
				<td>
					<label>${List.member_id }</label>
				</td>
				
				<!-- 주문코드(상품명) -->
				<td>
					<label>${List.name }</label>
				</td>
				<!-- 주문일자 -->
				<td>
					<fmt:formatDate value="${List.product_order_date }" pattern="yyyy-MM-dd-HH-mm"/>
					
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
					<c:choose>
						<c:when test="${List.delivery_code == '-1'}">
							<p><c:out value="배송준비"/></p>
						</c:when>
						<c:when test="${List.delivery_code == '0'}">
							<p><c:out value="배송중"/></p>
						</c:when>
						<c:when test="${List.delivery_code == '1'}">
							<p><c:out value="배송완료"/></p>
						</c:when>
					</c:choose>
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