<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="resources/admin_css/member/selectMemberInfo.css">
<title>Insert title here</title>
</head>
<body>
	<div id="update_form">
		<h3>회원상세정보</h3>
		<hr />
		<div id="member_update">
			<c:set var="memberInfo" value="${memberInfo }" />
			<table>
				<tr>
					<td>아이디</td>
					<td>${memberInfo.id }</td>
				</tr>
				<tr>
					<td>회원 이름</td>
					<td>${memberInfo.name }</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><p>${fn:substring(memberInfo.phone, 0, 3) } -
							${fn:substring(memberInfo.phone, 3, 7) } -
							${fn:substring(memberInfo.phone, 7, 11) }</p></td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${memberInfo.address }</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td><fmt:formatDate value="${memberInfo.join_date}"  pattern="yyyy-MM-dd"/></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/admin_js/member/selectListMember.js"></script>
</body>
</html>