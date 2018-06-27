<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/admin_css/member/selectMemberList.css">
<title>Insert title here</title>
</head>
<body id="shape">
	<div class="management_select">
		<h3>회원정보</h3>
		<hr />
		<div id="member_search_tool">
			<p>회원</p>
			<select id="search_select" class="move">
				<option>아이디</option>
				<option>회원이름</option>
			</select><b>검색 : </b><input class="move" id="search_text" type="text" />
			<div id="member_count">
			</div>
		</div>
	</div>
	<div id="select_list">
		<table id="list-table" class="table-list">
			<thead>
				<tr>
					<th id="No">No.</th>
					<th>아이디</th>
					<th>회원이름</th>
					<th>휴대폰번호</th>
					<th>회원등록일</th>
					<th id="mode">모드</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${memberList}" varStatus="i">
					<tr>
						<td>${i.count }</td>
						<td>${list.id }</td>
						<td>${list.name }</td>
						<td>${fn:substring(list.phone, 0, 3) } -
							${fn:substring(list.phone, 3, 7) } - ${fn:substring(list.phone, 7, 11) }</td>
						<td><fmt:formatDate value="${list.join_date}"
								pattern="yyyy-MM-dd" /></td>
						<td><input class="mode_button" type="hidden" value="상세정보"
							onclick="window.location='selectMemberInfo.ado?id=${list.id}'">
							<input class="mode_button" id="delete" onclick="deleteMember()" type="hidden" value="삭제" name="delete"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript"
		src="resources/admin_js/member/selectMemberList.js"></script>
</body>
</html>