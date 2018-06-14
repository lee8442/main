<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
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
	width: 45%;
	height: 95%;
	margin-left: 10px;
	margin-top: 10px;
	text-align: center;
	float: left;
	overflow: auto;
}

#select_info {
	width: 50%;
	margin-left: 20px;
	float: left;
}

#list-table {
	width: 100%;
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
}

.clicked {
	background-color: #ec732c59;
}

.mode {
	padding: 0 10px 0 10px;
}

.productTr {
	border-top: 1px solid black;
	background-color: #e5ce5838;
}

.productTr table {
	width: 100%;
}

.productTr td {
	padding: 5px 0 5px 0;
}

.productTr td:nth-child(2n+1) {
	width: 30%;
}

.productTr td:nth-child(2n+2) {
	width: 70%;
}

.productTr td img {
	width: 200px;
	height: 200px;
}

.productTr table td {
	border-bottom: 1px solid black;
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
				<select id="big" onchange="selectBig()">
					<option>대분류</option>
					<c:forEach var="CBig" items="${selectBigCategory}">
						<option value="${CBig.code}">${CBig.name}</option>
					</c:forEach>
				</select> <select id="small">
					<option>소분류</option>
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
					<label>대분류</label> <select id="big" onchange="selectBig()">
						<option>대분류</option>
						<c:forEach var="CBig" items="${selectBigCategory}">
							<option value="${CBig.code}">${CBig.name}</option>
						</c:forEach>
					</select> <label>소분류</label> <select id="small">
						<option>소분류</option>
					</select> <label>CODE</label><input type="text" placeholder="숫자 4글자"
						id="witer_code" name="code"><br /> <label>상품CODE</label><input
						type="text" disabled="disabled" id="code"><br /> <label>상품명</label>
					<input type="text" name="name" placeholder="상품명을 적어주세요."><br />
					<label>상품가격</label> <input type="text" name="price"
						placeholder="가격을 적어주세요."><br /> <label>상품이미지 등록</label> <input
						type="file" name="image_file" class="imageForm"><br /> <label>상품설명</label>
					<input type="text" name="simple_explain" placeholder="간략한 설명">상품목록에
					이미지와 함께 보여질 상품 설명입니다.<br /> <label>상품 상세설명</label><br />
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
		productArray.push(productInfo);
		</c:forEach>
	</script>
	<script type="text/javascript"
		src="resources/admin_js/product/selectProductList.js"></script>
</body>
</html>