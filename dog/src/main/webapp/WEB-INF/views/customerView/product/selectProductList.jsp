<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="resources/css/product/selectProductList.css">
<title>Insert title here</title>
</head>
<body>
	<div id="ProductlistAllForm">
		<div id="productlistLeftForm">
			<div>
				<div class="bigList">
					<c:set var="hello" value="${selectBigCodeName}" />
					${hello}
				</div>
				<ul>
					<c:forEach var="selectSmallCodeName"
						items="${selectSmallCodeName }">
						<li><a
							href="productListSmallCode.do?smallcode=${selectSmallCodeName.code }">${selectSmallCodeName.name }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<div id="productlistRightForm">
			<div class="RightListForm">
				<ul>
					<c:forEach var="ProductList" items="${selectBigCodeProductList }">
						<li>
							<div class="productListimage">
								<a href="recomProduct.do?code=${ProductList.code }"> <img
									class="productListimage_01" src="${ProductList.image}"></a>
							</div>
							<div class="productname">${ProductList.name}</div>
							<div class="productprice" id="price">${ProductList.price}</div>
							<div class="productsimple_explain">
								${ProductList.simple_explain}</div>
							<div class="productexplain">${ProductList.explain}</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div id="recomProduct">
		<div>추천상품</div>
		<ul>
			<c:forEach var="RecomProduct" items="${selectRecomProduct }">
				<li>
					<div class="productListimage">
						<a href="recomProduct.do?code=${RecomProduct.code }"> <img
							class="productListimage_01" src="${RecomProduct.image }"></a>
					</div>
					<div class="productname">${RecomProduct.name}</div>
					<div class="productprice" id="price">${RecomProduct.price}</div>
					<div class="productsimple_explain">
						${RecomProduct.simple_explain}</div>
					<div class="productexplain">${RecomProduct.explain}</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="bestProduct">
		<div>베스트상품</div>
		<ul>
			<c:forEach var="BestProduct" items="${selectBestProduct }">
				<li>
					<div class="productListimage">
						<a href="bestProduct.do?code=${BestProduct.code }"> <img
							class="productListimage_01" src="${BestProduct.image }"></a>
					</div>
					<div class="productname">${BestProduct.name}</div>
					<div class="productprice" id="price">${BestProduct.price}</div>
					<div class="productsimple_explain">
						${BestProduct.simple_explain}</div>
					<div class="productexplain">${BestProduct.explain}</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>