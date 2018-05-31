<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/payment/payment.css">
<script type="text/javascript" src="resources/js/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/payment/payment.js"></script>
</head>
<body>
	<div id="paymentcontent">
		<div class="guide">
			<h2>교환및 배송안내</h2>
			<ul>
				<li>º&nbsp;샵고수의 무료배송비 기준은 구매금액 30,000원부터입니다. 단 이벤트, 할인샵 등 파격세일 상품 등의 배송비 무료기준에는 합산되지 않습니다.</li>
				<li>º&nbsp;모든상품은 CJ대한통운, 롯데택배로 배송되며, 도서산간지역에 대한 추가배송비가 있습니다.</li>
				<li>º&nbsp;이벤트 상품이나 최저마진으로 인한 할인상품 등의 구매금액별 사은품 기준에 포함되지 않습니다.</li>
				<li>º&nbsp;주문 후 입금확인일로부터 2~6일 이내에 받으실 수 있습니다.</li>
				<li>º&nbsp;구매 시 적립포인트는 배송시에 적립됩니다.</li>
				<li>º&nbsp;최저가판매로 인한 상품은 사은품기준금액 또는 무료배송기준금액, 쿠폰사용기준금액에서 제외되오니 유의바랍니다.</li>
			</ul>		
		</div>
		<div class="order_product">
			<h2>주문하실 상품</h2>
			<table class="order_table">
				<tr>
					<th>
						<div class="left order_table01"><input class="checkbox" type="checkbox"> </div>
						<div class="left order_table02">상품명</div>
						<div class="left order_table03">판매가격</div>
						<div class="left order_table04">수량</div>
						<div class="left order_table05">합계</div>
						<div class="left order_table06">적립금</div>
						<div class="left order_table07">삭제</div>
					</th>
				</tr>
				<tr class="order_line">	
					<td>
		 				<div class="left order_table_center01"><input class="checkbox" type="checkbox"></div>
					 	<div class="left order_table_center02">
					 		<div class="order_image"><img src="resources/image/main/dog.png"></div>
					 		<div>더독 치킨(노령견용)3KG</div>
					 	</div>
						<div class="left order_table_center03">18,000원</div>
						<div class="left order_table_center04">2개↑</div>
						<div class="left order_table_center05">35,800</div>
						<div class="left order_table_center06">358원</div>
						<div class="left order_table_center07"><input type="button" value="X"></div>
					</td>
				</tr>
			</table>
			<div class="order_bottom">
				<div class="order_bottom_left">주문합계</div>
				<div class="order_bottom_right">35,800원[상품금액] + 5,000원[배송비] = 40,800원[결제금액]</div>
			</div>
		</div>
		<form action="payment.do" method="post">
			<div class="information">
				<div>
					<h2>배송지 정보 입력</h2>
				</div>
				<div class="information_table">
					<div>
						<div class="information_table_left">받으시는 분</div>
						<div class="information_table_righttop"><input class="information_name" type="text" id="name" name="name"></div>
					</div>
					<div>
						<div class="information_table_left">연락처 1(문자수신)</div>
						<div class="information_table_right">
							<select class="information_phone01">
								<option>010</option>
								<option>011</option>
								<option>019</option>
							</select> 
							&nbsp;-&nbsp;<input class="information_phone02" type="text" id="phone2">&nbsp;-&nbsp;<input class="information_phone03" type="text" id="phone3">
						</div>
					</div>
					<div>
						<div class="information_table_left">연락처 2</div>
						<div class="information_table_right">
							<select class="information_phone01">
								<option>010</option>
								<option>011</option>
								<option>019</option>
							</select> 
							&nbsp;-&nbsp;<input class="information_phone02" type="text" id="phone5">&nbsp;-&nbsp;<input class="information_phone03" type="text" id="phone6">
					</div>
					<div>
						<div class="information_table_left">적립금</div>
						<div class="information_table_right"><input class="savemoney" type="text"><input class="savemoneyuse" type="button" value="사용"><input class="savemoneycheck" type="button" value="조회"> </div>
					</div>
					<div>
						<div class="information_table_left">배송지 주소</div>
						<div class="information_table_right">
								<div class="addressdiv1"><input class="address01" type="text"><p>ㅡ</p><input class="address02" type="text"> <input class="addressbtn01" type="button" value="주소찾기"></div> 
								<div class="addressdiv2"><input class="address03" type="text"></div>
								<div class="addressdiv3"><input class="address04" type="text"></div>
						</div>
					</div>
						<div>
							<div class="information_table_left">남기실 말씀</div>
							<div class="information_table_right"><textarea class="textarea" rows="6" cols="129"></textarea> </div>	
						</div>
					</div>
				</div>
			</div>
			<div class="payment">
				<div class="paymentinformation">
					<div class="paymentinformation_top">결제정보</div>
					<div class="paymentinformation_choose">01 결제수단 선택</div>
					<div class="paymentinformation_radio">
						<input name="radio" class="radio1" class="tablinks" onclick="openCity(event, 'card')" type="radio" checked="checked">신용카드
						<input name="radio" class="radio2" class="tablinks" onclick="openCity(event, 'realtime')" type="radio">실시간 계좌이체(수수료 무료)
						<input name="radio" class="radio3" class="tablinks" onclick="openCity(event, 'accounttransfer')" type="radio">무통장입금 </div>
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
								<div class="paymentcheck_right">35,800원</div>
							</div>
							<div class="paymentcheck_center_center">
								<div class="paymentcheck_left">배송비</div>
								<div class="paymentcheck_right">+ 5,000원</div>
							</div>
							<div class="paymentcheck_center_bottom"> 
								<div class="paymentcheck_left">최종 결제 금액</div>
								<div class="paymentcheck_right">40,800원</div>
							</div>
						</div>
						<div class="paymentcheck_bottom">
							<input class="paymentcheck_canclebtn" type="button" value="취소하기" onclick="#">
							<input class="paymentcheck_nextbtn" type="submit" value="결제하기">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>