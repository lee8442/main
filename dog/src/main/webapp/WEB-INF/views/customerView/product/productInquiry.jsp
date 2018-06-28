<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="resources/css/product/inquiryAllBoardList.css">
</head>
<body>
	<div id="container">
		<div id="contents">

			<div
				class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
				<div
					class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 location-board ">

					<div class="tit-board">
						<div class="bar">
							<a href="main.do" class="a1">홈</a> &nbsp;> <a
								href="productInquiryForm.do" class="a1">1:1상품문의목록</a>
						</div>
						<p class="img"></p>
						<h2>
							<font color="#555555" > Q &amp; A</font>
						</h2>
						<p class="info">1 : 1 상품문의입니다.</p>
					</div>
				</div>
				${map.count}개의 게시물이 있습니다.
				
				<c:if test="${sessionScope.adminLogin != null}">
				<b class="admin-mode">[관리자모드]</b>
				</c:if>
				<!-- 카테고리 -->
				<div class="sec-sort">
					<div class="boardSort">
						<span
							class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
					</div>
				</div>
				<div class="boardList">
					<table width="100%" border="1" summary="">
						<thead
							class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
							<tr style="">
								<th scope="col">NO.</th>
								<th scope="col" width="150px">IMAGE</th>
								<th scope="col">ID</th>
								<th scope="col" width="190px">INQUIRYTITLE</th>
								<th scope="col" colspan="4">SUBJECT</th>
								<th scope="col">DATE</th>
								<th scope="col">VIEW</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4">
							<c:forEach var="ii" items="${list}">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>${ii.num }</td>
											<td><c:if
													test="${not empty ii.image and ii.image != ''}">
													<img src="/file/${ii.image }" />
												</c:if></td>
											<td>${ii.member_id }</td>
											<td>${ii.name }</td>
											<td colspan="4"><c:if test="${ii.recount > 0}">
													<span style="color: red;" class="replyend">[답변완료]</span>
												</c:if> <a href="javascript:aaa(${ii.num })" class="a_subject">${ii.subject }
													<!-- ** 댓글이 있으면 게시글 이름 옆에 출력하기 --> <c:if
														test="${ii.recount > 0}">
														<span style="color: red;">(${ii.recount}) </span>
													</c:if>
											</a></td>
											<td><fmt:formatDate value="${ii.inquiry_date }"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td>${ii.viewcount }</td>
										</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
					<div align="center" colspan="10">
								<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
									test="${map.pager.curBlock > 1}">
									<a href="javascript:list('1')">[처음]</a>
								</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.pager.curBlock > 1}">
									<a href="javascript:list('${map.pager.prevPage}')">[이전]</a>
								</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach var="num"
									begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
									<!-- **현재페이지이면 하이퍼링크 제거 -->
									<c:choose>
										<c:when test="${num == map.pager.curPage}">
											<span style="color: red" class="span">${num}</span>
                       						 </c:when>
										<c:otherwise>
											<a href="javascript:list('${num}')">${num}</a>
                     					   </c:otherwise>
									</c:choose>
								</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.pager.curBlock <= map.pager.totBlock}">
									<a href="javascript:list('${map.pager.nextPage}')">[다음]</a>
								</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.pager.curPage <= map.pager.totPage}">
									<a href="javascript:list('${map.pager.totPage}')">[끝]</a>
								</c:if>
							</div>
		</div>
		<form id="boardSearchForm" action="productInquiryForm.do"
			enctype="multipart/form-data">
			<input id="board_no" name="board_no" value="6" type="hidden">
			<input id="page" name="page" value="1" type="hidden"> <input
				id="board_sort" name="board_sort" value="" type="hidden">
			<div
				class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 ">
				<fieldset class="boardSearch">
					<legend>게시물 검색</legend>
					<p class="category displaynone"></p>
					<p>
						<select id="searchOption" name="searchOption">
							<option value="subject"
								<c:out value="${map.searchOption == 'subject'?'selected':''}"/>>제목</option>
							<option value="content"
								<c:out value="${map.searchOption == 'content'?'selected':''}"/>>내용</option>
							<option value="member_id"
								<c:out value="${map.searchOption == 'member_id'?'selected':''}"/>>아이디</option>
						</select>
						<input name="keyword" class="inputTypeText" type="text">
						<input type="submit" value="검색" class="btn Small Light mL5">
						<a href="productInquiryForm.do" class="btn Normal Wnormal_2 Dark ">전체목록</a>
						<a href="productInquiryWrite.do" class="btn Normal Wnormal Dark ">쓰기</a>
					</p>
				</fieldset>
			</div>
		</form>
	</div>
	<script>
	  function list(page){
	        location.href="productInquiryForm.do?curPage="+page
	        +"&search_option=${map.search_option}" 
	        +"&keyword=${map.keyword}";
	    }
	</script>
	<script type="text/javascript"
		src="resources/js/product/inquiryAllBoardList.js"></script>
	<script type="text/javascript" src="resources/js/ckeditor/ckeditor.js"></script>
</body>
</html>