<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layout/header.css">
<script type="text/javascript" src="resources/js/jquery/jquery-3.3.1.min.js"></script>
</head>
<body>
	<header id="header"> </header>
	<div id="visual">
		<img class="mySlides" src="resources/image/main/img1.png"
			style="width: 100%; height: 300px; z-index: -1000;"> <img
			class="mySlides" src="resources/image/main/img2.png"
			style="width: 100%; height: 300px; z-index: -1000;"> <img
			class="mySlides" src="resources/image/main/img3.png"
			style="width: 100%; height: 300px; z-index: -1000;"> <img
			class="mySlides" src="resources/image/main/img5.png"
			style="width: 100%; height: 300px; z-index: -1000;">
		<nav id="nav" class="cf">
			<div class="title">
				<div class="logo">
					<img alt="logo" src="resources/image/main/logo.png">
				</div>
				<a href="main.do">#DOG</a>
			</div>
			<ul class="topMenu cf">
				<li><a href="loginForm.do">로그인&nbsp;ㅣ</a></li>
				<li><a href="insertMember.do">회원가입&nbsp;ㅣ</a></li>
				<li><a href="#">주문배송조회&nbsp;ㅣ</a></li>
				<li><a href="#">장바구니&nbsp;ㅣ</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</nav>
		<div class="inner cf">
			<div class="divbox">
				<form class="searchbox">
					<input class="text" type="text">
				</form>
			</div>
			<a href="#">검색</a>
		</div>
	</div>
	<div id="headercotent">
		<div class="mainMenu_full">
			<div class="mainMenu">
				<ul class="cf">
					<li><a href="productListBigCode.do?bigcode=A"
						class="allCategories"><img class="listimage"
							src="resources/image/main/List.png">전체카테고리</a></li>
					<li><a id="bigcode" href="productListBigCode.do?bigcode=A">사료/간식</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul id="smallre" class="mainMenu_backul mainMenu_backul01">
									<!-- <li id="smallre">
									</li> -->
									<%-- 									<c:forEach var="SmallProduct_01" items="${selectSmallProduct_01}">
										<li><a href="productListSmallCode.do?smallcode=${SmallProduct_01.code }">${SmallProduct_01.name}</a></li>
									</c:forEach> --%>
								</ul>
							</div>
						</div></li>
					<li><a id="bigcode" href="productListBigCode.do?bigcode=B">미용/목욕</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul id="smallre" class="mainMenu_backul mainMenu_backul02">
		<%-- 							<c:forEach var="SmallProduct_02"
										items="${selectSmallProduct_02}">
										<li><a
											href="productListSmallCode.do?smallcode=${SmallProduct_02.code }">${SmallProduct_02.name}</a></li>
									</c:forEach> --%>
								</ul>
							</div>
						</div></li>
					<li><a id="bigcode" href="productListBigCode.do?bigcode=C"
						class="toy">장난감</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul id="smallre" class="mainMenu_backul mainMenu_backul03">
			<%-- 						<c:forEach var="SmallProduct_03"
										items="${selectSmallProduct_03}">
										<li><a
											href="productListSmallCode.do?smallcode=${SmallProduct_03.code }">${SmallProduct_03.name}</a></li>
									</c:forEach> --%>
								</ul>
							</div>
						</div></li>
					<li><a id="bigcode" href="productListBigCode.do?bigcode=D">하우스/울타리</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul id="smallre" class="mainMenu_backul mainMenu_backul04">
	<%-- 								<c:forEach var="SmallProduct_04"
										items="${selectSmallProduct_04}">
										<li><a
											href="productListSmallCode.do?smallcode=${SmallProduct_04.code }">${SmallProduct_04.name}</a></li>
									</c:forEach> --%>
								</ul>
							</div>
						</div></li>
					<li class="cloth"><a id="bigcode"
						href="productListBigCode.do?bigcode=E">의류</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul id="smallre" class="mainMenu_backul mainMenu_backul05">
<%-- 									<c:forEach var="SmallProduct_05"
										items="${selectSmallProduct_05}">
										<li><a
											href="productListSmallCode.do?smallcode=${SmallProduct_05.code }">${SmallProduct_05.name}</a></li>
									</c:forEach> --%>
								</ul>
							</div>
						</div></li>
					<li class="best"><a href="#">베스트상품</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul06">
									<li><a href="#">운영자추천!!</a></li>
									<li><a href="#">이달의 대박품목!!</a></li>
									<li><a href="#">인기상품!!</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#" class="smallgroup">공지사항</a></li>
					<li><a href="productInquiry.do" class="smallgroup">1:1상품문의</a></li>
					<li><a href="reviewAllBoardList.do" class="smallgroup">상품평</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/layout/header.js"></script>
</body>
</html>