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
	font-size: 14px;
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

.deletePassword {
	float: left;
	margin-top: 6px;
	margin-left: 6px;
	width: 245px;
}

.deleteClick {
	float: left;
	margin-top: 4px;
	margin-left: 10px;
}

#your_info>ul>li>p {
	float: left;
	margin-left: 106px;
}

#your_info>ul {
	float: left;
	width: 570px;
	padding: 17px 10px 17px 20px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="mySpace"></div>
	<div id="find_title">
		<h2>회원탈퇴</h2>
	</div>
	<div id="find_id_content">
		<div id="id_content">
			<div id="your_id">
				<div>
					<img src="resources/image/member/check.jpg" />
				</div>
				<p>
					그동안 #dog를 이용해주셔서 감사합니다. <br /> 항상 즐겁고 편리한 쇼핑을 위해 최선의 노력을 다하겠습니다.
				</p>
				<form action="deleteGo.do" method="post"
					onsubmit="return realDelete()">
					<div id="your_info">
						<ul>
							<li><p>비밀번호 :</p> <input class="deletePassword"
								type="password" id="password" name="password"
								onkeyup="passwordInput(this)" /><input class="deleteClick"
								type="submit" value="회원탈퇴" /><input type="hidden" name="id"
								value="${sessionScope.login.id }" /></li>
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		var falseMSG = "${param.falseMSG}";
	</script>
	<script type="text/javascript"
		src="resources/js/member/deleteMyProfile.js"></script>
</body>
</html>