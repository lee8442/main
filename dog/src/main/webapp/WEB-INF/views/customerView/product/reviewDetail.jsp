<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/reviewDetail.css">
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
						<p class="info">상품 사용후기입니다.</p>
					</div>
				</div>
				${map.count}개의 상품평이 있습니다.
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
						<div>
							<b class="b_product_review">[상품별점]</b>
						</div>
						</br>
						<c:forEach var="ii" items="${pplist}">
							<div class="starRev">
								<c:choose>
									<c:when test="${ii.grade == 5 }">
										<span class="starR on" id="selectStar1">별1</span>
										<span class="starR on" id="selectStar2">별2</span>
										<span class="starR on" id="selectStar3">별3</span>
										<span class="starR on" id="selectStar4">별4</span>
										<span class="starR on" id="selectStar5">별5</span>
										<b>10.0점</b>
									</c:when>
									<c:when test="${ii.grade == 4 }">
										<b class="b_star">9.0점</b>
										<span class="starR on" id="selectStar1">별1</span>
										<span class="starR on" id="selectStar2">별2</span>
										<span class="starR on" id="selectStar3">별3</span>
										<span class="starR on" id="selectStar4">별4</span>
										<span class="starR " id="selectStar5">별5</span>
									</c:when>
									<c:when test="${ii.grade == 3 }">
										<b class="b_star">7.0점</b>
										<span class="starR on" id="selectStar1">별1</span>
										<span class="starR on" id="selectStar2">별2</span>
										<span class="starR on" id="selectStar3">별3</span>
										<span class="starR " id="selectStar4">별4</span>
										<span class="starR " id="selectStar5">별5</span>
									</c:when>
									<c:when test="${ii.grade == 2 }">
										<b class="b_star">5.0점</b>
										<span class="starR on" id="selectStar1">별1</span>
										<span class="starR on" id="selectStar2">별2</span>
										<span class="starR " id="selectStar3">별3</span>
										<span class="starR " id="selectStar4">별4</span>
										<span class="starR " id="selectStar5">별5</span>
									</c:when>
									<c:when test="${ii.grade == 1 }">
										<b class="b_star">3.0점</b>
										<span class="starR on" id="selectStar1">별1</span>
										<span class="starR " id="selectStar2">별2</span>
										<span class="starR " id="selectStar3">별3</span>
										<span class="starR " id="selectStar4">별4</span>
										<span class="starR " id="selectStar5">별5</span>
									</c:when>
								</c:choose>
								<input type="hidden" id="selectStar" value="1">
							</div>
						</c:forEach>
						<br>
						<thead
							class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
							<tr style="" class="tr">
								<th scope="col">NO</th>
								<th scope="col" class="thumb">IMAGE</th>
								<th scope="col">SUBJECT</th>
								<th scope="col" class="th_content">CONTENT</th>
								<th scope="col" class="">ID</th>
								<th scope="col" class="">VIEW</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-notice-4 xans-board-notice xans-board-4 notice">
							<c:forEach var="ii" items="${pplist}">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>${ii.num }</td>
									<td><c:if test="${not empty ii.image and ii.image != ''}">
											<img src="/file/${ii.image }" />
										</c:if><br>
										<b class="b-p">판매가격 : <fmt:formatNumber value="${ii.price}" pattern="#,###"/>원</b>
										<br></br>
										<b class="b-s">상품설명 : [${ii.simple_explain}]</b>
										</td>
									<td>${ii.subject}</td>
									<td class="td_content">${ii.content}</td>
									<td>${ii.member_id }</td>
									<td>${ii.view_count }</td>
									<td style="display: none;">${ii.password}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				
				<form action="deleteReview.do" id="form1" method="post">
					<%--<c:if test="${sessionScope.member_id != null}">--%>
					<div>
						<c:forEach var="ii" items="${pplist}">
							<input type="hidden" name="num" value="${ii.num }">
							<input type="hidden" name="simple_explain" value="${simple_explain }">
						</c:forEach>
					</div>
					<input type="submit" value="삭제" class="delete" id="btnDelete">
					<%-- </c:if> --%>
					<div class="input_box">
						<input type="button" value="전체목록" class="list"
							onclick="window.location='reviewAllBoardList.do' ">
					</div>
				</form>
			</div>
		</div>

		<div
			class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 boardListEmpty displaynone ">
			<p>
		</div>
	</div>
	</div>
	<div align="center" valign="middle" class="this"></div>
	<script type="text/javascript"
		src="resources/js/product/reviewDetail.js"></script>
</body>
</html>