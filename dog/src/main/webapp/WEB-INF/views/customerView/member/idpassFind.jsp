<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/idpassFind.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<div id="tab1" class="tab_content">
					<div class="tabcontent-name">
						<form action="findId.do" method="POST" id="this_form"
							class="hide_content" onsubmit="return checkForm()">
							<div class="input-container">
								<i class="fa fa-user icon"></i> <input class="input-field"
									type="text" placeholder="Username" name="name"
									autocomplete="off">
							</div>
							<div class="input-container">
								<i class="fa fa-envelope icon"></i> <input class="input-field"
									type="text" placeholder="Email" name="email" autocomplete="off">
							</div>
							<button type="submit" class="btn">Register</button>
						</form>
					</div>
				</div>
				<!-- 비밀번호 찾기  -->
				<div id="tab2" class="tab_content" style="display: block;">
					<div class="tabcontent-block">
						<form action="findPassword.do" method="POST" id="this_form_two"
							onsubmit="return checkFormTwo()"class="hide_content" >
							<div class="input-container">
								<i class="fa fa-user icon"></i> <input class="input-field"
									type="text" placeholder="UserId" name="id" autocomplete="off">
							</div>
							<div class="input-container">
								<i class="fa fa-user icon"></i> <input class="input-field"
									type="text" placeholder="Username" name="name"
									autocomplete="off">
							</div>
							<div class="input-container">
								<i class="fa fa-envelope icon"></i> <input class="input-field"
									type="text" placeholder="Email" name="email" autocomplete="off"
									id="pass_email">
							</div>
							<button type="submit" class="btn" id="find_password">Register</button>
						</form>
					</div>
				</div>
			</div>
			<div class="tab_content"></div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/member/idpassFind.js"></script>
	<script>
		var loginErr = "${param.loginErr}";
	</script>
</body>
</html>