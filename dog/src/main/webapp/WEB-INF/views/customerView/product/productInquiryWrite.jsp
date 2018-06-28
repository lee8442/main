<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href=" resources/css/product/inquiryWrite.css">
</head>
<body>
	<div>
		<form id="inquiryWrite" method="post" action="insertInquiryBoard.do"
			name="inquiryWrite" enctype="multipart/form-data" class="updateForm">
			<input type="hidden" name="member_id"
				value=""><br/>
			<div class="bar">
				<a href="main.do" class="a1">홈</a> &nbsp;> <a
					href="productInquiryForm.do" class="a2">1:1상품문의목록</a>
			</div>
			<br> <b><font size="6" color="black" class="updateFont">1:1상품문의쓰기</font></b> <br>
			<table border="3" bordercolor="lightgray" align="center" class="this">
				<tr class="this">
					<td class="thistd">이름</td>
					<td class="thistd">${sessionScope.login.name}</td>
				</tr>
				<tr class="this">
					<td class="thistd">질문유형</td>
					<td class="thistd"><select name="type_code" onchange="aaa()"
						class="type_code">
							<option>선택하세요</option>
							<c:forEach var="qq" items="${QuestionCategory }">
								<option value="${qq.code }">${qq.name }</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr class="this">
					<td class="thistd">제목</td>
					<td class="thistd"><input type="text" name="subject" /></td>
				</tr>
				<tr class="this">
					<td class="th">내용</td>
					<td class="thistd"><textarea style="resize: none;"
							name="content" cols="80" rows="30" id="content" required></textarea>
					<script type="text/javascript">
							window.onload=function(){
								CKEDITOR.replace('content',{
									filebrowserUploadUrl : "imageUpload.do"
								});
							};
							</script> </td>
				</tr>
				<tr class="this">
					<td class="thistd">비밀번호</td>
					<td class="thistd"><input type="password" name="password" /></td>
				</tr>
				<tr valign="middle" class="this">
					<td colspan="5" scope="row" class="thistd">
					<input type="submit" value="저장" class="save"> 
						<input type="button" value="취소" class="cancel" onclick="window.location='productInquiryForm.do' ">
						<input type="button" value="전체목록" class="list" onclick="window.location='productInquiryForm.do' "/>
						</td>
				</tr>
			</table>
		</form>
	</div>
	<script>
	
	</script>
	<script type="text/javascript" src="resources/js/ckeditor/ckeditor.js"></script>
	<script type="text/javascript"
		src="resources/js/product/inquiryWrite.js"></script>
</body>
</html>