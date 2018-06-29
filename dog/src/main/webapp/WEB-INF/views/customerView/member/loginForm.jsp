<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/member/loginForm.css">
<title>로그인</title>
</head>
<body class="body">
	<center>
		<div class="body-all">
			<div class="text">
				<h2># DOG에 오셔서 감사드립니다</h2>
				<h4>오늘도 즐거운 쇼핑 되세요!!</h4>
			</div>
			<div class="content">
				<div class="content-list">
					<br>
					<div class="login-content">
						<form method="post" action="login.do" name="loginform"
							onsubmit="return loginCheck()">
							<div class="btn-login">
								<input id="login" class="login_btn" type="submit" value="로그인">
							</div>
							<div class="text-login-id">
								<b class="id_b">아이디</b>&nbsp; <input class="id_login" id="id"
									name="id" type="text" placeholder="아이디를 입력해주세요">
							</div>
							<br />
							<div class="text-login-pass">
								<b class="pass_b">비밀번호</b>&nbsp; <input id="pass"
									class="pass_login" name="password" type="password"
									placeholder="비밀번호를 입력해주세요">
							</div>
							<div class="tabBlock">
								<ul class="tab-list">
									<li><input class="checkbox" width="10" height="10"
										type="checkbox"> <label for="saveid">아이디 저장</label> <a
										href="insertMember.do" class="" id="">&nbsp;|&nbsp;회원가입</a> <a
										href="idpassFind.do" class="" id="">아이디찾기/비밀번호찾기</a></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</center>
	<script>
		var loginErr = "${param.loginErr}";
	</script>
	<script type="text/javascript" src="resources/js/member/loginForm.js"></script>
</body>
</html>