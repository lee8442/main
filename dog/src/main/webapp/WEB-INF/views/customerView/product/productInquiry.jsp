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
								href="productInquiry.do" class="a1">1:1상품문의목록</a>
						</div>
						<p class="img"></p>
						<h2>
							<font color="333333"> Q &amp; A</font>
						</h2>
						<p class="info">1 : 1 상품문의입니다.</p>
					</div>
				</div>

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
						<colgroup
							class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
							<col style="width: 70px;">
							<col style="width: 77px;">
							<col style="width: 135px;" class="displaynone">
							<col style="width: auto;">
							<col style="width: 105px;">
							<col style="width: 80px;" class="">
							<col style="width: 53px;" class="">
							<col style="width: 53px;" class="displaynone">
							<col style="width: 78px;" class="displaynone">
						</colgroup>
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
							<c:forEach var="ii" items="${selectInquiry}">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>${ii.num }</td>
									<td><c:if test="${not empty ii.image and ii.image != ''}">
											<img src="/file/${ii.image }" />
										</c:if></td>
									<td>${ii.member_id }</td>
									<td>${ii.name }</td>
									<td colspan="4"><a href="javascript:aaa(${ii.num })">${ii.subject }
											<!-- ** 댓글이 있으면 게시글 이름 옆에 출력하기 --> 
											<c:if test="${ii.recnt > 0}">
												<span style="color: red;">(${ii.recnt}) </span>
											</c:if>
									</a></td>
									<td><fmt:formatDate value="${ii.inquiry_date }"
											pattern="yyyy-MM-dd" /></td>
									<td>${ii.viewcount }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
				<c:forEach var="row" items="${map.rlist}">
					<tr>
						<td>${row.bno}</td>
						<!-- 게시글 상세보기 페이지로 이동시 게시글 목록페이지에 있는 검색조건, 키워드, 현재페이지 값을 유지하기 위해 -->
						<td></td>
						<td>${row.userName}</td>
						<td>
							<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
								value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>${row.viewcnt}</td>
					</tr>
				</c:forEach>
			</div>
			<c:forEach var="row" items="${map.rlist}">
					<tr>
						<td>${row.bno}</td>
						<!-- 게시글 상세보기 페이지로 이동시 게시글 목록페이지에 있는 검색조건, 키워드, 현재페이지 값을 유지하기 위해 -->
						<td></td>
						<td>${row.userName}</td>
						<td>
							<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
								value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>${row.viewcnt}</td>
					</tr>
				</c:forEach>
				   <tr>
            <td colspan="5">
                <!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:blist('1')">[처음]</a>
                </c:if>
                
                <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:blist('${map.boardPager.prevPage}')">[이전]</a>
                </c:if>
                
                <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
                <c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
                    <!-- **현재페이지이면 하이퍼링크 제거 -->
                    <c:choose>
                        <c:when test="${num == map.boardPager.curPage}">
                            <span style="color: red">${num}</span>&nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:blist('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                
                <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
                    <a href="javascript:blist('${map.boardPager.nextPage}')">[다음]</a>
                </c:if>
                
                <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
                    <a href="javascript:blist('${map.boardPager.totPage}')">[끝]</a>
                </c:if>
            </td>
        </tr>
			</div>
			<form id="boardSearchForm" name="" action="/board/product/list.html"
				method="get" enctype="multipart/form-data">
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
								<option>검색</option>
								<c:forEach var="ss" items="${InquiryCategory }">
									<option value="${ss.code }">${ss.name }</option>
								</c:forEach>
							</select> <input id="search" name="search" class="inputTypeText"
								type="text"> <a onclick="bbb()"
								class="btn Small Light mL5"> 검색 </a> <a
								href="productInquiryWrite.do" class="btn Normal Wnormal Dark ">쓰기
							</a>
						</p>
					</fieldset>
				</div>
			</form>
		</div>
	
	<script type="text/javascript"
		src="resources/js/product/inquiryAllBoardList.js"></script>
</body>
</html>