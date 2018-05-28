<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>#dog</title>
<link rel="stylesheet" href="resources/css/main/reset.css">
<script type="text/javascript"
	src="resources/js/jquery/jquery-3.3.1.min.js"></script>
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
</body>
</html>