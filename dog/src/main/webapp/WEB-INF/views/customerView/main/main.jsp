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
</head>
<body onload="rotate()">
	<div id="container">
		<div id="content">
			<div class="hot cf">
				<c:forEach var="NewProduct" items="${selectNewProduct }">
					<input name="newimage" type="hidden" value="${NewProduct.image }">
					<input name="newcode" type="hidden" value="${NewProduct.code }">
				</c:forEach>
				<!-- 신상품 사진 -->
				<div class="imageLogin_full">
					<div class="imageLogin">
						<h3>신상품 사진</h3>
						<a href="#" class="b"><img id="slide" class="newImage"
							width="100%" height="230px"> </a>
					</div>
				</div>
				<!-- 신상품 사진 우측 -->
				<c:if test="${not empty sessionScope.login }">
						<div class="boardImage">
							<div class="boardImage_top">
								<div class="login_Form01">${sessionScope.login.name}님
									환영합니다.</div>
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
									<input class="loginBtn" type="button" value="마이페이지"
										onclick="goMyPage()">
									<form action="logout.do" method="post">
										<input class="loginBtn2" type="submit" value="로그아웃">
									</form>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${empty sessionScope.login && empty sessionScope.adminLogin}">
					<%-- <c:otherwise> --%>
						<div class="boardImage">
							<div class="boardImage_top">
								<form action="login.do" method="post"
									onsubmit="return loginCheck()">
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
										type="button" value="아이디/비밀번호찾기">
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
						</c:if>
					<%-- </c:otherwise> --%>
				<%-- </c:choose> --%>
				<!-- admin 로그인일 때 보여줄 화면 -->
					<c:if test="${not empty sessionScope.adminLogin }">
						<div class="boardImage">
							<div class="admin_boardImage_top">
								<div class="login_Form01">${sessionScope.adminLogin.id}님
									환영합니다.</div>
								<div class="boardImage_bottom">
									<input class="loginBtn" type="button" value="관리자페이지"
										onclick="goAdminPage()">
									<form action="logout.do" method="post" >
										<input class="loginBtn2" type="submit" value="로그아웃" >
									</form>
								</div>
							</div>
						</div>
						</c:if>
			</div>
			<div class="box">
				<h4>베스트 상품</h4>
				<ul class="cf">
					<c:forEach var="BestProduct" items="${selectBestProduct }">
						<li>
							<div class="bestiamge">
								<a href="detailPage.do?code=${BestProduct.code }"> <img
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
								<a href="detailPage.do?code=${RecomProduct.code }"> <img
									class="recomimage_01" src="${RecomProduct.image}"></a>
							</div>
							<div class="productname">${RecomProduct.name}</div>
							<div class="productprice" id="price">
								<input type="text" name="price" class="price"
									value="${RecomProduct.price}원">
							</div>
							<div class="productsimple_explain">
								${RecomProduct.simple_explain}</div></li>
					</c:forEach>
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
		</div>
	</div>
	<script type="text/javascript" src="resources/js/main/main.js"></script>
</body>
</html>