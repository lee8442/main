<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/css.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script> -->
</head>
<body>
	<!-- <header id="header">
	</header>
	<div id="visual">
		<img class="mySlides" src="resources/member/image/main.png" style="width:100%; height:400px; z-index: -1000;">
		<img class="mySlides" src="resources/member/image/main1.jpg" style="width:100%; height:400px; z-index: -1000;">
		<img class="mySlides" src="resources/member/image/main2.jpg" style="width:100%; height:400px; z-index: -1000;">
		<img class="mySlides" src="resources/member/image/main3.jpg" style="width:100%; height:400px; z-index: -1000;">
		<nav id="nav" class="cf">
			<div class="title">
				<a href="#">#DOG</a>
			</div>
			<ul class="topMenu cf">
				<li><a href="#">고객센터&nbsp;ㅣ</a></li>
				<li><a href="#">마이페이지&nbsp;ㅣ</a></li>
				<li><a href="#">로그인&nbsp;ㅣ</a></li>
				<li><a href="#">회원가입</a></li>
			</ul>
		</nav>
		<div class="inner cf">
			<h2># DOG 을 방문해 주셔서 감사합니다</h2>
			<div class="divbox">
				<form>
					<input class="text" type="text">
				</form>
			</div>
			<a href="#">상품찾기</a>
		</div>
	</div> -->
	<div id="container">
		<div id="content">
			<!-- <div class="mainMenu_full">
				<div class="mainMenu">
					<ul class="cf">
						<li><a href="#">카테고리</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">상품</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">고객센터</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">리뷰평</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">만남의 광장</a>	
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">배송조회</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">1:1문의</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">고객문의</a>
							<div class="mainMenu_backfull">
								<div class="mainMenu_back">
									<ul class="mainMenu_backul">
										<li><a href="#">Sliders</a></li>
										<li><a href="#">Extensions</a></li>
										<li><a href="#">Extensions</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div> -->
			<div class="hot cf">
					<!-- 신상품 사진 -->
				<div class="imageLogin_full">
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src="resources/member/image/image01.jpg" width="100%" height="230px;">
					</div>
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src="resources/member/image/image02.jpg" width="100%" height="230px;">
					</div>
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src="resources/member/image/image03.jpg" width="100%" height="230px;">
					</div>
					<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
					<a class="next" onclick="plusSlides(1)">&#10095;</a>
				</div>
					<!-- 신상품 사진 우측 -->				
				<div class="boardImage">
					<div class="boardImage_top">
						<form action="#" method="post">
							<div class="login_Form">
								<input class="loginId" type="text" placeholder="아이디"> <br />
								<input class="loginId" type="password" placeholder="비밀번호">
							</div>
							<div class="login_Image">
								<input class="loginbtn" type="submit" value="로그인">
							</div>
						</form>
							<div class="loginSaveForm">
								<div class="loginSave">
									<input class="loginCheck" type="checkbox">아이디 저장
								</div>
									<a href="#">회원가입</a>
							</div>
							<div class="loginFind">
								<a href="#">아이디 찾기</a>&nbsp;|&nbsp;<a href="#">비밀번호 찾기</a>
							</div>
					</div>
					<div class="boardImage_bottom">
						<input class="loginBtn" type="button" value="네이버로 로그인">
						<input class="loginBtn"type="button" value="카카오톡으로 로그인">
					</div>
				</div>
			</div>
			<div class="box">
				<h4>추천 상품</h4>
				<ul class="cf">
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
				</ul>
			</div>
			<div class="box">
				<h4>베스트 상품</h4>
				<ul class="cf">
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
				</ul>
			</div>
			<div class="dogParkfull cf">
				<div class="dogPark">
					<div class="dogParkleft">
						<div class="dogParkleftup">
						</div>
						<div class="dogParkleftdown">
						</div>
					</div>
					<div class="dogParkcenter">
						<div class="dogParkcenterup">
							<div class="dogParkcenterup_left">
							</div>
							<div class="dogParkcenterup_right">
							</div>
						</div>
						<div class="dogParkcenterdown">
						</div>
					</div>
					<div class="dogParkright">
					</div>
					<div class="dogParkwrite">
					</div>
				</div>
				<div class="dogParkwrite"><h2># DOG PARK</h2></div>
			</div>
			<div class="boxNew">
				<h4>신상품</h4>
				<ul class="cfNew">
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img src="resources/member/image/image03.jpg"></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- <footer id="footer">
		<div class="inner cf">
			<div class="left ftbox">가장 소리다.이것은 얼마나 못할 산야에 천하를 아니다. 지혜는 천자만홍이 꾸며 이상 별과 쓸쓸한 이것이다. 같지 희망의 이상의 수 힘차게 보배를 그들의 힘있다.
			</div>
			<div class="center ftbox">그들의 수 그와 이상의 만물은 것이다. 눈이 품었기 오직 힘차게 피다. 스며들어 크고 피가 그리하였는가?
			</div>
			<div class="right ftbox">얼마나 청춘에서만 피는 힘있다. 일월과 용기가 풍부하게 새가 소담스러운 듣는다. 지혜는 구하지 사람은 놀이 실현에 용감하고 뜨고, 석가는 황금시대다. 청춘 그림자는 청춘에서만 것이다. 
			</div>
		</div>	
	</footer> -->
	<!-- <script type="text/javascript" src="js/jquery.js"></script> -->
</body>
</html>