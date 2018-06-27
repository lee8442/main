function kakaoPay() {
	if (insertCheck() == true) {
		// 결제 모듈 호출
		IMP.init('imp38975389'); // 가맹점 식별코드
		IMP.request_pay({
			pg : 'kakaopay',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'aaa',
			amount : 1000,
			buyer_email : 'aa',
			buyer_name : 'aa',
			buyer_tel : "01092477288",
			buyer_addr : '',
			buyer_postcode : '',
			kakaoOpenApp : true
		}, function(rsp) {
			if (rsp.success) {
				alert("결제가 완료되었습니다!");
				$("#hiddenPaymentForm").submit();
			} else {
				alert("결제 실패 : " + rsp.error_msg);
				return false;
			}
		});
	}
}

// 결제방법(계좌이체, 무통장 카드)
function openCity(evt, payment) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(payment).style.display = "block";
	evt.currentTarget.className += " active";
}

$(document)
		.ready(
				function() {
					var tabcontent;
					tabcontent = document.getElementsByClassName("tabcontent");
					tabcontent[0].style.display = "block";

					var size = $("input[name='result']").length;
					var price = "";
					var amount = "";
					var result = "";
					var resultBottom = 0;
					var point = 0;
					for (i = 0; i < size; i++) {
						price = $("input[name='price']").eq(i).attr("value");
						amount = $("input[name='amount']").eq(i).attr("value");

						result = $("input[name='result']").eq(i).val(
								price * amount);
						$("input[name='point']").eq(i).val(
								price * amount * 0.01);
						resultBottom += Number(price) * Number(amount);
					}
					$(".order_table_resultBottom").text(resultBottom);
					if ($(".order_table_resultBottom").text() <= 30000) {
						$(".order_table_deliveryMoney").text("5000");
					} else {
						$(".order_table_deliveryMoney").text("0");
					}
					$(".order_table_paymentMoney").text(
							Number(resultBottom)
									+ Number($(".order_table_deliveryMoney")
											.text()));
					$(".middleresult").text(
							Number(resultBottom)
									+ Number($(".order_table_deliveryMoney")
											.text()));
					$(".finalresult").text(
							Number(resultBottom)
									+ Number($(".order_table_deliveryMoney")
											.text()));
					$(".montant").val(
							Number(resultBottom)
									+ Number($(".order_table_deliveryMoney")
											.text()));

					// 적립포인트 저장
					var fileValue = $("input[name='point']").length;
					var left_point = 0;
					for (var i = 0; i < fileValue; i++) {
						left_point += Number($("input[name='point']")[i].value);
					}
					// 포인트 조회
					$.ajax({
						url : "memeberpoint.do",
						type : "post",
						success : function(data) {
							$(".dbPoint").text("사용가능 포인트 : " + data + "원");
							$(".left_point").val(data + left_point);
							$(".savemoney").val(data);
							point = data;
						},
					});

					// 포인트 사용 버튼
					$(".savemoneyuse")
							.click(
									function() {
										var val = Number($("#pointview").val());
										if (/[^0-9]/g.test(val)) {
											$("#pointview").val("0");
											alert("숫자만 가능합니다");
										}
										if ($(".savemoney").val() > point) {
											alert("포인트가 부족합니다.")
										}
										/*
										 * else if($(".savemoney").val() >
										 * $(".finalresult") .text()){
										 * alert("최종금액보다 포인트가 큽니다.") }
										 */

										else {
											$(".use_point").text(
													"사용할 포인트 : "
															+ $(".savemoney")
																	.val()
															+ "원");
											$(".dbPoint")
													.text(
															"사용가능 포인트 : "
																	+ (point - $(
																			".savemoney")
																			.val())
																	+ "원");
											$(".finalpoint")
													.text(
															$(".savemoney")
																	.val()
																	+ "원");
											$(".finalresult")
													.text(
															Number($(
																	".middleresult")
																	.text())
																	- Number($(
																			".savemoney")
																			.val()));
											$("#user_point").val(
													$(".savemoney").val());
											$(".left_point").val(
													point
															- $(".savemoney")
																	.val()
															+ left_point);
										}
									});
				});
// 주소검색
function goPopup() {
	// 호출된 페이지(jusopopup.jsp)에서 실제
	// 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("mapSearch.do", "pop", "post",
			"width=570,height=420, scrollbars=yes, resizable=yes");
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제
	// 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes,
	// resizable=yes");
}

// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2,
		engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm,
		bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn,
		lnbrMnnm, lnbrSlno, emdNo) {
	$('input[name=address-search]').val(roadAddrPart1);
	$('input[name=details-address]').val(addrDetail);
	/*
	 * document.form.roadFullAddr.value = roadFullAddr;
	 * document.form.roadAddrPart1.value = roadAddrPart1;
	 * document.form.roadAddrPart2.value = roadAddrPart2;
	 * document.form.addrDetail.value = addrDetail; document.form.engAddr.value =
	 * engAddr; document.form.jibunAddr.value = jibunAddr;
	 * document.form.zipNo.value = zipNo; document.form.admCd.value = admCd;
	 * document.form.rnMgtSn.value = rnMgtSn; document.form.bdMgtSn.value =
	 * bdMgtSn; document.form.detBdNmList.value = detBdNmList;
	 * document.form.bdNm.value = bdNm; document.form.bdKdcd.value = bdKdcd;
	 * document.form.siNm.value = siNm; document.form.sggNm.value = sggNm;
	 * document.form.emdNm.value = emdNm; document.form.liNm.value = liNm;
	 * document.form.rn.value = rn; document.form.udrtYn.value = udrtYn;
	 * document.form.buldMnnm.value = buldMnnm; document.form.buldSlno.value =
	 * buldSlno; document.form.mtYn.value = mtYn; document.form.lnbrMnnm.value =
	 * lnbrMnnm; document.form.lnbrSlno.value = lnbrSlno;
	 * document.form.emdNo.value = emdNo;
	 */
}

// 전화번호 input에 숫자만 입력, 값이 다 입력되면 비밀번호 input으로 포커스
function phoneInput(obj) {
	var val = obj.value;
	if (/[^0-9]/g.test(val)) {
		obj.value = val.replace(/[^0-9]/g, "");
	} else if (obj.value.length > 3) {
		if (obj.name == "phone2") {
			obj.value = val.substring(0, 4);
			$('input[name=phone3]').focus();
		} else if (obj.name == "phone3") {
			obj.value = val.substring(0, 4);
			$('input[name=pointview]').focus();
		}
	}
}

// 전화번호 select 값이 변경될 때 전화번호2 input으로 포커스
$('select[name=phone1]').change(function(e) {
	$('input[name=phone2]').focus();
});

// 이름 input에 특수 문자와 숫자 방지, 10자 넘어가면 전화번호 input으로 포커스
function nameInput(obj) {
	var val = obj.value;
	if (/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣A-Za-z]/g.test(val)) {
		obj.value = val.replace(/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣A-Za-z]/g, "");
	} else if (obj.value.length > 9) {
		obj.value = val.substring(0, 10);
		$('select[name=phone1]').focus();
	}
}

// 포인트 숫자만 입력가능
function pointInput(obj) {
	var val = obj.value;
	if (/[^0-9]/g.test(val)) {
		obj.value = val.replace(/[^0-9]/g, "");
	}
}

function insertCheck() {
	var nameReg = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣a-zA-Z]{2,10}$/;
	// 주소 입력칸
	var delivery_address = $('input[name=address-search]').val()
			+ $('input[name=details-address]').val();
	$('input[name=delivery_address]').val(delivery_address);
	// 전화번호 모으기
	var phone = $("#phone1").val() + $("#phone2").val() + $("#phone3").val();
	$('input[name=phone]').val(phone);
	// 전화 번호 – 예, 123-123-2344 혹은 123-1234-1234:
	var phoneReg = /(\d{3}).*(\d{3}).*(\d{4})/;
	// 결제 방법
	var radioVal = $('input[name="radio"]:checked').val();

	var result = $(".finalresult").text();

	// 이름란 확인
	if (!nameReg.test($('input[name=name]').val())) {
		alert("이름은 2 ~ 10자 사이 한글, 영문으로 입력하세요.");
		$('input[name=name]').focus();
		return false;
	}
	if (!phoneReg.test($('input[name=phone]').val())) {
		alert("전화번호를 올바르게 입력하세요.");
		$('input[name=phone2]').focus();
		return false;
	}

	if ($('input[name=address-search]').val() == "") {
		alert("주소를 검색하세요.");
		$('input[name=address-search]').focus();
		return false;
	}
	if ($('input[name=details-address]').val() == "") {
		alert("상세주소를 입력하세요.");
		$('input[name=details-address]').focus();
		return false;
	}
	if ($('input[name=message]').val() == "") {
		alert("남기실 말씀을 입력하세요.");
		$('input[name=message]').focus();
		return false;
	}
	// 카드결제시
	if (radioVal == "card") {
		$(".cardnum").val(result);
		$(".account").val("0");
		$(".bankbook").val("0");
	}
	// 계좌이체시
	if (radioVal == "account") {
		$(".account").val(result);
		$(".cardnum").val("0");
		$(".bankbook").val("0");
	}
	// 무통장입금시
	if (radioVal == "bankbook") {
		$(".bankbook").val(result);
		$(".cardnum").val("0");
		$(".account").val("0");
	}
	return true;
}
