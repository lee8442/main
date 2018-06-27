$(document).ready(function() {
	if (falseMSG == "false") {
		alert("비밀번호가 맞지 않습니다.");
	}
});

var passReg = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;

function passwordInput(obj) {
	var val = obj.value;
	if (/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g.test(val)) {
		obj.value = val.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣\s]/g, "");
	} else if (obj.value.length > 19) {
		obj.value = val.substring(0, 20);
		return false;
	}
	return true;
}
function realDelete() {
	if (confirm("정말 탈퇴하시겠습니까?") == true) {
		document.form.submit();
	} else {
		return false;
	}
}
$(".deleteClick").click(function() {
	if ($('input[name=password]').val() == "") {
		alert("비밀번호를 입력해주세요");
		return false;
	} /*
		 * else if (confirm("정말 탈퇴하시겠습니까?") == true) { document.form.submit();
		 * return true; }
		 */
	return true;
});
