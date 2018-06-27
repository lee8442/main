$("#search_text")
		.keyup(
				function() {
					if ($("#search_select").val() == "아이디") {
						var k = $(this).val();
						$("#list-table > tbody > tr").hide();
						var temp = $("#list-table > tbody > tr > td:nth-child(6n+2):contains('"
								+ k + "')");
						$(temp).parent().show();
					} else if ($("#search_select").val() == "회원이름") {
						var k = $(this).val();
						$("#list-table > tbody > tr").hide();
						var temp = $("#list-table > tbody > tr > td:nth-child(6n+3):contains('"
								+ k + "')");
						$(temp).parent().show();
					}
				});
$("#list-table > tbody > tr").hover(function() {
	$(this).find(".mode_button").prop("type", "button");
}, function() {
	$(this).find(".mode_button").prop("type", "hidden");
});
$(document).ready(function() {
	var k = $("#list-table>tbody>tr").length;
	$('#member_count').html("<p>총 회원수 : " + k + "</p>");
});
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
	if ($('input[name=details-address]').val() == "") {
		$('input[name=details-address]').focus();
	}
}
$(document).on('click', '#delete', function() {
	var id = $(this).parent().siblings('td:eq(1)').text();
	if (confirm("삭제 하시겠습니까?")) {
		$.ajax({
			url : "deleteMember.ado",
			method : "POST",
			data : {
				id : id
			},
			success : function(data) {
				location.reload();
			}
		});
	} else {
		return false;
	}
});