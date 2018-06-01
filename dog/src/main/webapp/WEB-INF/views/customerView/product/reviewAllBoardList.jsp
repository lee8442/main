<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<font color="#555555">Review</font>
						</h2>
						<p class="info">상품 사용후기입니다.</p>
					</div>
				</div>
				<!--
		<!-- 메뉴1 -->
				<ul id="board-nav1" class="board-nav-style1" style="display: none">
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
				</ul>
				<!-- 메뉴2 -->
				<ul id="board-nav2" class="board-nav-style1" style="display: none">
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
					<li><a
						href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
				</ul>

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
								<th scope="col" class="thumb">PRODUCT</th>
								<th scope="col" class="displaynone">CATEGORY</th>
								<th scope="col">SUBJECT</th>
								<th scope="col">NAME</th>
								<th scope="col" class="">DATE</th>
								<th scope="col" class="">VIEW</th>
								<th scope="col" class="displaynone">LIKE</th>
								<th scope="col" class="displaynone">RATE</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-notice-4 xans-board-notice xans-board-4 notice">
						</tbody>
					</table>
				</div>
				<div
					class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 boardListEmpty displaynone ">
					<p></p>
				</div>
				<div
					class="xans-element- xans-board xans-board-buttonlist-4 xans-board-buttonlist xans-board-4  ">
					<a href="reviewWrite.do"
						class="btn Normal Wnormal Dark "> 쓰기 </a>
				</div>
			</div>

			<div
				class="xans-element- xans-board xans-board-paging-4 xans-board-paging xans-board-4 df-base-paging">

			</div>

			<form id="boardSearchForm" name="" action="/board/product/list.html"
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
						<select id="search_key" name="search_key" >
								<option value="subject">제목</option>
								<option value="content">내용</option>
								<option value="writer_name">글쓴이</option>
								<option value="member_id">아이디</option>
								<option value="nick_name">별명</option>
								<option value="product">상품정보</option>
							</select> <input id="search" name="search" fw-filter="" fw-label=""
								fw-msg="" class="inputTypeText" placeholder="" value=""
								type="text"><a href="#none"
								onclick="BOARD.form_submit('boardSearchForm');"
								class="btn Small Light mL5"> 검색 </a>
						</p>
					</fieldset>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/js/product/reviewAllBoardList.js"></script>
</body>
</html>