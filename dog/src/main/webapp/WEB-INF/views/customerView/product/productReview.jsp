<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/productReView.css">
</head>
<body>
	<center>
		<form id="boardForm" method="post" action="" name="boardForm"
			enctype="multipart/form-data" onsubmit="return formCheck();">
			<input type="hidden" name="board_id"
				value="${sessionScope.sessionID}"> <br> <b><font
				size="6" color="black">상품평(상품후기)글쓰기</font></b> <br>
			<table class="this" width="700" border="3" bordercolor="lightgray"
				align="center">
				<tr class="this">
					<td id="title" class="thistd">작성자</td>
					<td class="thistd">${sessionScope.sessionID}</td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">제 목</td>
					<td class="thistd"><input name="board_subject" type="text"
						size="70" maxlength="100" value="" placeholder="제목을 입력해주세요.">
					</td>
				</tr>
				<tr class="this">
					<td class="thistd">평점</td>
					<td class="thistd">
						<div class="starRev">
							<span class="starR on" id="selectStar1">별1</span> <span
								class="starR" id="selectStar2">별2</span> <span class="starR"
								id="selectStar3">별3</span> <span class="starR" id="selectStar4">별4</span>
							<span class="starR" id="selectStar5">별5</span> <input
								type="hidden" id="selectStar" value="1">
						</div>
					</td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">내 용</td>
					<td class="thistd"><textarea name="board_content" cols="72"
							rows="20" placeholder="내용을 입력해주세요."></textarea></td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">파일첨부</td>
					<td class="thistd"><input type="file" name="board_file" /></td>
				</tr>
				<tr class="this">
					<td class="thistd">비밀번호</td>
					<td class="thistd"><input type="password" name="pass" /></td>
				</tr>
				<tr align="center" valign="middle" class="this">
					<td colspan="5" class="thistd"><input type="reset"
						value="작성취소"> <input type="submit" value="등록"> <input
						type="button" value="목록"></td>
				</tr>
			</table>
		</form>
	</center>
	<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="resources/js/member/productReView.js"></script>
</body>
</html>