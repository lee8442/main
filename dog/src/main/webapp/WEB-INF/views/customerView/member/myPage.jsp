<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/myPage.css">
</head>
<body>
	<c:if test="${not empty sessionScope.login}"></c:if>
	<div id="warp">
		<div id="this_menu">
			<div id="page">
				<h2>My page</h2>
			</div>
			<div id="name_box">
				<p style="font-size: 30px; border-bottom: 1px solid silver;">${sessionScope.login.name }
				</p>
				<br />
				<ul class="my_level">
					<li><span class="label">적립금</span>
						<div class="value">
							<strong>${sessionScope.login.point }원</strong>
						</div></li>
					<li><span class="label">구매건수</span>
						<div class="value">
							<strong id="order"></strong>
						</div></li>
				</ul>
				<div class="edit">
					<a href="updateMyProfile.do" class="btn Small Wbig Light"><i>프로필
							수정</i></a>
				</div>
				<div class="edit_two">
					<a href="deleteMyProfile.do" class="btn Small Wbig Light"><i>회원탈퇴</i></a>
				</div>
			</div>
			<div class="point">
				<div class="title">
					<h3>Mileage Point</h3>
				</div>
				<div class="mybank">
					<ul>
						<li><strong class="tit">가용적립금</strong>
						<div>
								<strong class="data use">${sessionScope.login.point }</strong>
							</div></li>
						<li><strong class="tit">총적립금</strong> <strong class="data">${sessionScope.login.point }원</strong></li>
						<li><strong class="tit">사용적립금</strong> <strong class="data">0원</strong></li>
						<li><strong class="tit">총주문</strong> <span class="data"><strong id="order2"></strong></span></li>
					</ul>
				</div>
			</div>
			<div class="order">
				<div class="title">
					<h3>Order List</h3>
				</div>
				<div id="orderList">
					<table width="100%" border="1" summary>
						<!-- 최근 주문상품 -->
						<thead>
							<tr class="txtLittle">
								<th scope="col" class="number2">주문번호</th>
								<th scope="col" class="thumb">구매자</th>
								<th scope="col" class="thumb">상품명</th>
								<th scope="col" class="number">주문일자</th>
								<th scope="col" class="quantity">수량</th>
								<th scope="col" class="price">구매금액</th>
								<th scope="col" class="state">주문현황</th>
								<th scope="col" class="state">주문상태</th>
								<th scope="col" class="product">배송지</th>
							</tr>
						</thead>
						<tbody class="displaynone">
							<c:forEach var="List" items="${myOrderList }" varStatus="i">
								<tr class="">
									<td class="number2">
										<!-- 주문번호 --> <input id="orderCheck" type="checkbox"
										class="orderCheck" onclick="OrderCodeCheck(this)" name="code"
										value="${List.code }">${List.code }
									</td>
									<td class="thumb">
										<!-- 구매자 --> <label>${List.member_id }</label>
									</td>
									<td class="thumb">
										<!-- 상품명 --> <label>${List.product_code }</label>
									</td>
									<td class="number txtLittle displaynone">
										<!-- 주문일자 --> <label>${List.product_order_date }</label>
									</td>

									<td class="quantity txtLittle">
										<!-- 수량 --> <label>${List.amount }</label>
									</td>
									<td class="price txtLittle">
										<!-- 구매금액 --> <label>${List.price }</label>
									</td>
									<td class="state">
										<!-- 주문현황 --> <label>${List.delivery_code }</label>
									</td>
									<td class="state">
										<!-- 주문상태 --> <label>${List.cancle_code }</label>
									</td>
									<td class="product">
										<!-- 배송지 --> <label>${List.delivery_address }</label>
									</td>
								</tr>
								<input type="hidden" class="count" value="${i.count}">
							</c:forEach>
							<tr>
								<td><input type="button" onclick="orderCancle()"
									value="주문취소"></td>
								<td><input type="button" onclick="orderRefundStart()"
									value="환불신청"></td>
								<td><input type="button" onclick="orderRefundCancle()"
									value="환불취소"></td>
								<td><input type="button" onclick="orderExchangeStart()"
									value="교환신청"></td>
								<td><input type="button" onclick="orderExchangeCancle()"
									value="교환취소"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/member/myPage.js"></script>
</body>
</html>