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
			<li><a href="selectCategory.ado"> 상품분류</a></li>
			<li><a href="insertProduct.ado"> 상품등록</a></li>
			<li><a href="selectProductList.ado"> 상품목록</a></li>
			<br />
			<li class="menu">주문관리</li>
			<li><a href="../order/adminOrderList.jsp"> 주문목록</a></li>
			<li><a href="../order/adminReleaseCondition.jsp"> 출고현황</a></li>
			<li><a href="../order/adminRefundList.jsp"> 환불목록</a></li>
			<li><a href="../order/adminRefund.jsp"> 환불처리</a></li>
			<br />
			<li class="menu">매출관리</li>
			<li><a href="../sales/salesAdminDay.jsp"> 일간매출</a></li>
			<li><a href="../sales/salesAdminMonth.jsp"> 월간매출</a></li>
			<li><a href="../sales/salesAdminDetailed.jsp"> 상세매출</a></li>
			<br />
			<li class="menu">고객관리</li>
			<li><a href="#"> 회원</a></li>
			<li><a href="#"> 관리자</a></li>
			<br />
			<li class="menu">게시판관리</li>
			<li><a href="#"> 상품평</a></li>
			<li><a href="#"> 1:1문의</a></li>
			<li><a href="#"> FAQ</a></li>
			<br />
			<li class="menu">통계관리</li>
			<li><a href="#"> 상품별 현황</a></li>
			<li><a href="#"> 월간 판매현황</a></li>
			<li><a href="#"> 연간 판매현황</a></li>
		</ul>
	</div>
	<script type="text/javascript"
		src="resources/admin_js/layout/navigation.js"></script>
</body>
</html>