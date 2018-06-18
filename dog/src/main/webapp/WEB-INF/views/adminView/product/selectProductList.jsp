<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
input {
	height: 22px;
}

select {
	width: 130px;
	height: 28px;
	margin: 5px 0;
}

#warp {
	width: 80%;
	float: left;
}

#listBox {
	width: 100%;
	height: 715px;
	margin: auto;
}

#input-form {
	width: 100%;
	height: 40px;
	margin-left: 10px;
	margin-top: 10px;
}

#select_list {
	width: 50%;
	height: 95%;
	margin-left: 10px;
	margin-top: 10px;
	text-align: center;
	float: left;
	overflow: overlay;
}

#select_info {
	width: 45%;
	margin-left: 20px;
	float: left;
}

#list-table {
	width: 97%;
	border-collapse: collapse;
}

#list-table>thead>tr {
	background-color: #333;
	color: #fff;
}

#list-table>tbody>tr {
	border-bottom: 1px solid gray;
}

#list-table>tbody>tr>td {
	padding: 10px 0 10px 0;
	height: 25px;
}

#list-table>thead>tr>th:nth-child(4n+1) {
	width: 10%;
}

#list-table>thead>tr>th:nth-child(4n+2) {
	width: 20%;
}

#list-table>thead>tr>th:nth-child(4n+3) {
	width: 30%;
}

#list-table>thead>tr>th:nth-child(4n+4) {
	width: 20%;
}

#list-table>thead>tr>th:nth-child(4n+5) {
	width: 20%;
}

#list-table>tbody>tr>td:nth-child(4n+1) {
	width: 10%;
}

#list-table>tbody>tr>td:nth-child(4n+2) {
	width: 20%;
}

#list-table>tbody>tr>td:nth-child(4n+3) {
	width: 30%;
}

#list-table>tbody>tr>td:nth-child(4n+4) {
	width: 20%;
}

#list-table>tbody>tr>td:nth-child(4n+5) {
	width: 20%;
}

.table-list tbody tr:hover {
	background-color: #e5ce5838;
	cursor: pointer;
}

.clicked {
	background-color: #ec732c59;
}

.mode {
	padding: 0 10px 0 10px;
}

.imageForm {
	width: 73px;
}

#select_info label {
	margin: 0 5px 0 0;
}

#select_info div {
	height: 100px;
}

#select_info input[type='text'] {
	margin: 5px 0;
}

#select_info textarea {
	margin: 5px 0;
}

#select_info div label {
	float: left;
	margin: 36px 5px 36px 0;
}

#select_info div label:last-of-type {
	font: 400 13.3333px Arial;
	margin: 41px 5px 41px 0;
}

#select_info div img {
	float: left;
	height: 90px;
	width: 90px;
	margin: 5px 5px 0 0;
}

#select_info div input {
	float: left;
	margin: 36px 3px 0 0;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h3>상품 목록</h3>
	<hr />
	<div id="warp">
		<div id="listBox">
			<div id="input-form">
				<select id="big" onchange="selectBig($(this))">
					<option value="0">대분류</option>
					<c:forEach var="CBig" items="${selectBigCategory}">
						<option value="${CBig.code}">${CBig.name}</option>
					</c:forEach>
				</select> <select id="small">
					<option value="0">소분류</option>
				</select> 검색 : <input type="text" id="keyword" placeholder="상품이름을 입력하세요." />
			</div>
			<div id="select_list">
				<table id="list-table" class="table-list">
					<thead>
						<tr>
							<th>No.</th>
							<th><div>상품 번호</div></th>
							<th>상품 이름</th>
							<th>가격</th>
							<th>모드</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}" varStatus="i">
							<tr>
								<td>${i.count}</td>
								<td>${list.code}</td>
								<td>${list.name}</td>
								<td>${list.price}</td>
								<td><input class="mode" type="hidden" value="수정"
									onclick="event.cancelBubble=true"> <input class="mode"
									type="hidden" value="삭제" onclick="event.cancelBubble=true"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="select_info">
				<form action="productReg.ado" method="post"
					enctype="multipart/form-data">
					<label>대분류</label> <select id="select_info_big"
						onchange="selectBig($(this))">
						<option value="0">대분류</option>
						<c:forEach var="CBig" items="${selectBigCategory}">
							<option value="${CBig.code}">${CBig.name}</option>
						</c:forEach>
					</select> <label>소분류</label> <select id="select_info_small">
						<option value="0">소분류</option>
					</select><br /> <label>CODE</label><input type="text" placeholder="숫자 4글자"
						id="witer_code" name="code"><br /> <label>상품CODE</label><input
						type="text" disabled="disabled" id="code"><br /> <label>상품명</label>
					<input type="text" name="name" placeholder="상품명을 적어주세요."><br />
					<label>상품가격</label> <input type="text" name="price"
						placeholder="가격을 적어주세요."><br />
					<div>
						<label>상품이미지 등록</label> <img
							src="resources/image/main/default.png"></img> <input type="file"
							name="image_file" class="imageForm"><label></label> <br />
					</div>
					<label>상품설명</label> <input type="text" name="simple_explain"
						placeholder="간략한 설명"><br /> <label>상품 상세설명</label><br />
					<textarea name="explain" rows="20" cols="80"
						placeholder="상품설명을 반드시 입력해주세요"></textarea>
					<br /> <input type="hidden" id="small_code" name="small_class">
					<input width="70" type="hidden" name="image" value="image">
					<input class="able" type="submit" value="수정">
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var productArray = new Array();
		<c:forEach var="list" items="${list}">
		var productInfo = new Object();
		productInfo.code = "${list.code}";
		productInfo.name = "${list.name}";
		productInfo.price = "${list.price}";
		productInfo.simple_explain = "${list.simple_explain}";
		productInfo.explain = "${list.explain}";
		productInfo.image = "${list.image}";
		productInfo.small_class = "${list.small_class}";
		productInfo.reg_date = "${list.reg_date}";
		productInfo.big_class = "${list.big_class}";
		productArray.push(productInfo);
		</c:forEach>
	</script>
	<script type="text/javascript"
		src="resources/admin_js/product/selectProductList.js"></script>
</body>
</html>