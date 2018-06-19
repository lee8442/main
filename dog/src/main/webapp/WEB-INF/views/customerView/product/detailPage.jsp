<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/detailsPage.css">
</head>
<body>
	<div id="container">
		<div id="contents">
			<div id="df-product-detail" df-data-custom="" df-data-price="154000"
				class="xans-element- xans-product xans-product-detail close">
				<div class="detailArea">
					<div class="imgArea-wrap">
						<div
							class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail">
									<span class="detail-image"><img
										src="${selectDetailPage.get(0).image }" alt="상세이미지"
										class="big_img_size BigImage "></span>
									<div id="zoom_wrap"></div>
									<!-- 이전.다음상품 -->
									<div class="df-move-control">
										<a href="#none"
											onclick="ImagePreview.viewProductBtnClick('prev');"
											class="prev btn-effect" style="display:;"> <img
											src="/web/upload/dfloor_base/web/button/btn_product_prev.png">&nbsp;
											<span class="msg-box">이전상품<i
												class="fa fa-caret-down ico-arrow"></i></span>
										</a> <a href="#none"
											onclick="ImagePreview.viewProductBtnClick('next');"
											class="next btn-effect" style="display:;"> <img
											src="/web/upload/dfloor_base/web/button/btn_product_next.png">&nbsp;
											<span class="msg-box">다음상품<i
												class="fa fa-caret-down ico-arrow"></i></span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="infoArea-wrap">
						<div class="infoArea">
							<div class="df-detail-fixed-box">
								<div class="df-detail-fixed-scroll">
									<div class="headingArea ">
										<span class="icon"></span>
										<h2>${selectDetailPage.get(0).name }</h2>
										<div class="color displaynone"></div>
									</div>
									<div
										class="xans-element- xans-product xans-product-detaildesign">
										<table border="1" summary="">
											<caption>기본 정보</caption>
											<tbody>
												<tr class="product_name_css  xans-record-">
													<th scope="row"><span
														style="font-size: 14px; color: #555555;">상품명</span></th>
													<td><span style="font-size: 14px; color: #555555;"></span><span
														class="df-custom-add"></span></td>
												</tr>
												<tr class="product_price_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">판매가</span></th>
													<td><span style="font-size: 11px; color: #555555;">
															<strong id="span_product_price_text">${selectDetailPage.get(0).price }</strong>
															<input id="product_price" name="product_price" value=""
															type="hidden">
													</span><span class="df-custom-add"></span></td>
												</tr>
												<tr class="mileage_value_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">적립금</span></th>
													<td><span style="font-size: 11px; color: #555555;"><span
															id="span_mileage_text"></span> <span
															class="df-custom-add"></span> </span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="guideArea">
										<p class="info ">
											최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 0개 이하</span>
										</p>
										<span class="sizeGuide displaynone"><a href="#none"
											class="size_guide_info" product_no="17"><i
												class="fa fa-expand" aria-hidden="true"></i>사이즈 가이드</a></span>
									</div>	 	
									<div id="totalProducts" class=" ">
										<div class="thead-wrap"></div>
										<table border="1" summary="">
											<caption>상품 목록</caption>
											<colgroup>
												<col style="width: 320px;">
												<col style="width: 70px;">
												<col style="width: 110px;">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">상품명</th>
													<th scope="col">상품수</th>
													<th scope="col">가격</th>
												</tr>
											</thead>
											<tbody class="">
												<tr>
													<td>${selectDetailPage.get(0).name }</td>
													<td><span class="quantity"> <input
															id="quantity" style="" value="1" type="text"
															onkeydown="onlyNumber(this)"> <img onclick="up()"
															src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
															alt="수량증가" class="QuantityUp up" style="cursor: pointer">
															<img onclick="down()"
															src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
															alt="수량감소" class="QuantityDown down"
															style="cursor: pointer">
													</span></td>
													<td class="right"><span class="quantity_price">${selectDetailPage.get(0).price }</span>
														<span style="display: none;" id="priceHidden">${selectDetailPage.get(0).price }</span>
														<span class="mileage "> <img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif">&nbsp;
															<span class="mileage_price" id="money"></span>
													</span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div id="totalPrice" class="totalPrice">
										<strong>TOTAL</strong> : <span class="total"><strong><em
												class="totalnum">${selectDetailPage.get(0).price }원</em></strong> </span>
									</div>
									<!-- //2017-05-25 업데이트 끝 -->
									<form action="payment.do" id="submitpayment" method="get">
										<input type="hidden" value="${selectDetailPage.get(0).code }"
											name="code"> <input type="hidden"
											id="submitpayment_amunt" name="amount">
									</form>

								</div>
								<div class="xans-element- xans-product xans-product-action">
									<!--구매·장바구니·관심상품·품절 버튼 -->
									<div class="ec-base-button df-action-button">
										<div class="ac-buy wrap">
											<a href="#none" class="df-btn buy "
												onclick="document.getElementById('submitpayment').submit()"><span
												id="btnBuy">바로구매</span></a><span class="displaynone"
												id="btnReserve" style="display: none;">예약주문</span>
										</div>
										<div class="ac-basket wrap">
										<form action="detailPage.do" method="post" id="submitbasket">
								 		<input name="member_id" type="hidden">
										<input name="product_code" type="hidden" value="${selectDetailPage.get(0).code }">
										<input name="amount" type="hidden" id="amount" value="1">
										</form>
											<a href="#none" class="df-btn basket "
												onclick="document.getElementById('submitbasket').submit()">장바구니</a>
										</div>
									</div>
								</div>
							</div>
							<a href="#none" class="df-detail-fixed-btn"><i>옵<br>션<br>보<br>기
							</i><span class="line1"></span><span class="line2"></span></a>
						</div>
					</div>
				</div>
			</div>
			<div id="df-smartrecommend" class="srlite_container"
				style="width: 100%; margin-bottom: 15px;"></div>
			<div id="df-detail-area"
				class="xans-element- xans-product xans-product-additional"
				style="text-align: center;">
				<!-- 상품상세정보 전체영역 -->
				<div id="prdDetail" class="df-prd-detail-tab grid5 ">
					<ul class="menu">
						<li class="selected"><a href="#prdDetail" class="movetab">DETAIL
								INFO</a></li>
						<li class="use-guide"><a href="#prdInfo" class="movetab">SHOP
								GUIDE</a></li>

						<li class="use-review"><a href="#prdReview" class="movetab">REVIEW<span
								class="board-count">0</span></a></li>
						<li class="use-qna"><a href="#prdQnA" class="movetab">Q
								&amp; A<span class="board-count">0</span>
						</a></li>
					</ul>
					<div class="cont">
						<div class="common-event type-a displaynone"></div>
					</div>
					<div id="prdInfo" class="df-prd-detail-tab grid5 use-guide "
						style="display: block;">
						<div class="detail-guide">
							<div class="inner-wrap">
								<div class="section account">
									<h3>
										<i class="fa fa-credit-card" aria-hidden="true"></i>상품 결제정보
									</h3>
									<div class="df-cont">
										<div>
											<span style="font-size: 9pt;">- 고액결제의 경우 안전을 위해 카드사에서
												확인전화를 드릴 수도 있습니다.&nbsp;</span><span style="font-size: 9pt;">확인과정에서
												도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는
												취소할&nbsp;</span><span style="font-size: 9pt;">수 있습니다.&nbsp;</span>
										</div>
										<div>
											<div>- 무통장 입금은 상품 구매 대금을 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서
												직접 입금하시면 됩니다.&nbsp;</div>
											<div>
												- 주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 3일 이내로 입금을 하셔야 하며
												입금되지 않은 주문은&nbsp;<span style="font-size: 9pt;">자동취소
													됩니다.&nbsp;</span>
											</div>
										</div>
										<div>
											<br>
										</div>
									</div>
								</div>
								<div class="section delivery">
									<h3>
										<i class="fa fa-map-o" aria-hidden="true"></i>배송안내<a
											href="/myshop/order/list.html" class="df-btn tiny light">+
											배송조회</a>
									</h3>
									<div class="df-cont">
										<ul>
											<li>배송 방법 : 택배</li>
											<li>배송 지역 : 전국지역</li>
											<li>배송 비용 : 2,500원</li>
											<li>배송 기간 : 2일 ~ 5일</li>
											<li><div>- 초코텐트 제품의 기본배송료 제품가격에 포함되어 있습니다.
													(도서,산간,오지 등의 지역은 배송비가 추가될 수 있습니다.)</div>
												<div>- 고객(반려동물)의 과실이 아닌 제품의 하자로 인한 경우 구입 후 1년간 무상A/S
													해드립니다.</div>
												<div>- 고객(반려동물)의 부주의 및 과실로 인해 발생된 A/S비용은 고객 부담입니다.</div>
												<div>- 주소 및 연락처 기입간 실수로 인해 오배송이 발생한 경우 상품의 반송 비용은 고객
													부담입니다.</div>
												<div>- 주문하시는 상품은 입금 확인 후 배송해 드리며, 배송이 지연될 경우 개별
													연락드립니다.</div>
												<div>- 배송은 오후 2시 이전에 구입하시면 당일, 오후 2시 이후에 주문하시면 명일 날 발송
													됩니다.</div></li>
										</ul>
									</div>
								</div>
								<!-- 교환.반품안내 -->
								<div class="section return">
									<h3>
										<i class="fa fa-refresh" aria-hidden="true"></i>교환 및 반품안내
									</h3>
									<div class="df-cont">
										<div>
											<span style="font-size: 9pt;">- 상품 수령일로부터 3일 이내 반품/환불
												가능합니다.</span>
										</div>
										<div>
											<div>- 변심 반품의 경우 제품의 재판매가 가능한 상태여야 하며, 왕복 배송비를 차감한 금액이
												환불됩니다.&nbsp;</div>
											<div>- 상품의 수령 후 불량이 확인된 경우 배송비를 포함한 전액 환불 및 무상 교환이
												가능합니다.</div>
											<div>- 출고 이후 환불요청 시 고객의 상품 회수 후 처리됩니다.&nbsp;</div>
											<div>- 쿠션 제품은 사용 후 교환 및 환불이 불가합니다.&nbsp;</div>
										</div>
										<div>
											<br>
										</div>
										<div>※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야
											합니다. (색상 교환, 사이즈 교환 등 포함)</div>
									</div>
								</div>
								<!-- 서비스문의 -->
								<div class="section service displaynone">
									<h3>
										<i class="fa fa-television" aria-hidden="true"></i>기타 안내
									</h3>
									<div class="df-cont"></div>
								</div>
							</div>
						</div>
					</div>
					<div id="prdReview" class="df-prd-detail-tab grid5 use-review ">
						<ul class="menu">
							<li><a href="#prdDetail" class="movetab">DETAIL INFO</a></li>
							<li class="use-guide"><a href="#prdInfo" class="movetab">SHOP
									GUIDE</a></li>

							<li class="selected use-review"><a href="#prdReview"
								class="movetab">REVIEW<span class="board-count">3</span></a></li>
							<li class="use-qna"><a href="#prdQnA" class="movetab">Q
									&amp; A<span class="board-count">7</span>
							</a></li>
						</ul>
						<div class="board">
							<h3>REVIEW</h3>
							<p class="desc">상품의 사용후기를 적어주세요.</p>

							<div class="xans-element- xans-product xans-product-review">
								<a name="use_review"></a>
								<p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
								<div class="minor displaynone"></div>
								<div class="ec-base-table typeList">
									<table border="1" summary="" class="">
										<caption>상품사용후기</caption>
										<colgroup>
											<col style="width: 70px;">
											<col style="width: auto">
											<col style="width: 100px;">
											<col style="width: 100px;">
											<col style="width: 100px;">
											<col style="width: 80px;" class="displaynone">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">번호</th>
												<th scope="col">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">작성일</th>
												<th scope="col">조회</th>
												<th scope="col" class="displaynone">평점</th>
											</tr>
										</thead>
										<tbody class="center">
											<tr class="xans-record-">

											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<p class="ec-base-button fs-0">
								<span class="gRight"> <a href="productReview.do"
									class="df-btn dark normal mr-5">상품후기작성</a> <a
									href="/board/product/list.html?board_no=4"
									class="df-btn light normal">모두보기</a>
								</span>
							</p>

							<div
								class="xans-element- xans-product xans-product-reviewpaging df-base-paging">

							</div>
						</div>
					</div>
					<div id="prdQnA" class="df-prd-detail-tab grid5 use-qna ">
						<ul class="menu">
							<li><a href="#prdDetail" class="movetab">DETAIL INFO</a></li>
							<li class="use-guide"><a href="#prdInfo" class="movetab">SHOP
									GUIDE</a></li>
							<li class="use-review"><a href="#prdReview" class="movetab">REVIEW<span
									class="board-count"></span></a></li>
							<li class="selected use-qna"><a href="#prdQnA"
								class="movetab">Q &amp; A<span class="board-count"></span></a></li>
						</ul>
						<div class="board">
							<h3>Q&amp;A</h3>
							<p class="desc">상품에 대해 궁금한 점을 해결해 드립니다.</p>

							<div class="xans-element- xans-product xans-product-qna">
								<a name="use_qna"></a>
								<p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
								<div class="minor displaynone"></div>
								<div class="ec-base-table typeList">
									<table border="1" summary="" class="">
										<caption>상품 Q&amp;A</caption>
										<colgroup>
											<col style="width: 70px;">
											<col style="width: auto">
											<col style="width: 100px;">
											<col style="width: 100px;">
											<col style="width: 100px;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">번호</th>
												<th scope="col">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">작성일</th>
												<th scope="col">조회</th>
											</tr>
										</thead>
										<tbody class="center">
											<tr class="xans-record-">

											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<p class="ec-base-button fs-0">
								<span class="gRight fs-0"> <a href="../user/QnAView.jsp"
									class="df-btn dark normal mr-5">상품문의하기</a> <a
									href="/board/product/list.html?board_no=6"
									class="df-btn light normal">모두보기</a>
								</span>
							</p>

							<div
								class="xans-element- xans-product xans-product-qnapaging df-base-paging">

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/product/detailPage.js"></script>
</body>
</html>
