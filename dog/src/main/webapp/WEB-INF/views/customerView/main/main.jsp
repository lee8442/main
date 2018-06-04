<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main/main.css">
</head>
<body>
	<div id="container">
		<div id="content">
			<div class="hot cf">
				<!-- 신상품 사진 -->
				<div class="imageLogin_full">
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src=resources/image/main/img1.png
							width="100%" height="230px;">
					</div>
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src="resources/image/main/img3.png"
							width="100%" height="230px;">
					</div>
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img class="newImage" src="resources/image/main/img2.png"
							width="100%" height="230px;">
					</div>
					<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next" onclick="plusSlides(1)">&#10095;</a>
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
								<input class="loginCheck" type="checkbox">아이디 저장<br>
							</div>

						</div>
						<div class="loginFind">
							<a class="loginFind-id" href="idpassFind.do">아이디 찾기 / 비밀번호 찾기
							</a> <a class="loginFind-signUp" href="insertMember.do"> |
								회원가입</a>
						</div>
					</div>
					<div class="boardImage_bottom">
						<input class="loginBtn" type="image"
							src=" resources/image/main/naver.png" onfocus="this.blur()">
						<input class="loginBtn2" type="image"
							src=" resources/image/main/kakao.JPG" onfocus="this.blur()">
					</div>
				</div>
			</div>
			<div class="box">
				<h4>추천 상품</h4>
				<ul class="cf">
			
				<c:forEach var="BestProduct" items="${selectBestProduct }">
					<li>
						<div class="bestiamge">
							<img src="${BestProduct.image}">
						</div> 
						<div class="productname">
							${BestProduct.name}
						</div>
						<div class="productprice">
							${BestProduct.price}
						</div>
						<div class="productsimple_explain">
							${BestProduct.simple_explain}
						</div>
						<div class="productexplain">
							${BestProduct.explain}
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
			<div class="box">
				<h4>베스트 상품</h4>
				<ul class="cf">
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
				</ul>
			</div>
			<div class="dogParkfull cf">
				<div class="dogPark">
					<div class="dogParkleft">
						<div class="dogParkleftup"></div>
						<div class="dogParkleftdown"></div>
					</div>
					<div class="dogParkcenter">
						<div class="dogParkcenterup">
							<div class="dogParkcenterup_left"></div>
							<div class="dogParkcenterup_right"></div>
						</div>
						<div class="dogParkcenterdown"></div>
					</div>
					<div class="dogParkright"></div>
					<div class="dogParkwrite"></div>
				</div>
				<div class="dogParkwrite">
					<h2># DOG PARK</h2>
				</div>
			</div>
			<div class="boxNew">
				<h4>신상품</h4>
				<ul class="cfNew">
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/main/main.js"></script>
</body>
</html>