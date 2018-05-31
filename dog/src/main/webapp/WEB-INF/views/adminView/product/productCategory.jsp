<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/productCategorics.css"/>
</head>
	<h3>상품 분류</h3>
	<input type="button" onclick="window.location='productCategoriIn.jsp'" value="카테고리 추가">
	<input type="button" onclick="window.location='productCategoriUD.jsp'" value="카테고리 수정 삭제"><br/>
	<div id="categori">
		<ul>
			<li><div id="dfirst">대분류</div></li>
			<li><div id="dsecond">소분류</div></li>
		</ul>
		<ul>
			<li><div id="dfirst2">el태그or c태그를 이용하여 db에있는 목록불러오기</div></li>
			<li><div id="dsecond2">el태그or c태그를 이용하여 db에있는 목록불러오기</div></li>
		</ul>
	</div>
	<!-- el태그를 이용한 for문 db데이터 받아오는기능으로 변경해야됨 -->
	<select id="first">
		<option>대분류</option>
      <c:forEach var="CBig" items="${categoryList }" >
   
      <option value="${CBig.code }">${CBig.name }</option>
      </c:forEach>
	</select>
	<select id="secont">
		<option value="0">소분류</option>
		<option value="1">피부/피모건강</option>
		<option value="2">다이어트</option>
		<option value="3">영양공급</option>
	</select>
	<input type="button" onclick="#" value="검색"><br/>
</body>
</html>