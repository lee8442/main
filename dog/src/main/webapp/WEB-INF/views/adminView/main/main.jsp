<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/admin_css/main/main.css"/>
</head>
<body>
	<h3>#dog 관리자페이지</h3><hr/>
	<div id="asideleft">
		<ul>
			<li>상품관리</li>
			<li><a target="iframe1" href="../product/productCategory.jsp"> 상품분류</a></li>
			<li><a target="iframe1" href="../product/productReg.jsp"> 상품등록</a></li>
			<li><a target="iframe1" href="../product/productList.jsp"> 상품목록</a></li><br/>
			<li>주문관리</li>
			<li><a target="iframe1" href="../order/adminOrderList.jsp"> 주문목록</a></li>
			<li><a target="iframe1" href="../order/adminReleaseCondition.jsp"> 출고현황</a></li>
			<li><a target="iframe1" href="../order/adminRefundList.jsp"> 환불목록</a></li>
			<li><a target="iframe1" href="../order/adminRefund.jsp"> 환불처리</a></li><br/>
			<li>매출관리</li>
			<li><a target="iframe1" href="../sales/salesAdminDay.jsp"> 일간매출</a></li>
			<li><a target="iframe1" href="../sales/salesAdminMonth.jsp"> 월간매출</a></li>
			<li><a target="iframe1" href="../sales/salesAdminDetailed.jsp">상세매출</a></li><br/>
			<li>고객관리</li>
			<li><a target="iframe1" href="#">회원목록</a></li>
			<li><a target="iframe1" href="#">관리자</a></li><br/>
			<li>게시판관리</li>
			<li><a target="iframe1" href="#"> 상품평</a></li>
			<li><a target="iframe1" href="#"> 1:1문의</a></li>
			<li><a target="iframe1" href="#"> FAQ</a></li><br/>
			<li>통계관리</li>
			<li><a target="iframe1" href="#"> 상품별 현황</a></li>
			<li><a target="iframe1" href="#"> 월간 판매현황</a></li>
			<li><a target="iframe1" href="#"> 연간 판매현황</a></li>
		</ul>
	</div>
	<div id="section">
		<article id="article1">
			<iframe name="iframe1" src="adminMainScreen.jsp" width="800" height="900" seamless></iframe>
		</article>
	</div>
</body>
</html>