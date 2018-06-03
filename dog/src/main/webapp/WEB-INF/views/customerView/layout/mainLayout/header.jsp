<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layout/header.css">
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
				<a href="#">#DOG</a>
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
	<div id="content">
		<div class="mainMenu_full">
			<div class="mainMenu">
				<ul class="cf">
					<li><a href="#" class="allCategories"><img
							class="listimage" src="resources/image/main/List.png">전체카테고리</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_ul mainMenu_backul00">
									<li><a href="#">Sliders</a></li>
									<li><a href="#">Extensions</a></li>
									<li><a href="#">Extensions</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#">사료/간식</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul01">
									<li class="mainMenu_backul"><a href="#">피부/피모건강</a></li>
									<li class="mainMenu_backul"><a href="#">다이어트</a></li>
									<li class="mainMenu_backul"><a href="#">영양공급</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#">미용/목욕</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul02">
									<li><a href="#">샴푸/린스</a></li>
									<li><a href="#">발톱관리</a></li>
									<li><a href="#">이발기/미용가위</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#" class="toy">장난감</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul03">
									<li><a href="#">공/원반</a></li>
									<li><a href="#">봉제장난감</a></li>
									<li><a href="#">고무장난감</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="#">하우스/울타리</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul04">
									<li><a href="#">동굴형 울타리</a></li>
									<li><a href="#">철창 울타리</a></li>
									<li><a href="#">이동 가방</a></li>
								</ul>
							</div>
						</div></li>
					<li class="cloth"><a href="#">의류</a>
						<div class="mainMenu_backfull">
							<div class="mainMenu_back">
								<ul class="mainMenu_backul mainMenu_backul05">
									<li><a href="#">자켓/점퍼</a></li>
									<li><a href="#">원피스</a></li>
									<li><a href="#">셔츠</a></li>
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