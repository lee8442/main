$(document).ready(function() {
	if (loginErr == "false") {
		alert("입력한 회원 정보가 올바르지 않습니다.");
	}
});

function loginCheck() {
	if ($("#id").val() == "") {
		alert("아이디를 입력하세요.");
		$("#id").focus();
		return false;
	}
	if ($("#pass").val() == "") {
		alert("비밀번호를 입력하세요.");
		$("#pass").focus();
		return false;
	}
	return true;
}
