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
	<h3>상품 분류 수정</h3><hr/>
	<br/>
	<div id="center">
		 <label>소분류 수정</label>
		<form action="updateCategory.ado">
			<select id="big" onchange="big_class_code()" name = "big_class_code">
				
				<c:forEach var="CBig" items="${selectBigCategory }">
				<c:if test="${selectCategoryUp[0].big_class_code == '${CBig.code }'} ">
					<option>${CBig.name }</option>
				</c:if>
					<option value="${CBig.code }">${CBig.name }</option>
				</c:forEach>
				
				
			</select> 
			<br/>
			<input type="text" name="code" class="input" value="${selectCategoryUp[0].code }">
			<input type="text" name="name" class="input" value="${selectCategoryUp[0].name }"><br />
			
			<input type="submit" value="수정">
			<input type="button" onclick="window.location='productCategoryForm.ado'" value="취소">
		</form>
	</div>
</body>
</html>