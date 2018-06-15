<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품분류 등록</h3><hr /><br /><br />
	<div id="center">
		<label>소분류 등록</label>
		<form action="insertCategory.ado">
			<select id="big" onchange="big_class_code()" name = "big_class_code" >
				<option>대분류</option>
				<c:forEach var="CBig" items="${selectBigCategory }">
					<option value="${CBig.code }">${CBig.name }</option>
				</c:forEach>
			</select> <br/>
			<input type="text" name="code" class="input" placeholder="소분류 코드">
			<input type="text" name="name" class="input" placeholder="소분류 이름"><br />
			
			<input type="submit" value="등록">
			<input type="reset" value="취소" onclick="window.location='productCategoryForm.ado'">
		</form>
	</div>
	<script type="text/javascript" src="resources/admin_js/product/productCategoryInsert.js"></script>
</body>
</html>