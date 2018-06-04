<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../css/productCategorics.css" />

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
	<select id="small">
		<option>소분류</option>
	</select>
	<input type="button" onclick="#" value="검색">
	<br />

	<input type="button"
		onclick="window.location='productCategoriInsert.jsp'" value="카테고리 추가">
	<input type="button" onclick="window.location='productCategoriUD.jsp'"
		value="카테고리 수정 삭제">
	<br />

	<div id="divCategory">
		<div id="divBig">
			<label>대분류</label>
		</div>
		<div id="divSmall">
			<label>소분류</label>
		</div>
	</div>
	<br />
	<c:forEach var="#" items="#">
		<div id="divCategory">
			<c:forEach var="CBig" items="${selectBigCategory }">
				<div id="divBigVal">
					<input type="checkbox">${CBig.name }<br />
				</div>
			</c:forEach>
			<div id="divSmallVal"></div>
		</div>
	</c:forEach>

	<script type="text/javascript"
		src="resources/admin_js/product/productCategory.js"></script>
</body>
</html>