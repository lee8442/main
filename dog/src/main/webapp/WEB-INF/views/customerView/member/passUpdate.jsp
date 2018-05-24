<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/passUpdate.css">
<title>Insert title here</title>
</head>
<body class="body">
	
	<form>
	<div class="body-all">
		<div class="bar">
			<a href="#" class="a1">홈</a>
			&nbsp;>
			<a href="login.jsp" class="a2">로그인</a>
			&nbsp;>
			<a href="idSearch.jsp" class="a2">아이디/비밀번호찾기</a>
			&nbsp;>
			<a href="#" class="a2">비밀번호 재설정</a>
			<a href="#" class="a3">#DOG</a>
		</div>
		
		<div class="body-list">

			<div class="text">
				<h1>비밀번호재설정</h1>
			</div>
			<div class="tab-list-pass">
			<div class="tab-list-btn">
				<ul class="tab-list-btn-ul">
					<li><input class="btn-save" type="submit" value="저장"></li>
					<li><input class="btn-cancel" type="button" value="취소"></li>
				</ul>
			</div>
				<ul class="tab-list-pass-ul">
				
					<li><b>아이디</b><input class="pass-input-id" type="text" disabled="disabled" ></li>
					<li class="pass-li"><b>비밀번호</b><input  type="password" class="pass-input" ></li>
					<li class="repass-li"><b>비밀번호 확인</b><input type="password" class="repass-input">
					<input class="pass-btn" type="button" value="확인"></li>
				</ul>
			</div> 
			
		</div>	
	</div>

	</form>
	
</body>
</html>