<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/insertMemberForm.css">
<title>Insert title here</title>
</head>
<body>
	<div class="body-all">
		<div class="bar">
			<a href="main.do" class="a1">홈</a> &nbsp;> <a href="loginForm.do"
				class="a2">로그인</a> &nbsp;><a href="insertMemberForm.do" class="a2">회원가입</a>
		</div>
		<center>
			<div class="body-list">
				<div class="h1-font">
					<h1 class="h1">회원가입</h1>
				</div>
			</div>
			<form action="insertMember.do" onsubmit="return insertCheck()"
				method="post">
				<div class="tab-content">
					<ul class="tab-list-ul">
						<li class="li-id"><b class="li-id-b">아이디</b><input name="id"
							class="id-input" type="text" onkeyup="idInput(this)"
							onchange="idChange()"> <input class="id-btn"
							type="button" value="중복 확인" onclick="idCheck()"></li>
						<li class="li-h5"><h5>아이디를 입력하세요.</h5></li>
						<li class="li-id-ok"><h4 class="h4-id">※ 5 ~ 15자 사이 영문 ,
								숫자로 입력하세요.</h4></li>
						<li><b>이름</b><input name="name" class="name-input"
							type="text" onkeyup="nameInput(this)"></li>
						<li><h4 class="h4-name">※ 2 ~ 10자 사이 한글, 영문으로 입력하세요.</h4></li>
						<li><b>전화번호</b>
							<div>
								<select class="phone-list" name="phone1">
									<option value="010">010</option>
									<option value="070">070</option>
								</select><b class="b-">ㅡ</b><input class="phone-input" name="phone2"
									type="text" onkeyup="phoneInput(this)"><b class="b-">ㅡ</b><input
									class="phone-input" name="phone3" type="text"
									onkeyup="phoneInput(this)">
							</div> <input name="phone" type="hidden"></li>
						<li><b>비밀번호</b><input class="pass-input" name="password"
							type="password" onkeyup="passwordInput(this)">
							<h4 class="h4-pass" id="passCheck"></h4>
						<li><h4 class="h4-pass">※ 6 ~ 20자 사이 영문, 최소 1자의 숫자 또는
								특수문자를 포함하여 입력하세요.</h4></li>
						<li><b>비밀번호 확인</b><input class="repass-input"
							name="repassword" type="password" onkeyup="repasswordInput(this)">
							<h4 class="h4-pass" id="repassCheck"></h4></li>
						<li><b>주민등록번호</b><input class="jumin1-input" name="jumin1"
							type="text" onkeyup="juminInput(this)"><b class="b-">ㅡ</b><input
							class="jumin2-input" name="jumin2" type="password" onkeyup="juminInput(this)"><input
							name="registration" type="hidden"></li>
						<li><b>주소</b><input class="address-search"
							name="address-search" type="text"><input
							class="address-btn" type="button" value="검색" onClick="goPopup()">
						</li>
						<li><b>상세주소</b><input class="details-address"
							name="details-address" type="text"><input name="address"
							type="hidden"></li>
						<li><b>이메일</b> <input class="email-input" name="email"
							type="text">
							<div>
								<select class="email-list">
									<option value="0">직접입력</option>
									<option value="1">naver.com</option>
									<option value="2">hanmail.net</option>
									<option value="3">gmail.com</option>
									<option value="4">cyworld.co.kr</option>
									<option value="5">nate.com</option>
								</select>
							</div></li>
						<li><h4>※ 이메일 형식에 맞게 입력해주세요.</h4></li>
					</ul>
					<div class="tab-list-btn">
						<input class="save" type="submit" value="회원가입"> <input
							class="cancel" type="button" value="취소"
							onclick="window.location='main.do'">
					</div>
				</div>

			</form>
		</center>
	</div>
	<script type="text/javascript"
		src="resources/js/member/insertMemberForm.js"></script>
</body>
</html>