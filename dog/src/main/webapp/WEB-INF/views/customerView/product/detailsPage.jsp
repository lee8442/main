<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/buycss.css">
</head>
<body>

	<div id="container">
		<div id="contents">

			<!-- 업데이트 2017-05-28 -->
			<!--
    $category_page = /product/list.html
    $project_page = /product/project.html
    $jointbuy_page = /product/jointbuy.html
-->

			<!-- 상단 전체영역 시작  -->
			<div id="df-product-detail" df-data-custom="" df-data-price="154000"
				class="xans-element- xans-product xans-product-detail close">
				<!-- 디테일전체 영역 시작 -->
				<div class="detailArea">


					<!-- 이미지 영역 시작 -->
					<div class="imgArea-wrap">
						<div
							class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail">

									<!-- 상품 상세이미지 -->
									<span class="detail-image"><img src="../image/개사료.jpg"
										alt="초코텐트" class="big_img_size BigImage "></span>
									<div id="zoom_wrap"></div>

									<!-- 좋아요 -->
									<div class="likeButton btn-effect displaynone">
										<button type="button">
											<span class="title">LIKE</span><span
												class="count displaynone"></span>
										</button>
										<span class="bg-layer1"></span><span class="bg-layer2"></span><span
											class="bg-layer3"></span><span class="bg-layer4"></span>
									</div>

									<!-- 이전.다음상품 -->
									<div class="df-move-control">
										<a href="#none"
											onclick="ImagePreview.viewProductBtnClick('prev');"
											class="prev btn-effect" style="display:;"> <img
											src="/web/upload/dfloor_base/web/button/btn_product_prev.png">
											&nbsp;<span class="msg-box">이전상품<i
												class="fa fa-caret-down ico-arrow"></i></span>
										</a> <a href="#none"
											onclick="ImagePreview.viewProductBtnClick('next');"
											class="next btn-effect" style="display:;"> <img
											src="/web/upload/dfloor_base/web/button/btn_product_next.png">
											&nbsp;<span class="msg-box">다음상품<i
												class="fa fa-caret-down ico-arrow"></i></span>
										</a>
									</div>

								</div>

								<!-- 상품 추가이미지-->
								<div
									class="xans-element- xans-product xans-product-addimage listImg"
									style="display: block;">
									<ul>
										<li class="xans-record-" style="display: none;"><div
												class="thumb">
												<img src="../image/개사료.jpg" class="ThumbImage">
											</div></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
					<!-- //이미지 영역 종료 -->


					<!-- 상품정보 영역 시작 -->
					<div class="infoArea-wrap">
						<div class="infoArea">

							<!-- DF픽스박스(상품정보영역) -->
							<div class="df-detail-fixed-box">

								<!-- DF픽스박스(스크롤영역 -->
								<div class="df-detail-fixed-scroll">

									<div class="headingArea ">
										<span class="icon"></span>

										<!-- 상품명 -->
										<h2>Choco Tent (Natural Beige)</h2>

										<!-- 해외배송문구 -->
										<span class="delivery displaynone">[해외배송 가능상품]</span>

										<!-- 상품색상 -->
										<div class="color displaynone"></div>
									</div>

									<!-- 상품요약설명 -->
									<div class="df-summary-desc"></div>


									<!-- 공급사정보 -->
									<table border="1" summary="" class="supply displaynone">
										<tbody>
											<tr>
												<th scope="row">스토어 정보</th>
												<td><span></span><a href="#none" onclick=""><img
														src="" alt="공급사 바로가기"></a></td>
											</tr>
										</tbody>
									</table>
									<!-- 상품 기본정보 -->
									<div
										class="xans-element- xans-product xans-product-detaildesign">
										<!--
								출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
								count = 10
							-->
										<table border="1" summary="">
											<caption>기본 정보</caption>
											<tbody>
												<tr class="product_name_css  xans-record-">
													<th scope="row"><span
														style="font-size: 14px; color: #555555;">상품명</span></th>
													<td><span style="font-size: 14px; color: #555555;">Choco
															Tent (Natural Beige)</span><span class="df-custom-add"></span></td>
												</tr>
												<tr class="manu_name_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">제조사</span></th>
													<td><span style="font-size: 11px; color: #555555;">자체제작</span><span
														class="df-custom-add"></span></td>
												</tr>
												<tr class="made_in_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">원산지</span></th>
													<td><span style="font-size: 11px; color: #555555;">국내
													</span><span class="df-custom-add"></span></td>
												</tr>
												<tr class="product_price_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">판매가</span></th>
													<td><span style="font-size: 11px; color: #555555;"><strong
															id="span_product_price_text">154,000원</strong><input
															id="product_price" name="product_price" value=""
															type="hidden"></span><span class="df-custom-add"></span>
													</td>
												</tr>
												<tr class="mileage_value_css  xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">적립금</span></th>
													<td><span style="font-size: 11px; color: #555555;"><span
															id="span_mileage_text">3,000원 (2%)
																<p></p>
														</span><span class="df-custom-add"></span> </span></td>
												</tr>

											</tbody>
										</table>
									</div>
									<!-- //상품 기본정보 끝 -->


									<!-- 상품간략설명 -->
									<div class="df-simple-desc"></div>


									<p class="displaynone">
										<img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif"
											alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다.">
									</p>
									<!-- //상세정보 내역 -->


									<!-- 2017-05-25 업데이트 -->
									<!-- 상품옵션 전체영역 -->
									<ul border="1" summary=""
										class="xans-element- xans-product xans-product-option xans-record-">
										<!-- 추가옵션 -->
										<!-- 일반옵션 -->
										<!-- 파일첨부 옵션 -->
									</ul>
									<!-- //상품옵션 전체영역 끝 -->
									<!-- 옵션추가 버튼 -->
									<div class="displaynone add-option" id="">
										<a href="#none" onclick=""><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_manual_select.gif"
											alt="옵션 선택"></a>
									</div>


									<div class="guideArea">
										<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
										<p class="info ">
											최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 0개 이하</span>
										</p>
										<!-- //참고 -->
										<span class="sizeGuide displaynone"><a href="#none"
											class="size_guide_info" product_no="17"><i
												class="fa fa-expand" aria-hidden="true"></i>사이즈 가이드</a></span>
									</div>


									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<!-- //참고 -->


									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<!-- //참고 -->


									<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
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
													<td>Choco Tent (Natural Beige)</td>
													<td><span class="quantity"> <input
															id="quantity" name="quantity_opt[]" style="" value="1"
															type="text"> <a href="#none"><img
																src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
																alt="수량증가" class="QuantityUp up"></a> <a href="#none"><img
																src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
																alt="수량감소" class="QuantityDown down"></a>
													</span></td>
													<td class="right"><span class="quantity_price">154,000원<input
															type="hidden" name="option_box_price"
															class="option_box_price" value="154000"
															item_code="P000000Q000A"></span> <span class="mileage "><img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif">
															&nbsp;<span class="mileage_price">3,000원</span></span></td>
												</tr>
											</tbody>
											<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.-->
											<tbody>
												<!-- tr>
										<td>
											<p class="product">
												$상품명<br />
												<span>$옵션</span>
											</p>
										</td>
										<td>
											<span class="quantity">
												<input type="text" class="quantity_opt" />
												&nbsp;<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
												<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
											</span>
											<a href="#none"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
										</td>
										<td class="right">
											<span>$가격</span>
											<span class="mileage"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span></span>
										</td>
									</tr -->
											</tbody>
											<!-- //참고 -->
										</table>
									</div>
									<!-- //참고 -->


									<div id="totalPrice" class="totalPrice">
										<strong>TOTAL</strong> : <span class="total"><strong><em>154,000원</em></strong>
											(1개)</span>
									</div>
									<p class="ec-base-help txt11 displaynone EC-price-warning">할인가가
										적용된 최종 결제예정금액은 주문 시 확인할 수 있습니다.</p>
									<!-- //2017-05-25 업데이트 끝 -->


								</div>
								<!-- //DF픽스박스(스크롤영역 -->

								<!-- 2017-02-25 구매 & 예약구매 버튼확인할것 상품코드: P00000DI -->

								<div class="xans-element- xans-product xans-product-action">
									<!--구매·장바구니·관심상품·품절 버튼 -->
									<div class="ec-base-button df-action-button">
										<div class="ac-buy wrap">
											<a href="#none" class="df-btn buy "
												onclick="product_submit(1, '/exec/front/order/basket/', this)"><span
												id="btnBuy">바로구매</span><span class="displaynone"
												id="btnReserve" style="display: none;">예약주문</span></a>
										</div>
										<div class="ac-basket wrap">
											<a href="#none" class="df-btn basket "
												onclick="product_submit(2, '/exec/front/order/basket/', this)">장바구니</a>
										</div>
									</div>

									<!-- 네이버 체크아웃 구매 버튼 -->
									<div id="NaverChk_Button"></div>
									<!-- 기타 서비스 버튼(이메일.조르기·대량구매) -->
									<div class="df-addinfo fs-0 ">
										<div class="sns-share ">
											<ul
												class="xans-element- xans-product xans-product-customsns xans-record-">
												<li></li>
											</ul>
										</div>



									</div>
									<!-- 공통이벤트-B 상품이미지 옆 -->
									<div class="common-event type-b displaynone "></div>
								</div>
								<!-- //참고 -->

							</div>
							<!-- //DF픽스박스(상품정보영역) -->

							<a href="#none" class="df-detail-fixed-btn"><i>옵<br>션<br>보<br>기
							</i><span class="line1"></span><span class="line2"></span></a>
						</div>
					</div>
					<!-- //상품정보 영역 종료 -->

				</div>
				<!-- //디테일 전체영역 종료 -->
				<!-- 공급사:판매사정보 -->
				<div class="supplyInfo displaynone"></div>
				<!-- //공급사:판매사정보 -->
			</div>
			<!-- //상단 전체영역 종료  -->


			<!-- 스마트추천 앱 -->
			<div id="df-smartrecommend" class="srlite_container"
				style="width: 100%; margin-bottom: 15px;"></div>
			<!-- //스마트추천 앱 -->


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
					<!-- 쿠폰 다운로드 -->
					<!-- //쿠폰 다운로드 -->


					<!-- 상품상세정보 영역 -->
					<div class="cont">

						<!-- 공통이벤트A:상품상세정보 위 -->
						<div class="common-event type-a displaynone"></div>

						<!-- 상품상세페이지 본문 -->
						<p></p>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<img alt="" src="../image/개사료.jpg" style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<p>
								<img alt=""
									src="/web/upload/NNEditor/20170830/IMG_0117_1720_shop1_015834.jpg"
									width="860">
							</p>
							<p>&nbsp;뭐임???????????????????????????????????????????????????????????</p>
							<p></p>
							<p>&nbsp;이건 또</p>
							<br>
							<p>
								<br>
							</p>
							<p></p>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">

							<img alt="" src="../image/개사료.jpg" style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="/web/upload/NNEditor/20170822/18_shop1_004515.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="/web/upload/NNEditor/20170822/19_shop1_004515.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="../image/개사료.jpg"
								style="font-size: 9pt;">
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<div style="text-align: center;">
							<br>
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<img alt=""
								src="/web/upload/NNEditor/20170822/27_shop1_004517.jpg"
								style="font-size: 9pt;">
						</div>
						<p style="text-align: center;">&nbsp;</p>
						<div style="text-align: center;">
							<br>
						</div>
						<p></p>
						<!-- 배너관리v2:상세페이지 하단 공통이미지 -->
						<div class="detail-common-img">
							<!-- 배너관리 : 상세페이지 하단 공통이미지 -->

							<p
								class="xans-element- xans-bannermanage2 xans-bannermanage2-display-1 xans-bannermanage2-display xans-bannermanage2-1 xans-record-">
								<a href="" alt="이미지"><img class="banner_image" alt="이미지"
									rel="1-1"
									src="//app-storage-007.cafe24.com/bannermanage2/inherent02/2017/08/30/0d70bccd1278ec75e09d8cf0d8fec464.jpg"></a>
							</p>
							<p
								class="xans-element- xans-bannermanage2 xans-bannermanage2-display-1 xans-bannermanage2-display xans-bannermanage2-1 xans-record-">
								<a href="" alt="세탁_피해보상기준"><img class="banner_image"
									alt="세탁_피해보상기준" rel="64-1"
									src="//app-storage-007.cafe24.com/bannermanage2/inherent02/2017/08/30/0d76ae17686344738b562dea645cdb41.jpg"></a>
							</p>
						</div>
					</div>
					<!-- //상품상세정보 영역 -->


				</div>
				<!-- //상품상세정보 전체영역 -->
				<!-- 상품구매안내 시작 -->
				<div id="prdInfo" class="df-prd-detail-tab grid5 use-guide "
					style="display: block;">
					<ul class="menu">
						<li><a href="#prdDetail" class="movetab">DETAIL INFO</a></li>
						<li class="selected use-guide"><a href="#prdInfo"
							class="movetab">SHOP GUIDE</a></li>
						<li class="use-review"><a href="#prdReview" class="movetab">REIVEW<span
								class="board-count">3</span></a></li>
						<li class="use-qna"><a href="#prdQnA" class="movetab">Q
								&amp; A<span class="board-count">7</span>
						</a></li>
					</ul>
					<!-- 구매가이드 -->
					<div class="detail-guide">
						<div class="inner-wrap">
							<!-- 결제정보 -->
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

							<!-- 배송안내 -->
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
											<div>- 주문하시는 상품은 입금 확인 후 배송해 드리며, 배송이 지연될 경우 개별 연락드립니다.</div>
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
					<!-- 구매가이드 종료 -->
				</div>
				<!-- //상품구매안내 종료 -->
				<!-- 관련상품 시작 -->
				<!-- //관련상품 끝 -->
				<!-- 상품사용후기 시작 -->
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
							<div class="minor displaynone">
								<p>
									<img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/product/ico_under19.gif"
										alt=""> &nbsp;<strong>"19세 미만의 미성년자"</strong>는 출입을 금합니다!
								</p>
								<p class="button">
									<a href="/intro/board.html"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_adult_certification.gif"
										alt="성인인증 하기"></a>
								</p>
							</div>
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
											<td>3</td>
											<td class="subject left txtBreak"><a
												href="/article/review/4/249/?no=249&amp;board_no=4&amp;spread_flag=T">초코텐트
													너무 예뻐요! </a><span class="ico-board"><img
													src="" alt="HIT"><img
													src="" alt="파일첨부"
													onmouseover=""
													onmouseout=""><span
													id="afile_249" style="display: none;"></span></span><span
												class="txtWarn comment-count">[1]</span></td>
											<td>서****</td>
											<td class="txtInfo txt11">2017-10-31</td>
											<td class="txtInfo txt11">419</td>
											<td class="displaynone"><img
												src="../image/ico_point_star5.png" class="ico-point"
												alt="5점"></td>
										</tr>
										<tr class="xans-record-">
											<td>2</td>
											<td class="subject left txtBreak"><a
												href="/article/review/4/80/?no=80&amp;board_no=4&amp;spread_flag=T">강아지가
													좋아해요.</a><span class="ico-board"><img
													src="/web/upload/icon_201703161514423400.png" alt="HIT"></span><span
												class="txtWarn comment-count">[1]</span></td>
											<td>정****</td>
											<td class="txtInfo txt11">2017-03-31</td>
											<td class="txtInfo txt11">521</td>
											<td class="displaynone"><img
												src="../image/ico_point_star5.png" class="ico-point"
												alt="5점"></td>
										</tr>
										<tr class="xans-record-">
											<td>1</td>
											<td class="subject left txtBreak"><a
												href="/article/review/4/14/?no=14&amp;board_no=4&amp;spread_flag=T">도착했습니다</a><span
												class="ico-board"><img
													src="/web/upload/icon_201703161514423400.png" alt="HIT"></span><span
												class="txtWarn comment-count">[1]</span></td>
											<td>김****</td>
											<td class="txtInfo txt11">2016-09-03</td>
											<td class="txtInfo txt11">759</td>
											<td class="displaynone"><img
												src="../image/ico_point_star5.png" class="ico-point"
												alt="5점"></td>
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
							<p class="first">
								<a href="#none"><img src="../image/btn_pagingFirst.png"
									class="img_on" alt="first"></a>
							</p>
							<p>
								<a href="#none"><img src="../image/btn_pagingPrev.png"
									class="img_on" alt="prev"></a>
							</p>
							<ol>
								<li class="xans-record-"><a
									href="?product_no=17&amp;cate_no=1&amp;display_group=3&amp;page_4=1#use_review"
									class="this">1</a></li>
							</ol>
							<p>
								<a href="#none"><img src="../image/btn_pagingNext.png"
									class="img_on" alt="next"></a>
							</p>
							<p class="last">
								<a href="#none"><img src="../image/btn_pagingLast.png"
									class="img_on" alt="last"></a>
							</p>
						</div>
					</div>
				</div>
				<!-- //상품사용후기 종료 -->
				<!-- 상품 Q&A 시작 -->
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
							<div class="minor displaynone">
								<p>
									<img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/product/ico_under19.gif"
										alt=""> &nbsp;<strong>"19세 미만의 미성년자"</strong>는 출입을 금합니다!
								</p>
								<p class="button">
									<a href="/intro/board.html"><img
										src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_adult_certification.gif"
										alt="성인인증 하기"></a>
								</p>
							</div>
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
											<td>7</td>
											<td class="subject left txtBreak"><img
												src="../image/icon_201703161514504700.png" alt="비밀글">
												<a
												href="/article/q-a/6/498/?no=498&amp;board_no=6&amp;spread_flag=T">방석</a><span
												class="ico-board"></span><span class="txtWarn comment-count">[1]</span>
											</td>
											<td>오****</td>
											<td class="txtInfo txt11">2018-05-17</td>
											<td class="txtInfo txt11">3</td>
										</tr>
										<tr class="xans-record-">
											<td>6</td>
											<td class="subject left txtBreak"><img
												src="../image/icon_201703161514504700.png" alt="비밀글">
												<a
												href="/article/q-a/6/433/?no=433&amp;board_no=6&amp;spread_flag=T">빠른답변좀
													부탁드립니다</a><span class="ico-board"></span><span
												class="txtWarn comment-count">[3]</span></td>
											<td>김****</td>
											<td class="txtInfo txt11">2018-03-19</td>
											<td class="txtInfo txt11">9</td>
										</tr>
										<tr class="xans-record-">
											<td>5</td>
											<td class="subject left txtBreak"><img
												src="../image/icon_201703161514504700.png" alt="비밀글">
												<a
												href="/article/q-a/6/393/?no=393&amp;board_no=6&amp;spread_flag=T">방석도
													함께오나요?</a><span class="ico-board"></span><span
												class="txtWarn comment-count">[1]</span></td>
											<td>이****</td>
											<td class="txtInfo txt11">2018-02-07</td>
											<td class="txtInfo txt11">2</td>
										</tr>
										<tr class="xans-record-">
											<td>4</td>
											<td class="subject left txtBreak"><img
												src="../image/icon_201703161514504700.png" alt="비밀글">
												<a
												href="/article/q-a/6/379/?no=379&amp;board_no=6&amp;spread_flag=T">내부</a><span
												class="ico-board"></span><span class="txtWarn comment-count">[1]</span>
											</td>
											<td>강****</td>
											<td class="txtInfo txt11">2018-01-25</td>
											<td class="txtInfo txt11">5</td>
										</tr>
										<tr class="xans-record-">
											<td>3</td>
											<td class="subject left txtBreak"><img
												src="../image/icon_201703161514504700.png" alt="비밀글">
												<a
												href="/article/q-a/6/324/?no=324&amp;board_no=6&amp;spread_flag=T">문의</a><span
												class="ico-board"></span><span class="txtWarn comment-count">[1]</span>
											</td>
											<td>최****</td>
											<td class="txtInfo txt11">2017-12-28</td>
											<td class="txtInfo txt11">2</td>
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
							<p class="first">
								<a href="#none"><img src="../image/btn_pagingFirst.png"
									class="img_on" alt="first"></a>
							</p>
							<p>
								<a href="#none"><img src="../image/btn_pagingPrev.png"
									class="img_on" alt="prev"></a>
							</p>
							<ol>
								<li class="xans-record-"><a
									href="?product_no=17&amp;cate_no=1&amp;display_group=3&amp;page_6=1#use_qna"
									class="this">1</a></li>
								<li class="xans-record-"><a
									href="?product_no=17&amp;cate_no=1&amp;display_group=3&amp;page_6=2#use_qna"
									class="other">2</a></li>
							</ol>
							<p>
								<a
									href="?product_no=17&amp;cate_no=1&amp;display_group=3&amp;page_6=2#use_qna"><img
									src="../image/btn_pagingNext.png" class="img_on" alt="next"></a>
							</p>
							<p class="last">
								<a
									href="?product_no=17&amp;cate_no=1&amp;display_group=3&amp;page_6=2#use_qna"><img
									src="resource/image/detilsPage/btn_pagingLast.png" class="img_on" alt="last"></a>
							</p>
						</div>
					</div>
				</div>
				<!-- //상품Q&A 종료 -->
			</div>

		</div>
	</div>
</body>
</html>


