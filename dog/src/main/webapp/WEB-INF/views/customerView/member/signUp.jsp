<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/signUp.css">
<!-- <script type="text/javascript" src="jquery-3.3.1.min.js"></script> -->
<title>Insert title here</title>
</head>
<body>
	<div class="body-all">
		<div class="bar">
			<a href="#" class="a1">홈</a> &nbsp; <a href="login.jsp" class="a2">로그인</a>
			&nbsp; <a href="signUp.jsp" class="a2">회원가입</a> <a href="#"
				class="a3">#DOG</a>
		</div>
		<center>
			<div class="body-list">
				<div class="text">
					<h1>회원가입</h1>
				</div>
			</div>
			<form action="" onsubmit="return insertCheck()" method="post">
				<div class="tab-content">
					<ul class="tab-list-ul">
						<li class="li-id"><b class="li-id-b">아이디</b> <input id="id"
							class="input-id" type="text"><input class="id-btn"
							onclick="idcheck()" type="button" value="중복확인"></li>
						<li class="li-h5"><h5>※최소 3자 이상 입력하세요.</h5></li>
						<li class="li-id-ok"><h4 class="h4-id">※영소문자,숫자로 이루어진
								4~10 글자로 입력해주세요.</h4></li>
						<li><b>이름</b><input id="name" class="name-input" type="text"></li>
						<li><h4 class="h4-name">※ 공백없이 한글만 입력하세요.</h4></li>
						<li><b>전화번호</b><input class="phone-input" id="phone"
							type="text"></li>
						<li><h4 class="h4-phone">※ ' - ' 없이 숫자로만 입력하세요.</h4></li>
						<li><b>비밀번호</b><input class="pass-input" id="password"
							type="password">
						<li><h4 class="h4-pass">※숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여
								8자리 이상 입력</h4></li>
						<li><input class="repass-btn" type="button" value="확인"></li>
						<li><b>비밀번호확인</b><input class="repass-input" id="repassword"
							type="password"></li>
						<li><b>주민번호</b><input class="jumin1-input" id="jumin1"
							type="text"><b class="b-">ㅡ</b><input
							class="jumin2-input" id="jumin2" type="text"> <input
							name="registration" type="hidden"></li>
						<li><b>주소</b><input class="address-search" id="address"
							type="text"><input class="address-btn" type="button"
							value="검색"></li>
						<li><b>상세주소</b><input class="details-address"
							id="details-address" type="text"></li>
						<li><b>이메일</b> <input class="email" id="email" type="text">
							<div>
								<select class="email-list" style="width: 130px; height: 40px;">
									<option value="0">직접입력</option>
									<option value="1">naver.com</option>
									<option value="2">hanmail.net</option>
									<option value="3">gmail.com</option>
									<option value="4">cyworld.co.kr</option>
									<option value="5">nate.com</option>
								</select>
							</div></li>
						<li><h4>※ 이메일 형식에 맞게 입력해주세요.</h4></li>
						<li><b>point</b><input class="point-input" type="text"></li>
					</ul>

					<div class="tab-list-btn">
						<input class="save" type="submit" value="저장"> <input
							class="cancel" type="button" value="취소">
					</div>
				</div>
			</form>
		</center>
	</div>
	<script type="text/javascript" src="resources/js/member/signUp.js"></script>
</body>
</html>