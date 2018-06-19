<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/myPage.css">
</head>
<body>
	<div id="warp">
		<div id="this_menu">
			<div id="page">
				<h2>My page</h2>
			</div>
			<div id="name_box">
				<p style="font-size: 30px; border-bottom:1px solid silver;">남기복[ ]</p>
				<br />
				<ul class="my_level">
					<li><span class="label">적립금</span>
						<div class="value">
							<strong>db서 포인트</strong>
						</div></li>
					<li><span class="label">구매건수</span>
						<div class="value">
							<strong>db서 구매건수</strong>
						</div></li>
				</ul>
				<div class="edit">
					<a href="" class="btn Small Wbig Light"><i>프로필 수정</i></a>
				</div>
			</div>
			<div class="point">
				<div class="title">
					<h3>Mileage Point</h3>
				</div>
				<div class="mybank">
					<ul>
						<li><strong class="tit">가용적립금</strong> <strong
							class="data use">&nbsp;1,000원 물론db</strong></li>
						<li><strong class="tit">총적립금</strong> <strong class="data">1000원</strong></li>
						<li><strong class="tit">사용적립금</strong> <strong class="data">0원</strong></li>
						<li><strong class="tit">총주문</strong> <span class="data"><strong>0회(db)</strong></span></li>
					</ul>
				</div>
			</div>
			<div class="order">
				<div class="title"><h3>Order List</h3></div>
				<table width="100%" border="1" summary>
				<!-- 최근 주문상품 -->
					<thead>
						<tr class="txtLittle">
							<th scope="col" class="number">주문일자</th>
							<th scope="col" class="number2">주문번호</th>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="price">상품구매금액</th>
							<th scope="col" class="state">주문처리상태</th>
						</tr>
					</thead>
					<tbody class="displaynone">
						<tr class="">
							<td class="number txtLittle displaynone">
							<!-- 주문일자 -->
							</td>
							<td class="number2">
								<!-- 주문번호 -->
							</td>
							<td class="thumb">
								<!-- 썸네일 이미지 -->
							</td>
							<td class="product">
								<!-- 상품정보 -->
							</td>
							<td class="quantity txtLittle">
								<!-- 수량 -->
							</td>
							<td class="price txtLittle">
								<!-- 구매금액 -->
							</td>
							<td class="state">
								<!-- 주문처리상태 -->
							</td>
						</tr>
					</tbody>
					<tbody class="">
						<tr>
							<td colspan="7" class="empty">주문 내역이 없습니다</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>