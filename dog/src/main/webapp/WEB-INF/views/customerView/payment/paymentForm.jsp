<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/payment/payment.css">
<script type="text/javascript"
	src="resources/js/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>	
	
	
	
</head>
<body>
	<div id="paymentcontent">
		<form action="payment.do" method="post"
			onsubmit="return insertCheck()" id="hiddenPaymentForm">
			<div class="guide">
				<h2>교환및 배송안내</h2>
				<ul>
					<li>º&nbsp;샵고수의 무료배송비 기준은 구매금액 30,000원부터입니다. 단 이벤트, 할인샵 등 파격세일
						상품 등의 배송비 무료기준에는 합산되지 않습니다.</li>
					<li>º&nbsp;모든상품은 CJ대한통운, 롯데택배로 배송되며, 도서산간지역에 대한 추가배송비가 있습니다.</li>
					<li>º&nbsp;이벤트 상품이나 최저마진으로 인한 할인상품 등의 구매금액별 사은품 기준에 포함되지 않습니다.</li>
					<li>º&nbsp;주문 후 입금확인일로부터 2~6일 이내에 받으실 수 있습니다.</li>
					<li>º&nbsp;구매 시 적립포인트는 배송시에 적립됩니다.</li>
					<li>º&nbsp;최저가판매로 인한 상품은 사은품기준금액 또는 무료배송기준금액, 쿠폰사용기준금액에서 제외되오니
						유의바랍니다.</li>
				</ul>
			</div>
			<div class="order_product">
				<h2>주문하실 상품</h2>

				<table class="order_table">
					<tr>
						<th>
							<!-- <div class="left order_table01"><input class="checkbox" type="checkbox"> </div> -->
							<div class="left order_table02">상품명</div>
							<div class="left order_table03">판매가격</div>
							<div class="left order_table04">수량</div>
							<div class="left order_table05">합계</div>
							<div class="left order_table06">적립금</div>
						</th>
					</tr>
					<c:forEach var="basketProduct" items="${productList}"
						varStatus="status">
						<c:set var="basketProdutList"
							value="${basketProductList[status.index]}" />
						<tr class="order_line">
							<td>
								<!-- <div class="left order_table_center01"><input class="checkbox" type="checkbox"></div> -->
								<input type="hidden" name="product_code"
								value="${basketProduct.code}">
								<div class="left order_table_center02">
									<div class="order_image">
										<img src="${basketProduct.image}">
									</div>
									<div>${basketProduct.name}</div>
								</div>
								<div class="left order_table_center03">
									<span class="order_table_price"><input
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 73px; text-align: right;"
										type="text" name="price" readonly
										value="${basketProduct.price}"></span>원
								</div>
								<div class="left order_table_center04">
									<span class="order_table_amount"> <input
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 40px; text-align: right;"
										type="text" name="amount" readonly
										value="${basketProductList[status.index].amount}">개
									</span>
								</div>
								<div class="left order_table_center05">
									<span class="order_table_result"><input
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 70px; text-align: right;"
										type="text" name="result" class="result" readonly></span>원
								</div>
								<div class="left order_table_center06">
									<span class="order_table_point"><input
										style="border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; width: 60px; text-align: right;"
										type="text" name="point" readonly></span>원
								</div>
							</td>
						</tr>
					</c:forEach>
				</table>
				<div class="order_bottom">
					<div class="order_bottom_left">주문합계</div>
					<div class="order_bottom_right">
						<span class="order_table_resultBottom"></span>원[상품금액] + <span
							class="order_table_deliveryMoney"></span>원[배송비] = <span
							class="order_table_paymentMoney"></span>원[결제금액]
					</div>
				</div>
			</div>

			<div class="information">
				<div>
					<h2>배송지 정보 입력</h2>
				</div>
				<div class="information_table">
					<div>
						<div class="information_table_left">받으시는 분</div>
						<div class="information_table_righttop">
							<input class="information_name" type="text" id="name" name="name" onkeyup="nameInput(this)">
						</div>
					</div>
					<div>
						<div class="information_table_left">연락처 1(문자수신)</div>
						<div class="information_table_right">
							<select class="information_phone01" id="phone1" name="phone1">
								<option>010</option>
								<option>011</option>
								<option>019</option>
							</select> &nbsp;-&nbsp; 
							<input class="information_phone02" type="text" name="phone2" id="phone2" onkeyup="phoneInput(this)">&nbsp;-&nbsp; 
							<input class="information_phone03" type="text" name="phone3" id="phone3" onkeyup="phoneInput(this)">
							<input type="hidden" name="phone" class="phone">
						</div>
					</div>
					<div>
						<div>
							<div class="information_table_left">포인트</div>
							<div class="information_table_right_point">
								<div style="height: 70%; line-height: 73px;" class="pointform">
									<input class="savemoney" type="text" id="pointview" name="pointview" onkeyup="pointInput(this)">
									<input class="savemoneyuse" type="button" value="사용">
									<label class="dbPoint"></label>
									<input type="hidden" class="left_point" name="left_point">
								</div>
								<div style="height: 30%"><label class="use_point"></label> </div>
							</div>
						</div>
						<div>
							<div class="information_table_left">배송지 주소</div>
							<div class="information_table_right">
								<div class="addressdiv1">
									<input class="addressbtn01" type="button" value="주소찾기"
										onClick="goPopup()">
								</div>
								<div class="addressdiv2">
									<input class="address03" type="text" name="address-search">
								</div>
								<div class="addressdiv3">
									<input class="address04" type="text" name="details-address">
									<input name="delivery_address" type="hidden">
								</div>
							</div>
						</div>
						<div>
							<div class="information_table_left">남기실 말씀</div>
							<div class="information_table_right">
								<input type="text" name="message"
									style="width: 800px; margin-left: 20px;">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="payment">
				<div class="paymentinformation">
					<div class="paymentinformation_top">결제정보</div>
					<div class="paymentinformation_choose">01 결제수단 선택</div>
					<div class="paymentinformation_radio">
						<input name="radio" class="radio1" class="tablinks"
							onclick="openCity(event, 'card')" type="radio" checked="checked" value="card">신용카드
						<input type="hidden" name="card" class="cardnum">
						<input name="radio" class="radio2" class="tablinks"
							onclick="openCity(event, 'realtime')" type="radio" value="account">실시간
						<input type="hidden" name="account" class="account">
						계좌이체(수수료 무료) <input name="radio" class="radio3" class="tablinks"
							onclick="openCity(event, 'accounttransfer')" type="radio" value="bankbook">무통장입금
						<input type="hidden" name="bankbook" class="bankbook">
					</div>
					<div id="card" class="tabcontent">
						<div class="card">신용카드</div>
					</div>
					<div id="realtime" class="tabcontent">
						<div class="realtime">실시간 계좌이체</div>
					</div>
					<div id="accounttransfer" class="tabcontent">
						<div class="accounttransfer">무통장 입금</div>
					</div>
				</div>
				<div class="paymentcheck">
					<div class="paymentcheck_div">
						<div class="paymentcheck_top">02 최종결제금액 확인</div>
						<div class="paymentcheck_center">
							<div class="paymentcheck_center_top">
								<div class="paymentcheck_left">총구매금액</div>
								<div class="paymentcheck_right">
									<span class="middleresult"></span>원
									<input type="hidden" name="montant" class="montant" value="0">
								</div>
							</div>
							<div class="paymentcheck_center_center">
								<div class="paymentcheck_left">포인트(-)</div>
								<div class="paymentcheck_right">
									<span class="finalpoint"></span>
								</div>
								<input type="hidden"  name="user_point" id="user_point" value="0">
							</div>
							<div class="paymentcheck_center_bottom">
								<div class="paymentcheck_left">최종 결제 금액</div>
								<div class="paymentcheck_right">
									<span class="finalresult"></span>원
								</div>
							</div>
						</div>
						<div class="paymentcheck_bottom">
							<a href="main.do"><input class="paymentcheck_canclebtn"
								type="button" value="취소하기"></a>
							<input class="paymentcheck_nextbtn" type="button" value="결제하기" onclick="kakaoPay()">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript" src="resources/js/payment/payment.js"></script>
</html>