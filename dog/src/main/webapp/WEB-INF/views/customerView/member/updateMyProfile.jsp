<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/insertMember.css">
<title>Insert title here</title>
</head>
<body>
	<div class="body-all">
		<div class="bar">
			<a href="main.do" class="a1">홈</a> &nbsp;> <a href="myPage.do"
				class="a2">myPage</a> &nbsp;> <a href="updateMyProfile.do">정보수정</a>
		</div>
		<center>
			<div class="body-list">
				<div class="h1-font">
					<h1 class="h1">정보수정</h1>
				</div>
			</div>
			<form action="updateProfile.do" onsubmit="return updateChcek()"
				method="post" id="insertForm">
				<div class="tab-content">
					<ul class="tab-list-ul">
						<li class="li-id"><b class="li-id-b">아이디</b><input
							class="id-input" type="text" value="${sessionScope.login.id }"
							disabled="disabled"><input name="id" type="hidden"
							value="${sessionScope.login.id }"></li>
						<li class="li-h5"><h5>아이디를 입력하세요.</h5></li>
						<li class="li-id-ok"><h4 class="h4-id">※ 5 ~ 15자 사이 영문,
								숫자로 입력하세요.</h4></li>
						<li><b>이름</b><input name="name" class="name-input"
							type="text" value="${sessionScope.login.name }"
							disabled="disabled"><input type="hidden" name="name"
							value="${sessionScope.login.name }" /></li>
						<li><h4 class="h4-name">※ 2 ~ 10자 사이 한글, 영문으로 입력하세요.</h4></li>
						<li><b>전화번호</b>
							<div>
								<select class="phone-list" name="phone1">
									<option value="010">010</option>
									<option value="070">070</option>
								</select><b class="b-">ㅡ</b><input class="phone-input" name="phone2"
									type="text" onkeyup="phoneInput(this)"
									value="${fn:substring(sessionScope.login.phone, 3, 7) } "><b
									class="b-">ㅡ</b><input class="phone-input" name="phone3"
									type="text" onkeyup="phoneInput(this)"
									value="${fn:substring(sessionScope.login.phone, 7, 11) }">
							</div> <input name="phone" type="hidden"></li>
						<li><b>비밀번호</b><input class="pass-input" name="password"
							type="password" onkeyup="passwordInput(this)">
							<h4 class="h4-pass" id="passCheck"></h4>
						<li><h4 class="h4-pass">※ 6 ~ 20자 사이 영문, 최소 1자의 숫자 또는
								특수문자를 포함하여 입력하세요.</h4></li>
						<li><b>비밀번호 확인</b><input class="repass-input"
							name="repassword" type="password" onkeyup="repasswordInput(this)">
							<h4 class="h4-pass" id="repassCheck"></h4></li>
						<li><b>주소</b> <c:set var="addressSplit"
								value="${fn:split(sessionScope.login.address, ' ')}" /> <input
							class="address-search" name="address-search" type="text"
							value="<c:forTokens
								items="${sessionScope.login.address }" delims=" " var="search"
								begin="0" end="3" varStatus="i"><c:if test="${!i.last }">${search } </c:if><c:if test="${i.last }">${search }</c:if></c:forTokens>">
							<input class="address-btn" type="button" value="검색"
							onClick="goPopup()"></li>
						<li><b>상세주소</b><input class="details-address"
							name="details-address" type="text"
							value="<c:forTokens
								items="${sessionScope.login.address }" delims=" " var="search"
								begin="4" end="${fn:length(addressSplit) - 1 }" varStatus="i"><c:if test="${!i.last }">${search } </c:if><c:if test="${i.last }">${search }</c:if></c:forTokens>">
							<input name="address" type="hidden"></li>
						<li><b>이메일</b> <input class="email-input" name="tempEmail"
							value="${sessionScope.login.email }" type="text"
							onkeyup="emailInput(this)">
							<div>
								<select class="email-list" name="email-list">
									<option value="직접 입력">직접 입력</option>
									<option value="naver.com">naver.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
								</select>
							</div> <input name="email" type="hidden"></li>
						<li><h4>※ 직접 입력 시 @ 뒤의 메일 주소까지 입력하세요. 'example@xxx.com'</h4></li>
					</ul>
					<div class="tab-list-btn">
						<input class="save" type="submit" value="정보수정"> <input
							class="cancel" type="button" value="취소"
							onclick="window.location='main.do'">
					</div>
				</div>
			</form>
		</center>
	</div>
	<script>
		var msg = "${param.loginErr}";
	</script>
	<script type="text/javascript"
		src="resources/js/member/updateMyProfile.js"></script>
</body>
</html>