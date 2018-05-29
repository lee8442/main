<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/salesAdminDayCS.css">
</head>
<body>
	<h3>일간매출 현황</h3><hr/><br/>
	<div id="sales">
		<form>
		<label>일자선택</label>
		<input type="month">&nbsp;<input type="button" onclick="#" value="검색"><br/>
		<table border="1px">
			<tr id="title1" align="center">
				<td>판매일자</td><td>출고량</td><td>회수량</td><td>금액</td>
			</tr>
			<tr>
				<!-- for문 및 데이터 로드를 통한 자료입력 -->
			</tr>
			<tr>
				<td>총금액</td><td><!-- 기능을 활용한 구매금액 합산값 로드 --></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>