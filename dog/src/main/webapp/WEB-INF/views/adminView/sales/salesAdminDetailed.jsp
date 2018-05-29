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
	<h3>상품상세</h3><hr/><br/>
	<div id="detailed">
		<form>
			<label>일자선택</label>
			<input type="date"><br/>
			<label>상품분류</label>
			<!-- el태그를 이용한 for문 db데이터 받아오는기능으로 변경해야됨 -->
		<select id="first">
			<option value="0">대분류</option>
			<option value="1">사료</option>
			<option value="2">미용/목욕</option>
			<option value="3">장난감</option>
			<option value="4">하우스/울타리</option>
			<option value="5">간식</option>
			<option value="6">의류</option>
		</select>
		<select id="secont">
			<option value="0">소분류</option>
			<option value="1">피부/피모건강</option>
			<option value="2">다이어트</option>
			<option value="3">영양공급</option>
		</select>
		<input type="button" onclick="#" value="검색"><br/>
		<table border="1px">
			<tr id="title1" align="center">
				<td>판매일자</td><td>상품명</td><td>구매자</td><td>금액</td>
			</tr>
			<tr>
				<!-- for문 및 데이터 로드를 통한 자료입력 -->
			</tr>
			<tr>
				<td>총금액</td><td><!-- 기능을 활용한 구매금액 합산값 로드 --></td>
			</tr>
		</table>
		</table>
		</form>
	</div>
</body>
</html>