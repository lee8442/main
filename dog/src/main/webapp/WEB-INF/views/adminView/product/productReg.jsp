<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/admin_css/product/productReg.css">
</head>
<body>
	<h3>상품 등록</h3><hr/>
	<form action="productReg.ado" >
		<label>상품 분류</label>
		<!-- el태그를 이용한 for문 db데이터 받아오는기능으로 변경해야됨 -->
		<label>CODE</label>
		<input type="text" disabled="disabled" class="code_01">/<input class="code_02" type="text"><br/>
		<select id="big" name="bigclass">
			<option>대분류</option>
      <c:forEach var="CBig" items="${selectBigCategory }" >
      <option value="${CBig.code }">${CBig.name }</option>
      </c:forEach>
		</select>
		<select id="small">
		<option>소분류</option>
		</select><br/>
		<label>상품명</label>
		<input type="text" name="name" placeholder="상품명"><br/>
		<label>상품가격</label>
		<input type="text" name="price" placeholder="10,000"><br/>
		<label>상품이미지 등록</label>
		<input type="file" id="image" name="image"><br/>
		<label>상품설명</label>
		<input type="text" name="simple_explain" placeholder="간략한 설명">상품목록에 이미지와 함께 보여질 상품 설명입니다.<br/>
		<label>상품 상세설명</label><br/>
		<textarea name="explain" rows="20" cols="80" placeholder="상품설명을 반드시 입력해주세요"></textarea><br/>
		<input type="submit" value="등록">
		<input type="reset" onclick="window.location='../main/adminMainScreen.jsp'" value="취소">
	</form>
	<script type="text/javascript"
		src="resources/admin_js/product/productCategory.js"></script>
</body>
</html>