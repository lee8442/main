<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/admin_css/product/productCategory.css" />

</head>
<body>
	<h3>상품 분류</h3>
	<hr />
	<br />
	<select id="big" onchange="selectBig()">
		<option>대분류</option>
		<c:forEach var="CBig" items="${selectBigCategory }">
			<option value="${CBig.code }">${CBig.name }</option>
		</c:forEach>
	</select>
	<input type="button" onclick="selectButton()" value="검색">
	<br />

	
	<form action="updateCategoryForm.ado">
	<table id="CategoryList" border="1">
		<tr>
			<td class="listName">대분류</td>
			<td class="listName">소분류</td>
		<tr>
		<tr id="divCategoryBig">
			<td id="divBigVal">
				<label>대분류</label><br/>
			</td>
			<td id="divSmallVal">
				<input id="smallCheck" type="checkbox">소분류<br/>
			</td>
		</tr>
		</table>
	<input id="buttonIn" type="button" onclick="window.location='insertCategoryForm.ado'" value="카테고리 추가">
	<input type="submit" value="카테고리 수정">
	<input type="button" onclick="deleteButton()" value="카테고리 삭제">
	<br />
	</form>
	<script type="text/javascript" src="resources/admin_js/product/productCategory.js"></script>
</body>
</html>