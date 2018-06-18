<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/product/productBasket.css">
<title>Insert title here</title>
</head>
<body>
	<div id="paymentcontent">
		<div class="bar">
							<a href="main.do" class="a1">홈</a> &nbsp;> <a
								href="paymentForm.do" class="a1">주문배송조회</a>
						</div>
		<div class="order_product">
			<h2>장바구니</h2>
			<form>
			<table class="order_table">
				<tr>
					<th>
						<div class="left order_table01">선택</div>
						<div class="left order_table02">상품정보</div>
						<div class="left order_table03">적립금</div>
						<div class="left order_table04">수량</div>
						<div class="left order_table05">판매가</div>
						<div class="left order_table06">합계</div>
					</th>
				</tr>
				<tr class="order_line">	
					<td>
						<div class="left order_table_center01"><input class="checkbox" type="checkbox"></div>
					<%-- <c:forEach var="" items="" > --%>
					 	<div class="left order_table_center02">강아지 간식</div>
						<div class="left order_table_center03">18,000원</div>
						<div class="left order_table_center04">2개↑</div>
						<div class="left order_table_center05">35,800</div>
						<div class="left order_table_center06">358원</div>
					<%-- </c:forEach> --%>
					</td>
				</tr>
			</table>
			<div class="productsum" ><b>상품합계금액</b>  53,800원</div>
				<%-- <c:if test="${sessionScope.userId != null}">--%>
				<input type="button" value="바로결제" class="btnpay">
				<%-- </c:if>  --%>
				<input type="button" value="이전으로" class="btncancel">
				<input type="button" value="비우기" class="btndel">
				<input type="button" value="쇼핑계속하기" class="btnshopping">
			</form>
		</div>
	</div>
</body>
</html>