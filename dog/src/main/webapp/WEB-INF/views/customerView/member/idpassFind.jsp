<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/idpassFind.css">
<title>idSearch</title>
</head>
<body class="body">
	<div class="body-all">
		<div class="bar">
			<a href="main.do" class="a1">홈</a>><a href="loginForm.do" class="a2">로그인</a><a
				href="idpassFind.do" class="a3">아이디/비밀번호 찾기</a>
		</div>
		<div class="body-list">
			<div class="text">
				<h1>아이디 / 비밀번호찾기</h1>
			</div>
			<div class="container">
				<ul class="tab">
					<li class="active"><a href="#tab1" style="width: 450px">아이디찾기</a></li>
					<li><a href="#tab2" style="width: 449px">비밀번호찾기</a></li>
				</ul>
			</div>
			<div class="tab-container">
				<!-- 아이디찾기  -->
				<div id="tab1" class="tab_content" style="display: none;">
					<div>
						<div class="tabcontent-name">
							<div>
								<b class="tabcontent-b-name">이름</b><br /> <b
									class="tabcontent-b-tel">전화번호</b>
							</div>
							<div>
								<input type="search" id="name" class="name"
									placeholder="이름을 입력해주세요.">
								<select class="phone-list-1" name="phone1">
									<option value="010">010</option>
									<option value="070">070</option>
								</select> <b>ㅡ</b> <input class="phone-input-1" name="phone2" type="text"
									onkeyup="phoneInput(this)"> <b>ㅡ</b> <input
									class="phone-input-1" name="phone3" type="text"
									onkeyup="phoneInput(this)">
							</div>
						</div>
					</div>
					<input name="phone" type="hidden">
					<div class="tabcontent-block">
						<input type="submit" class="tabcontent-ok" value="확인">
					</div>
				</div>
				<!-- 비밀번호 찾기  -->
				<div id="tab2" class="tab_content" style="display: block;">
					<div class="tabcontent-block">
						<input type="submit" class="tabcontent-ok2" value="확인">
						<div class="tab-pass-content">
							<ul class="tab-pass-ul">
								<li><a class="content-name-a">이름</a><input
									class="content-name" type="text"></li>
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
								<li><a class="content-id-ok-a">아이디</a><input
									class="content-id" type="text"> <input
									class="content-id-ok" type="submit" value="아이디확인"></li>
								<li><a class="content-tel-ok-a">인증번호</a><input
									class="content-tel-ok" onclick="" type="button" value="인증번호받기">
									<input class="content-submit" type="text" disabled="disabled"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/member/idpassFind.js"></script>
</body>
</html>