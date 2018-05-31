<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품목록</h3><hr/>
	<br/>
	<label>상품명</label>
	<!-- 검색기능 넣어야함. --><br/>
	<label>상품 리스트</label>
	<!-- for 문 -->
	
	
	
	
	
	<c:forEach items="${list }" var="product">
	
	<input type="text" name="image"  value="${product.image } ">
	<input type="text" name="explain" value="${product.explain }">
	<input type="text" name="simple_explain" value="${product.simple_explain }">		
	</c:forEach>

	<!-- 상품명 -->
	<!-- 상품 설명 -->
	<input type="button" onclick="window.location='productUp.jsp'" value="수정">
	<input type="button" action="#" value="삭제">
</body>
</html>