<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#find_title {
	min-height: 40px;
	position: absolute;
	left: 385px;
}

#find_title>h2 {
	display: inline-block;
	color: #2e2e2e;
	font-size: 16px;
	font-weight: bold;
	text-transform: uppercase;
}

#mySpace {
	width: 100%;
	height: 215px;
}

#find_id_content {
	width: 1900px;
	height: 600px;
	display: -webkit-box;
}

#id_content {
	margin: auto;
	width: 900px;
	height: 450px;
	margin-top: 45px;
}

#your_id>div>img {
	width: 300px;
	height: 200px;
}

#your_id {
	width: 650px;
	margin: auto;
	height: 448px;
	text-align: center;
}

#your_id>p {
	font-size: 13px;
	color: #333;
	font-weight: bold;
}

#your_info {
	overflow: hidden;
	border: 1px solid #e7e7e7;
	font-size: 20px;
	text-align: right;
	margin-top: 25px;
}

#your_info>ul {
	float: left;
	width: 330px;
	padding: 17px 10px 17px 20px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:set var="myId" value="${myId }" />
	<div id="mySpace"></div>
	<div id="find_title">
		<h2>Find Password</h2>
	</div>
	<div id="find_id_content">
		<div id="id_content">
			<div id="your_id">
				<div>
					<img src="resources/image/member/check.jpg" />
				</div>
				<p>
					고객님의 비밀번호 찾기가 성공적으로 이루어졌습니다. <br /> 고객님의 비밀번호를 해당 email주소로 임시비밀번호를
					보내드렸습니다. 비밀번호를 변경하여 사용해주세요. <br/> <a href="login.do" class="link">로그인하러가기</a>
				</p>
			</div>
		</div>
	</div>
	<script>
		$(".link").hover(function() {
			$(this).css("color", "blue");
		}, function() {
			$(this).css("color", "black");
		});
	</script>
</body>
</html>