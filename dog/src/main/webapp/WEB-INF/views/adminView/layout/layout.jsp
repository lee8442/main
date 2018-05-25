<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>#dog</title>
<!-- <link rel="stylesheet" href="resources/css/main/css.css"> -->
</head>
<body>
	<div class="header">
		<t:insertAttribute name="header" />
	</div>
	<div class="content">
		<t:insertAttribute name="content" />
	</div>
	<div class="footer">
		<t:insertAttribute name="footer" />
	</div>
	<script type="text/javascript" src="resources/js/jquery/jquery-3.3.1.min.js"></script>
</body>
</html>