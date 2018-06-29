<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/admin_css/layout/navigation.css">
</head>
<body>
	<div id="asideleft">
		<ul>
			<li class="menu">상품관리</li>
			<li><a href="productCategoryForm.ado"> 상품분류</a></li>
			<li><a href="insertProduct.ado"> 상품등록</a></li>
			<li><a href="selectProductList.ado"> 상품목록</a></li>
			<br />
			<li class="menu">주문관리</li>
			<li><a href="orderList.ado"> 주문목록</a></li>
			<li><a href="orderRefundList.ado"> 환불목록</a></li>
			<li><a href="orderExchangeList.ado"> 교환목록</a></li>
			<li><a href="endOrderList.ado"> 완료목록</a></li>
			<br />
			<li class="menu">매출관리</li>
			<li><a href="salesDaily.ado"> 일일매출</a></li>
			<li><a href="salesDay.ado"> 일간매출</a></li>
			<li><a href="salesMonth.ado"> 월간매출통계</a></li>
			<br />
			<li class="menu">고객관리</li>
			<li><a href="selectMemberList.ado"> 회원</a></li>
			<br />
			<li class="menu">게시판관리</li>
			<li><a href="reviewAllBoardList.do"> 상품평</a></li>
			<li><a href="productInquiryForm.do"> 1:1문의</a></li>
		</ul>
	</div>
	<script type="text/javascript"
		src="resources/admin_js/layout/navigation.js"></script>
</body>
</html>