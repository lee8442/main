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
			<input type="hidden" name="member_id" value="${sessionScope.login}">
			<input type="hidden" name="num" id="num" value="${ivo.num}">
			<br>
			<div class="bar">
				<a href="main.do" class="a1">홈</a> &nbsp;> <a
					href="productInquiryForm.do" class="a2">1:1상품문의목록</a>
			</div>
			<c:if test="${sessionScope.adminLogin != null}">
				<div>
					<b class="b-admin">게시판 관리 [관리자]</b>
				</div>
			</c:if>
			<br> <b><font size="6" color="black">1:1상품문의 </font></b> <br>
			<table border="3" bordercolor="lightgray" align="center" class="this"
				id="inquiryWrite">
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
					<td class="thistd">제목</td>
					<td class="thistd">${ivo.subject }</td>
				</tr>
				<tr class="this">
					<td class="th">내용</td>
					<td class="thistd">
						<div style="resize: none;" name="content" class="contents"
							cols="80" rows="30" class="ckeditor">${ivo.content }</div>
					</td>
				</tr>

				<tr class="this">
					<td class="th"><b class="b_admin">관리자</b></td>
					<td class="thistd">
						<div style="resize: none;" id="listReply" class="replycontent"
							cols="80" rows="30"></div>
					</td>
				</tr>

				<tr class="this">
					<td class="thistd">날짜</td>
					<td class="thistd"><fmt:formatDate
							value="${ivo.inquiry_date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>




				<c:if test="${sessionScope.adminLogin != null}">
					<tr class="this">
						<td class="thistd">댓글</td>
					    <td class="thistd">
							<textarea style="resize: none;" rows="2" cols="79" id="replytext" class="replytext" ></textarea>
								<input type="button" id="insertReply" class="reply" value="댓글작성" />
					   </td>
				</c:if>
				<tr class="this">
					<td class="thistd">비밀번호</td>
					<td class="thistd"><input type="password" name="password"
						id="password" /></td>
				</tr>
				<tr valign="middle" class="this">
					<td colspan="5" scope="row" class="thistd">
					<a onclick="updateCheck()"><input type="button" value="수정"  class="btn_b"></a>
				    	<c:if test="${sessionScope.adminLogin != null}">
						<a onclick="deleteCheck()"><input type="button" value="삭제"></a>
						</c:if> 	
						
					
			</table>
			
				<input type="button" value="전체목록"
				onclick="window.location='productInquiryForm.do' " class="btn_list">
			
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
	<script type="text/javascript" src="resources/js/ckeditor/ckeditor.js"></script>
</body>
</html>