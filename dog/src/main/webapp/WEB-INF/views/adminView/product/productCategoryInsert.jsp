<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품분류 등록</h3><hr/>
	<br/><br/>
	<div id="center">
		<label>대분류 등록</label>
		<input type="text" class="input" placeholder="대분류 추가"><br/>
		<label>소분류 등록</label>
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
		<input type="text" class="input" placeholder="소분류 추가"><br/>
		<input type="submit" value="확인" onclick="window.location='productCategori.jsp'">
		<input type="reset" value="취소"  onclick="window.location='../main/adminMainScreen.jsp'">
	</div>
</body>
</html>