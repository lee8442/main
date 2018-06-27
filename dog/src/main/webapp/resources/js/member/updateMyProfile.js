// 아이디 영문자 대소문자 숫자로 시작가능 5 ~ 15자 끝날 때 제한없음
var idReg = /^[^0-9a-zA-Z]{5,15}/g;

// 한글 이름 2 ~ 5자 이내
var nameReg = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣a-zA-Z]{2,10}$/;

// 전화 번호 – 예, 123-123-2344 혹은 123-1234-1234:
var phoneReg = /(\d{3}).*(\d{3}).*(\d{4})/;

// 조건1. 6 ~ 20 영문 대소문자
// 조건2. 최소 1개의 숫자 혹은 특수 문자를 포함해야 함
var passReg = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;

// 이메일
var emailReg = /^[A-Za-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;


// 모든 input의 공백 제거
/*
 * $('input').change( function(e) { if (e.target.name != "address-search" &&
 * e.target.name != "details-address") { e.target.value =
 * e.target.value.replace(/\s/gi, ""); }
 * 
 * });
 */

// 아이디 input에 특수 문자와 한글 방지, 15자 넘어가면 이름 input으로 포커스
function idInput(obj) {
	var val = obj.value;
	if (/[^A-Za-z0-9]/g.test(val)) {
		obj.value = val.replace(/[^A-Za-z0-9]/g, "");
	} else if (obj.value.length > 14) {
		obj.value = val.substring(0, 15);
		$('input[name=name]').focus();
	}
}

// 아이디 input이 값이 변경될 때
function idChange() {
	$('h5').text("아이디 중복 확인을 하세요.");
	$('h5').css("color", "red");
	id_check = 0;
	if ($('input[name=id]').val() == "") {
		$('h5').text("아이디를 입력하세요.");
		$('h5').css("color", "black");
	}
}
// 전화번호 select 값이 변경될 때 전화번호2 input으로 포커스
$('select[name=phone1]').change(function(e) {
	$('input[name=phone2]').focus();
});

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
			$('input[name=password]').focus();
		}
	}
}

// 비밀번호 input에 한글과 공백 방지, 20자 넘어가거나 비밀번호 확인 결과가 일치하면 주민등록번호 input으로 포커스
function passwordInput(obj) {
	var val = obj.value;
	if (/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g.test(val)) {
		obj.value = val.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g, "");
	} else if (obj.value.length > 19) {
		obj.value = val.substring(0, 20);
		$('input[name=repassword]').focus();
	}
	val = val.substring(0, 20);
	if (passReg.test(val)) {
		$('#passCheck').text("양식에 올바릅니다.");
		$('#passCheck').css("color", "green");
	} else {
		$('#passCheck').text("양식에 올바르지 않습니다.");
		$('#passCheck').css("color", "red");
	}
	if ($('input[name=password]').val() == $('input[name=repassword]').val()
			&& $('input[name=password]').val() != ""
			&& $('input[name=repassword]').val() != "") {
		$('#repassCheck').text("비밀번호와 비밀번호 확인이 일치합니다.");
		$('#repassCheck').css("color", "green");
		$('input[name=jumin1]').focus();
	} else {
		$('#repassCheck').text("비밀번호와 비밀번호 확인이 불일치합니다.");
		$('#repassCheck').css("color", "red");
	}
}

// 비밀번호와 비밀번호 확인 input의 값이 일치하는지 확인, 20자 넘어가거나 비밀번호 확인 결과가 일치하면 주민등록번호 input으로
// 포커스
function repasswordInput(obj) {
	var val = obj.value;
	if (/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g.test(val)) {
		obj.value = val.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g, "");
	} else if (obj.value.length > 19) {
		obj.value = val.substring(0, 20);
		$('input[name=jumin1]').focus();
	}
	if ($('input[name=password]').val() == $('input[name=repassword]').val()) {
		$('#repassCheck').text("비밀번호와 비밀번호 확인이 일치합니다.");
		$('#repassCheck').css("color", "green");
		$('input[name=jumin1]').focus();
	} else {
		$('#repassCheck').text("비밀번호와 비밀번호 확인이 불일치합니다.");
		$('#repassCheck').css("color", "red");
	}
}
// 이메일 input에 한글과 공백 방지
function emailInput(obj) {
	var val = obj.value;
	if (/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g.test(val)) {
		obj.value = val.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g, "");
	}
}

// 주소검색을 수행할 팝업 페이지를 호출합니다.
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
	if ($('input[name=details-address]').val() == "") {
		$('input[name=details-address]').focus();
	} else {
		$('input[name=email]').focus();
	}
}
// 정보수정 양식 체크
function updateChcek() {
	var phone = $('select[name=phone1]').val() + $('input[name=phone2]').val()
			+ $('input[name=phone3]').val();
	$('input[name=phone]').val(phone);
	var registration = $('input[name=jumin1]').val()
			+ $('input[name=jumin2]').val();
	$('input[name=registration]').val(registration);
	var address = $('input[name=address-search]').val() + " "
			+ $('input[name=details-address]').val();
	$('input[name=address]').val(address);
	if ($('select[name=email-list]').val() == "직접 입력") {
		var email = $('input[name=tempEmail]').val();
		$('input[name=email]').val(email);
	} else {
		var email = $('input[name=tempEmail]').val() + "@"
				+ $('select[name=email-list]').val();
		$('input[name=email]').val(email);
	}

	if (!phoneReg.test($('input[name=phone]').val())) {
		alert("전화번호를 올바르게 입력하세요.");
		$('input[name=phone2]').focus();
		return false;
	}
	if (!passReg.test($('input[name=password]').val())) {
		alert("비밀번호는 6 ~ 20자 사이 영문, 최소 1자의 숫자 또는 특수 문자를 포함하여 입력하세요.");
		$('input[name=password]').focus();
		return false;
	}
	if ($('input[name=password]').val() != $('input[name=repassword]').val()) {
		alert("비밀번호 확인이 비밀번호와 다릅니다.")
		$('input[name=repassword]').focus();
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
	if (!emailReg.test($('input[name=email]').val())) {
		alert("이메일을 올바르게 입력하세요.");
		$('input[name=tempEmail]').focus();
		return false;
	}
	return true;
	alert("정보수정이 완료되었습니다.")
}
$(document).ready(function() {
	if (msg == "true") {
		alert("고객님의 정보가 수정되었습니다.");
	}
});