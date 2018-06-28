<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href=" resources/css/product/inquiryWrite.css">
<link rel="stylesheet" href=" resources/css/product/inquiryDetail.css">
</head>
<body>
	<center>
		<form id="update " method="post" name="update" 
		action="updateInquiry.do" enctype="multipart/form-data"  onsubmit="return check()">
			<input type="hidden" name="member_id" 
				value="${sessionScope.sessionID}"> <input type="hidden"
				name="num" id="num" value="${uvo.num}"> <br>
			<div class="bar">
				<a href="main.do" class="a1">홈</a> &nbsp;> <a
					href="productInquiryForm.do" class="a2">1:1상품문의목록</a>
			</div>
			<br> <b><font size="6" color="black">1:1상품문의<br><b>-수정-</b> </font></b> <br>
			<table border="3" bordercolor="lightgray" align="center" class="this" id="inquiryWrite">
				<tr class="this">
					<td class="thistd">NO</td>
					<td class="thistd">${uvo.num }</td>
				</tr>
				<tr class="this">
					<td class="thistd">VIEW</td>
					<td class="thistd">${uvo.viewcount }</td>
				</tr>
				<tr class="this">
					<td class="thistd">질문유형</td>
					<td class="thistd">
					<select name="type_code" onchange="aaa()" class="type_code">
			<option>선택하세요</option>
			<c:forEach var="qq" items="${QuestionCategory }">
				<option value="${qq.code }">${qq.name }</option>
			</c:forEach>
		</select></td>
				</tr>
				<tr class="this">
					<td class="thistd">제목</td>
					<td class="thistd"><input type="text" name="subject" value="${uvo.subject }"/></td>
				</tr>
				<tr class="this">
					<td class="th">내용</td>
					<td class="thistd">
					<textarea style="resize: none;" name="content"  class="ckeditor"  cols="80" rows="30">${uvo.content }</textarea></td>
				</tr>
				<tr class="this">
					<td class="thistd">날짜</td>
					<td class="thistd">
					<fmt:formatDate value="${uvo.inquiry_date }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr valign="middle" class="this">
					<td colspan="5" scope="row" class="thistd">
					<input type="submit" value="저장" class="save" onclick="update()">
					<input type="reset" value="취소" onclick="window.location='productInquiryForm.do' "></td>
				</tr>
			</table>
		</form>
	</center>
	<script >
	function update(){
		var form = document.getElementById("update");
	    
	    form.action = "<c:url value='updateInquiry.do'/>";
	    form.submit();
	}
	</script>
	<script type="text/javascript"
		src="resources/js/product/inquiryWrite.js"></script>
			<script type="text/javascript" src="resources/js/ckeditor/ckeditor.js"></script>	
</body>
</html>