<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품 분류 수정 삭제</h3><hr/>
	<br/>
	<form>
	<table border="1px">
		<tr align="center"><td width="300">대분류</td><td width="300">소분류</td></tr>
		<!-- el태그를 이용한 for문 db데이터 받아오는기능으로 변경해야됨 -->
		<tr>
			<td>
			<input type="checkbox">사료<br/>
			<input type="checkbox">미용/목욕<br/>
			<input type="checkbox">장난감<br/>
			<input type="checkbox">하우스/울타리<br/>
			<input type="checkbox">간식<br/>
			<input type="checkbox">의류<br/>
			</td>
			<td>
			<input type="checkbox">피부/피모관리<br/>
			<input type="checkbox">다이어트<br/>
			<input type="checkbox">영양공급<br/>
	</table>
	<input type="button" onclick="#" value="수정">
	<input type="button" onclick="#" value="삭제">
	<input type="button" onclick="window.location='../main/adminMainScreen.jsp'" value="취소">
	</form>
</body>
</html>