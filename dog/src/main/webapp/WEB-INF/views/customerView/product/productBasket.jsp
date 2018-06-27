<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/product/productBasket.css">
<script type="text/javascript"
	src="resources/js/jquey/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<div id="paymentcontent">
	<div class="bar">
		<a href="main.do" class="a1">홈</a> &nbsp;> <a href="paymentForm.do"
			class="a1">주문배송조회</a>
	</div>
	<div class="order_product">
		<h2>장바구니</h2>
		<form action="payment.do" method="get" onsubmit="return insertCheck()">
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
				<c:forEach var="basketProduct" items="${productList}"
					varStatus="status">
					<c:set var="basketProdutList"
						value="${basketProductList[status.index]}" />
					<tr class="order_line">
						<td>
							<!-- 선택 box -->
							
							<div class="left order_table_center01">
								<input class="checkbox" name="checkbox" type="checkbox" value="${basketProduct.code }">
							</div> <!-- 상품정보 -->
							<div class="left order_table_center02">
								<div class="order_image">
									<img src="${basketProduct.image}">
								</div>
								<div class="order_name">${basketProduct.name }</div>
							</div> <!-- 적립금 -->
							<div class="left order_table_center03"><input type="text" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; text-align: center;" name="point_num"></div> <!-- 수량 -->
							<div class="left order_table_center04">
								<div>
									<div class="amount_num"><input type="text" name="amount_num" class="amount" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px;" value=" ${basketProductList[status.index].amount}"></div>
									<div class="amount_clickdiv">
										<div class="amount_up">
											<img class="amountUp"
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
												alt="수량증가" class="QuantityUp up"
												style="cursor: pointer;">
										</div>
										<div class="amount_down">
											<img class="amountDown"
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
												alt="수량감소" class="QuantityDown down" style="cursor: pointer">
										</div>
									</div>
								</div>
							</div> <!-- 판매가 -->
							<div class="left order_table_center05"><input type="text" name="price_num" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; text-align: center;" value="${basketProduct.price }"> </div>
							<!-- 총 합계 -->
							<div class="left order_table_center06"><input type="text" class="productResult" style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; text-align: center;" name="productResult"></div> 
							<input class="order_table_center07" type="hidden" value="${basketProductList[status.index].product_code}">
						</td>
					</tr>
				</c:forEach>
			</table>
			<div class="productsum">
				<b>상품합계금액</b><span class="finalresult"></span>원
			</div>
			<div class="basketbtn">
			<input type="submit" value="결제하기" class="btnpay">
			<a href="productListBigCode.do?bigcode=A"> 
				<input type="button" value="계속쇼핑하기" class="btnshopping">
			</a>
			<input type="button" value="비우기" class="btndel" id="delete">
			</div>
		</form>
	</div>
</div>
<script type="text/javascript"
	src="resources/js/product/productBasket.js"></script>
</body>
</html>