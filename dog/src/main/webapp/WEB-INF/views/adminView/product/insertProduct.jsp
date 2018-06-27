<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/admin_css/product/insertProduct.css">
</head>
<body>
	<h3>상품 등록</h3>
	<hr />
	<form action="insertProduct.ado" method="post"
		onsubmit="return insertCheck()" enctype="multipart/form-data">
		<div id="warp">
			<label>대분류</label><select name="big_class" id="big"
				onchange="selectBig($(this))">
				<option value="0">대분류</option>
				<c:forEach var="CBig" items="${selectBigCategory }">
					<option value="${CBig.code }">${CBig.name }</option>
				</c:forEach>
			</select><br /> <label>소분류</label><select name="small_class" id="small">
			</select><br /> <label>상품명</label><input type="text" name="name"
				placeholder="상품명을 적어주세요."><br /> <label>상품가격</label><input
				type="text" name="price" placeholder="가격을 적어주세요."><br />
			<div>
				<label>상품 이미지</label> <img src="resources/image/product/default.png"></img>
				<label for="image_file" class="image_file_label">업로드</label> <input
					type="file" id="image_file" name="image_file" class="imageForm"
					onchange="img(this)" accept=".gif, .jpg, .png, .jpeg"><label>default.png</label>
			</div>
			<label>상품 설명</label><input type="text" name="simple_explain"
				placeholder="간략한 설명"><br /> <label>상품 상세설명</label><br />
			<div class="explain_image_div box">
				<label>상세설명 이미지 최대 6장까지 등록할 수 있습니다.</label> <label
					for="add_explain_image" class="image_file_label"> + 추가</label> <input
					type="button" id="add_explain_image" class="imageForm"> <label
					for="delete_explain_image" class="image_file_label"> - 삭제</label> <input
					type="button" id="delete_explain_image" class="imageForm">
			</div>
			<br /> <input type="submit" value="등록">
		</div>
	</form>
	<script type="text/javascript"
		src="resources/admin_js/product/insertProduct.js"></script>
</body>
</html>