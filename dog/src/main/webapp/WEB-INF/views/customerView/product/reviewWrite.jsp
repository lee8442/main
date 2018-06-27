 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/reviewWrite.css">
</head>
<body>
	<center>
		<form id="insertReview" method="post" action="insertReview.do" name="insertReview"
			enctype="multipart/form-data" onsubmit="return formCheck();">
			<input type="hidden" name="board_id" value="${sessionScope.sessionID}"> 
			<br> <b><font size="6" color="black" class="review_font">상품평(상품후기)글쓰기</font></b> <br>
			<table class="this_table" >
				<tr class="this">
					<td id="title" class="thistd">작성자</td>
					<td class="thistd">${sessionScope.sessionID}</td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">제 목</td>
					<td class="thistd">
					<input name="subject" type="text" size="70" not_null="true" hg_nm="제목" nmaxlength="100" class="subject_input" >
					</td>
				</tr><tr class="this">
					<td id="title" class="thistd">상 품</td>
					<td class="thistd">
					<select name="product_code" class="product_code">
							<option>선택하세요</option>
							<c:forEach var="pp" items="${plist }" >
								<option value="${pp.code}" class="product">${pp.name}</option>
							</c:forEach>
					</select> 
					</td>
					
				</tr>
				<tr class="this">
					<td class="thistd">상품별점★</td>
					<td class="thistd">
						<div class="starRev">
						<span class="starR on" id="selectStar1" >별1</span> 
						<span class="starR" id="selectStar2">별2</span> 
						<span class="starR" id="selectStar3">별3</span> 
						<span class="starR" id="selectStar4">별4</span>
						<span class="starR" id="selectStar5">별5</span> 
						<input
								type="hidden" id="selectStar"  name="selectStar" value="1">
						</div>
					</td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">내 용</td>
					<td class="thistd">
					<textarea name="content" cols="45" rows="3"  style="resize: none;"class="area_content"></textarea>
					</td>
				</tr>
				<tr class="this">
					<td id="title" class="thistd">파일첨부</td>
					<td><input name="simple_explain" type="hidden" id="simple_explain">
					<input type="file" name="file" /></td>
				</tr>
				<tr align="center" valign="middle" class="this">
					<td colspan="5" class="thistd">
					<input type="button" value="전체목록" class="list" onclick="window.location='reviewAllBoardList.do' ">
					<input type="submit" value="저장" class="save" >
 					<input type="reset" value="취소" class="cancel" onclick="window.location='reviewAllBoardList.do' ">
					</td>
				</tr>
			</table>
		</form>
	</center>
	<script type="text/javascript" src="resources/js/product/reviewWrite.js"></script>
</body>
</html>















