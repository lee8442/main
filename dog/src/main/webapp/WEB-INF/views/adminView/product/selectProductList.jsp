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
	width: 1260px;
	height: 3500px;
	background-color: aqua;
	float: left;
}

#listBox {
	background-color: blue;
	width: 1200px;
	height: 715px;
	margin: auto;
}

#input-form {
	background-color: yellow;
	width: 900px;
	height: 40px;
	margin: 30px auto;
	position: absolute;
	left: 50%;
	margin-left: -450px;
	top: 50%;
	margin-top: -;
	margin-top: -16%;
}

#select_list {
	background-color: orange;
	width: 1100px;
	height: 550px;
	position: absolute;
	margin-left: 52px;
	margin-top: 10%;
	margin-right: 1px;
	text-align: center;
	overflow: auto;
}

#list-table {
	border-collapse: collapse;
}

#list-table>thead>tr {
	background-color: #333;
	color: #fff;
}

#list-table>tbody>tr>td {
	border-bottom: 1px solid gray;
	padding: 18px;
}

#list-table>tbody>tr>td>a {
	text-decoration: none;
}

.hover {
	cursor: pointer;
	background-color: gray;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="warp">
		<div id="listBox">
			<div id="input-form">
			<select id="big" onchange="selectBig()">
				<option>대분류</option>
				<c:forEach var="CBig" items="${selectBigCategory }">
					<option value="${CBig.code }">${CBig.name }</option>
				</c:forEach>
			</select> <select id="small">
				<option>소분류</option>
			</select>
				검색 : <input type="text" id="keyword" placeholder="상품이름을 입력하세요." />
			</div>
			<div id="select_list">
				<table width="1100" id="list-table" class="table-list">
					<thead>
						<tr>
							<th>No.</th>
							<th><div>상품번호</div></th>
							<th>상품이름</th>
							<th>가격</th>
						</tr>
					</thead>
					<c:forEach var="thislist" items="${list}" varStatus="i">
						<tbody>
							<tr>
								<td>${i.count}</td>
								<td>${thislist.code}</td>
								<td>${thislist.name}</td>
								<td>${thislist.price}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/admin_js/jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="resources/admin_js/product/selectProductList.js"></script>
</body>
</html>