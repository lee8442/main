<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/admin_css/layout/header.css">
</head>
<body>
	<h3>
		<a href="main.ado">#dog 관리자페이지</a>
	</h3>
	<c:if test="${not empty sessionScope.adminLogin}">
		<div id="admin_zone">
			<a href="main.do">메인페이지</a> ${adminLogin.id }님 환영합니다
			<form id="logout" action="logout.do" method="post">
				<input class="loginBtn2" type="submit" value="로그아웃">
			</form>
		</div>
	</c:if>
	<p id="time"></p>
	<hr />
	<script type="text/javascript"
		src="resources/admin_js/layout/header.js"></script>
</body>
</html>