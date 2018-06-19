<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href=" resources/css/product/inquiryWrite.css">
<link rel="stylesheet" href=" resources/css/product/inquiryDetail.css">
</head>
<body>
	<center>
		<form id="inquiryWrite" method="post" name="inquiryWrite">
			<input type="hidden" name="member_id"
				value="${sessionScope.sessionID}"> <input type="hidden"
				name="num" id="num" value="${ivo.num}"> <br>
			<div class="bar">
				<a href="main.do" class="a1">홈</a> &nbsp;> <a
					href="productInquiry.do" class="a2">1:1상품문의목록</a>
			</div>
			<br> <b><font size="6" color="black">1:1상품문의 </font></b> <br>
			<table border="3" bordercolor="lightgray" align="center" class="this" id="inquiryWrite">
				<tr class="this">
					<td class="thistd">NO</td>
					<td class="thistd">${ivo.num }</td>
				</tr>
				<tr class="this">
					<td class="thistd">VIEW</td>
					<td class="thistd">${ivo.viewcount }</td>
				</tr>
				<tr class="this">
					<td class="thistd">질문유형</td>
					<td class="thistd">${ivo.name }</td>
				</tr>
				<tr class="this">
					<td class="thistd">이미지</td>
					<td class="thistd"><img class="image"
						src="/file/${ivo.image }" /></td>
				</tr>
				<tr class="this">
					<td class="thistd">제목</td>
					<td class="thistd">${ivo.subject }
               </td>
				</tr>
				<tr class="this">
					<td class="th">내용</td>
					<td class="thistd">
					<div style="resize: none;" name="content" class="contents" cols="80" rows="30">${ivo.content }</div></td>					
				</tr>
				<tr class="this">
					<td class="th">댓글목록</td>
					<td class="thistd">
					<div style="resize: none;" id="listReply" class="replycontent" cols="80" rows="30"></div></td>					
				</tr>
					<tr class="this"> 
					<td class="thistd">날짜</td>
					<td class="thistd">
					<fmt:formatDate value="${ivo.inquiry_date }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr class="this">
					<td class="thistd">비밀번호</td>
					<td class="thistd"><input type="password" name="password"
						id="password" /></td>
				</tr>
				<tr class="this">
			<%-- <c:if test="${sessionScope.userId != null}">--%>
					<td class="thistd">댓글</td>
					<td class="thistd">
					
					<textarea style="resize: none;"  rows="3"  cols="79"   id="replytext"></textarea>
					
					<input type="button" id="insertReply" class="reply"value="댓글작성" /> </td>
				<%--</c:if>--%>
				</tr>
				<tr valign="middle" class="this">
					<td colspan="5" scope="row" class="thistd">
					<a onclick="updateCheck()"><input type="button" value="수정" ></a> 
					<a onclick="deleteCheck()"><input type="button" value="삭제"></a> 
					<input type="reset" value="취소" onclick="window.location='productInquiry.do' "></td>
				</tr>
			</table>
		</form>
	</center>
	<script>
		
			//댓글쓰기 버튼 클릭 이벤트 
		$('#insertReply').click(function(){
				var replytext = $("#replytext").val();		
				var num = ${ivo.num};
				var param='&num='+num+'&replytext='+ replytext;
				$.ajax({
					type: "post",
					url: "insert.do",
					data:param,
					success:function(){
						alert("ok");
						listReply(1);
					}
				});
			});
		listReply();
		function listReply(num){
	        $.ajax({
	            type: "get",
	            url: "list.do?num=${ivo.num}",
	            success: function(result){
	            	var text='';
					 $.each(result , function(i){
	            		text+=result[i].replytext+'<br>';
          	           });	
	            // responseText가 result에 저장됨.
	                $("#listReply").html(text);
	            }
	        });
	    }
	
	</script>
	<script type="text/javascript"
		src="resources/js/product/inquiryDetail.js"></script>
</body>
</html>