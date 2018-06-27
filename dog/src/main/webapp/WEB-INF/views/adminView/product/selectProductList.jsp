<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/admin_css/product/selectProductList.css">
</head>
<body>
	<h3>상품 목록</h3>
	<hr />
	<div id="warp">
		<div id="listBox">
			<div id="input-form">
				<select id="big" onchange="selectBig($(this))">
					<option value="0">대분류</option>
					<c:forEach var="bigCategoryList" items="${selectBigCategory}">
						<option value="${bigCategoryList.code}">${bigCategoryList.name}</option>
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
								<td id="${list.big_class}${list.small_class}">${i.count}</td>
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
				<form action="updateProduct.ado" method="post"
					onsubmit="return updateCheck()" enctype="multipart/form-data">
					<label>대분류</label> <select id="select_info_big"
						onchange="selectBig($(this))">
						<option value="0">대분류</option>
						<c:forEach var="CBig" items="${selectBigCategory}">
							<option value="${CBig.code}">${CBig.name}</option>
						</c:forEach>
					</select> <label>소분류</label> <select name="small_class"
						id="select_info_small">
						<option value="0">소분류</option>
					</select><br /> <label>상품CODE</label><input id="code" type="text"
						disabled="disabled"><br /> <label>상품명</label> <input
						type="text" name="name" placeholder="상품명을 적어주세요."><br />
					<label>상품가격</label> <input type="text" name="price"
						placeholder="가격을 적어주세요."><br />
					<div>
						<label>상품 이미지</label> <img
							src="resources/image/product/default.png"></img> <label
							for="image_file" class="image_file_label">업로드</label> <input
							type="file" id="image_file" name="image_file" class="imageForm"
							onchange="img(this)" accept=".gif, .jpg, .png, .jpeg"><label></label>
						<br />
					</div>
					<label>상품 설명</label> <input type="text" name="simple_explain"
						placeholder="간략한 설명"><br /> <label>상품 상세설명</label>
					<div class="explain_image_div box">
						<label>상세설명 이미지 최대 6장까지 등록할 수 있습니다.</label> <label
							for="add_explain_image" class="image_file_label"> + 추가</label> <input
							type="button" id="add_explain_image" class="imageForm"> <label
							for="delete_explain_image" class="image_file_label"> - 삭제</label>
						<input type="button" id="delete_explain_image" class="imageForm">
					</div>
					<br /> <input type="hidden" name="code"> <input
						class="able" type="submit" value="수정">
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