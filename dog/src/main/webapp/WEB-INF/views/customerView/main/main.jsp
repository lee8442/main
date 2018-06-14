<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main/main.css">
<script type="text/javascript"
	src="resources/js/jquery/jquery-3.3.1.min.js"></script>
</head>
<body onload="rotate()">
	<div id="container">
		<div id="content">
			<div class="hot cf">
				<c:forEach var="NewProduct" items="${selectNewProduct }">

					<input name="newimage" type="hidden" value="${NewProduct.image }">
				</c:forEach>
				<!-- 신상품 사진 -->
				<div class="imageLogin_full">
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<a href="#" class="b"><img id="slide" class="newImage"
							width="100%" height="230px;"> </a>
					</div>
					<!-- 	<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img id="slide1" class="newImage" src="resources/image/main/img3.png"
							width="100%" height="230px;">
					</div>
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<img id="slide2" class="newImage" src="resources/image/main/img2.png"
							width="100%" height="230px;">
					</div> -->
					<!-- <a  class="prev" onclick="plusSlides(-1), prev()">&#10094;</a> <a
						class="next" onclick="plusSlides(1), next()">&#10095;</a> -->
				</div>
				<!-- 신상품 사진 우측 -->
				<%if(session.getAttribute("userId")!=null){%>
				<div class="boardImage">
					<div class="boardImage_top">
						<div class="login_Form01"><%=session.getAttribute("userId") %>님
							환영합니다.
						</div>
						<div class="logininpormation">
							<a href="#">개인정보</a><br>
						</div>
						<div class="loginSave">
							<a href="#">구매목록</a><br>
						</div>
						<div class="loginFind">
							<a href="#">주문조회</a><br>
						</div>
						<div class="boardImage_bottom">
							<input class="loginBtn" type="button" value="마이페이지"> <input
								class="loginBtn2" type="button" value="로그아웃"
								onclick="location.href='logout.do'">
						</div>
					</div>
				</div>
				<% }else{ %>
				<div class="boardImage">
					<div class="boardImage_top">
						<form action="login.do" method="post">
							<div class="login_Form">
								<input name="id" class="loginId" type="text" placeholder="아이디">
								<br /> <input name="password" class="loginId" type="password"
									placeholder="비밀번호">
							</div>
							<div class="login_Image">
								<input class="loginbtn" type="submit" value="로그인">
							</div>
						</form>
						<div class="loginFind">
							<a class="loginFind-id" href="idpassFind.do"> <input
								type="button" value="아이디찾기"> <input type="button"
								value="비밀번호 찾기">
							</a> <a class="loginFind-signUp" href="insertMember.do"> <input
								class="regibtn" type="button" value="회원가입">
							</a>
						</div>
						<div class="boardImage_bottom_01">
							<input class="loginBtn" type="image"
								src=" resources/image/main/naver.png" onfocus="this.blur()">
						</div>
						<div class="boardImage_bottom_02">
							<input class="loginBtn2" type="image"
								src=" resources/image/main/kakao.JPG" onfocus="this.blur()">
						</div>
						<div class="loginwiter">
							<div class="loginwiternaver">네이버로 로그인</div>
							<div class="loginwiterkakao">카카오톡으로 로그인</div>
						</div>
					</div>
				</div>
				<% }%>
			</div>
			<div class="box">
				<h4>베스트 상품</h4>
				<ul class="cf">
					<c:forEach var="BestProduct" items="${selectBestProduct }">
						<li>
							<div class="bestiamge">
								<a href="bestProduct.do?code=${BestProduct.code }"> <img
									class="bestimage_01" src="${BestProduct.image}"></a>
							</div>
							<div class="productname">${BestProduct.name}</div>
							<div class="productprice" id="price">
								<input type="text" name="price" class="price"
									value="${BestProduct.price}원">
							</div>
							<div class="productsimple_explain">
								${BestProduct.simple_explain}</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="box">
				<h4>추천상품</h4>
				<ul class="cf">
				<c:forEach var="RecomProduct" items="${selectRecomProduct }">
					<li><a href="#"></a>
						<div class="recomiamge">
							<a href="recomProduct.do?code=${RecomProduct.code }"> 
							<img class="recomimage_01" src="${RecomProduct.image}"></a>
						</div>
						<div class="productname">${RecomProduct.name}</div>
						<div class="productprice" id="price">
							<input type="text" name="price" class="price"
								value="${RecomProduct.price}원">
						</div>
						<div class="productsimple_explain">
							${RecomProduct.simple_explain}</div></li>
				</c:forEach>


					<!-- <li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li> -->
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
<!-- 			<div class="boxNew">
				<h4>신상품</h4>
				<ul class="cfNew">
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
					<li><a href="#"></a><img
						src="resources/member/image/image03.jpg"></li>
				</ul>
			</div> -->
		</div>
	</div>
	<script type="text/javascript" src="resources/js/main/main.js"></script>
</body>
</html>