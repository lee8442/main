<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품 수정</h3><hr/><br/>
	<div id="update">
		<form>
		<label>상품 분류</label>
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
		</select><br/>
		<label>상품명</label>
		<input type="text" placeholder="상품명"><br/>
		<label>상품가격</label>
		<input type="text" placeholder="10,000"><br/>
		<label>상품이미지 등록</label>
		<input type="file" id="image"><br/>
		<label>상품설명</label>
		<input type="text" placeholder="간략한 설명">상품목록에 이미지와 함께 보여질 상품 설명입니다.<br/>
		<label>상품 상세설명</label><br/>
		<textarea rows="20" cols="80"></textarea><br/>
		<input type="submit" value="수정">
		<input type="reset" onclick="window.location='../main/adminMainScreen.jsp'" value="취소">
	</form>
	</div>
	
</body>
</html>