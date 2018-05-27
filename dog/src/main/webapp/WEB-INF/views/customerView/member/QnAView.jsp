<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
<center>
<form id="QnA_board"method="post" action="" name="QnA_board" enctype="multipart/form-data" onsubmit="return QnAformCheck();">
    <input type="hidden" name="board_id" value="${sessionScope.sessionID}">
    <br>
    <b><font size="6" color="black">상품문의</font></b>
    <br>
    <table border="3" bordercolor="lightgray" align="center" class="this">
	<tr class="this">
		<td class="thistd">아이디</td>
		<td class="thistd">${sessionScope.sessionID }</td>
	</tr>
	<tr class="this">
		<td class="thistd">질문유형</td>
		<td class="thistd"><input type="text" name="question" placeholder="내용을 입력해주세요."/></td>
	</tr>
	<tr class="this">
		<td class="thistd">이메일</td>
		<td class="thistd"><input type="text" name="email" placeholder="이메일을 입력해주세요."/></td>
	</tr>
	<tr class="this">
		<td class="thistd">제목</td>
		<td class="thistd"><input type="text" name="title" placeholder="제목을 입력해주세요."/></td>
	</tr>
	<tr class="this">
		<td class="thistd">내용</td> 
		<td class="thistd"><textarea name="QnA_content" cols="100" rows="30" placeholder="내용을 입력해주세요."></textarea></td>
	</tr>
	<tr class="this">
		<td class="thistd">비밀번호</td>
		<td class="thistd"><input type="password" name="pass"/></td>
	</tr>
	<tr valign="middle" class="this">
                <td colspan="5" scope="row" class="thistd">
                <input type="reset" value="작성취소" >
                <input type="submit" value="등록" >
                <input type="button" value="목록" >
                </td>
   </tr>            
</table>
</form>
</center>
</body>
</html>