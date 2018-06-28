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
	href="resources/css/product/reviewAllBoardList.css">
</head>
<body>
	<div id="container">
		<div id="contents">

			<div
				class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
				<div
					class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 location-board ">

					<div class="tit-board">
						<p class="img"></p>
						<h2>
							<font color="#555555" class="title">Review</font>
						</h2>
						<div class="bar">
							<a href="main.do" class="a1">홈</a> &nbsp;> <a
								href="productInquiryForm.do" class="a1">상품평목록</a>
						</div>
						<p class="info">상품 사용후기입니다.</p>
					</div>
				</div>
				${map.reviewcount}개의 상품평이 있습니다.
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
						<caption>상품 게시판 목록</caption>

						<thead
							class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
							<tr style="">
								<th scope="col">NO.</th>
								<th scope="col" class="thumb">IMAGE</th>
								<th scope="col">ID</th>
								<th scope="col" class="th_content">SUBJECT</th>
								<th scope="col" class="">DATE</th>
								<th scope="col" class="">VIEW</th>
								<th scope="col">★PRODUCT REVIEW★</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-notice-4 xans-board-notice xans-board-4 notice">
							<c:forEach var="ii" items="${pplist}">
								<c:choose>
									<c:when test="${ii.show == 'Y'}">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<td>${ii.num }</td>
											

											<td><c:if
													test="${not empty ii.image and ii.image != ''}">
													<img src="/file/${ii.image }" />
													<br><b class="b-n">[${ii.name }]</b>
												</c:if>
											</td>
											<td>${ii.member_id }</td>
											<td><a href="javascript:aaa(${ii.num })"
												class="a_subject">${ii.subject } </a></td>
											<td><fmt:formatDate value="${ii.product_review_date }"
													pattern="MM-dd HH:mm:ss" /></td>
											<td>${ii.view_count }</td>
											<td class="thistd">
											<div class="starRev">
											<c:choose>
												<c:when test="${ii.grade == 5 }">
														<span class="starR on" id="selectStar1" >별1</span> 
														<span class="starR on" id="selectStar2">별2</span> 
														<span class="starR on" id="selectStar3">별3</span> 
														<span class="starR on" id="selectStar4">별4</span> 
														<span class="starR on" id="selectStar5">별5</span> 
												</c:when>
												<c:when test="${ii.grade == 4 }">
														<span class="starR on" id="selectStar1">별1</span> 
														<span class="starR on" id="selectStar2">별2</span> 
														<span class="starR on" id="selectStar3">별3</span> 
														<span class="starR on" id="selectStar4">별4</span> 
														<span class="starR " id="selectStar5">별5</span> 
												</c:when>
												<c:when test="${ii.grade == 3 }">
														<span class="starR on" id="selectStar1">별1</span> 
														<span class="starR on" id="selectStar2">별2</span> 
														<span class="starR on" id="selectStar3">별3</span> 
														<span class="starR " id="selectStar4">별4</span> 
														<span class="starR " id="selectStar5">별5</span> 
												</c:when>
												<c:when test="${ii.grade == 2 }">
														<span class="starR on" id="selectStar1">별1</span> 
														<span class="starR on" id="selectStar2">별2</span> 
														<span class="starR " id="selectStar3">별3</span> 
														<span class="starR " id="selectStar4">별4</span> 
														<span class="starR " id="selectStar5">별5</span> 
												</c:when>
												<c:when test="${ii.grade == 1 }">
														<span class="starR on" id="selectStar1">별1</span> 
														<span class="starR " id="selectStar2">별2</span> 
														<span class="starR " id="selectStar3">별3</span> 
														<span class="starR " id="selectStar4">별4</span> 
														<span class="starR " id="selectStar5">별5</span> 
												</c:when>
												</c:choose>
												<input type="hidden" id="selectStar" value="1">
												</div>
												</td>
										</tr>

									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="10" align="center" class="delete_td">삭제된
												게시물 입니다</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div
					class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 boardListEmpty displaynone ">
					<p>
				</div>
				<div
					class="xans-element- xans-board xans-board-buttonlist-4 xans-board-buttonlist xans-board-4  ">
					<a href="reviewAllBoardList.do" class="btn Normal Wnormal_2 Dark ">전체목록
					</a> <a href="reviewWrite.do" class="btn Normal Wnormal Dark "> 쓰기
					</a>
				</div>
			</div>

			<table>
				<tr>
					<td align="center" colspan="10">
						<!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력--> <c:if
							test="${map.pager.curBlock > 1}">
							<a href="javascript:list('1')">[처음]</a>
						</c:if> <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 --> <c:if
							test="${map.pager.curBlock > 1}">
							<a href="javascript:list('${map.pager.prevPage}')">[이전]</a>
						</c:if> <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 --> <c:forEach var="num"
							begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
							<!-- **현재페이지이면 하이퍼링크 제거 -->
							<c:choose>
								<c:when test="${num == map.pager.curPage}">
									<span style="color: red">${num}</span>&nbsp;
                       						 </c:when>
								<c:otherwise>
									<a href="javascript:list('${num}')">${num}</a>&nbsp;
                     					   </c:otherwise>
							</c:choose>
						</c:forEach> <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
						<c:if test="${map.pager.curBlock <= map.pager.totBlock}">
							<a href="javascript:list('${map.pager.nextPage}')">[다음]</a>
						</c:if> <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 --> <c:if
							test="${map.pager.curPage <= map.pager.totPage}">
							<a href="javascript:list('${map.pager.totPage}')">[끝]</a>
						</c:if>
					</td>
				</tr>
			</table>
			<form id="boardSearchForm" name="" action="reviewAllBoardList.do"
				method="get" enctype="multipart/form-data">
				<input id="board_no" name="board_no" value="4" type="hidden">
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
							</select> <input id="search" name="keyword" type="text"> <input
								type="submit" value="검색" class="btn Small Light mL5">
						</p>
					</fieldset>
				</div>
			</form>
		</div>
	</div>
	<script>
		function list(page) {
			location.href = "reviewAllBoardList.do?curPage=" + page
					+ "&search_option=${map.search_option}"
					+ "&keyword=${map.keyword}";
		}
	</script>
	<script type="text/javascript"
		src="resources/js/product/reviewAllBoardList.js"></script>
</body>
</html>