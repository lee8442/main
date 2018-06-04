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
<script type="text/javascript" src="resources/admin_js/jquery/jquery-3.3.1.min.js"></script>

</head>
<body>
	<h3>상품 등록</h3><hr/>
	<form action="productReg.ado" method="post" enctype="multipart/form-data">
		<label>대분류</label><select id="big" onchange="bigChoice()">
			<option value="0">대분류</option>
  	   <c:forEach var="CBig" items="${categoryList }" >
      <option value="${CBig.code }">${CBig.name }</option>
      </c:forEach> 
		</select>
		<!-- 교체요망 -->	
		<label>소분류</label><select id="small"  onchange="smallChoice()">
			<option value="0">소분류</option>
			<option value="1">피부/피모건강</option>
			<option value="2">다이어트</option>
			<option value="3">영양공급</option>
		</select>

		<label>CODE</label><input type="text" placeholder="숫자 4글자" id="witer_code" name="code"><br />
		
		<label>상품CODE</label><input type="text" disabled="disabled"  id="code"><br />
		
		<label>상품명</label>
		<input type="text" name="name" placeholder="상품명을 적어주세요."><br/>
		
		<label>상품가격</label>
		<input type="text" name="price" placeholder="가격을 적어주세요."><br/>
		
		<label>상품이미지 등록</label>
		<input type="file" name="image_file" class="imageForm"><br/>
		
		<label>상품설명</label>
		<input type="text" name="simple_explain" placeholder="간략한 설명">상품목록에 이미지와 함께 보여질 상품 설명입니다.<br/>
		
		<label>상품 상세설명</label><br/>
		<textarea name="explain" rows="20" cols="80" placeholder="상품설명을 반드시 입력해주세요"></textarea><br/>
		
		<input type="hidden" id="small_code" name="small_class">
		
		<input type=hidden name="hire_date" value="2011-01-01">
		
		<input width="70" type="hidden" name="image" value="image">
		
		<input type="submit" value="등록">
		<input type="reset" onclick="window.location='#'" value="취소">
	</form>
	<script type="text/javascript" src="resources/admin_js/product/product.js"></script>
</body>
</html>