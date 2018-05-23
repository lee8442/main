<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" name="insertMember" action="insertMember.do">
		id : <input type="text" name="id">
		name : <input type="text" name="name">
		password : <input type="text" name="password">
		registration : <input type="text" name="registration">
		address : <input type="text" name="address">
		email : <input type="text" name="email">
		phone : <input type="text" name="phone">
		point : <input type="text" name="point">
		<input type="submit" value="가입">
	</form>
</body>
</html>