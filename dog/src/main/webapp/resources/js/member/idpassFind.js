$(document).ready(function() {
	$(".tab_content").hide();
	$("ul.tab li:first").addClass("active").show();
	$(".tab_content:first").show();
	$("ul.tab li").click(function() {
		$("ul.tab li").removeClass("active");
		$(this).addClass("active");
		$(".tab_content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		return false;
	});
});
// 전화번호 input에 숫자만 들어오도록 함, 값이 다 입력되면 비밀번호 input으로 포커스
function phoneInput(obj) {
	var val = obj.value;
	if (/[^0-9]/g.test(val)) {
		obj.value = val.replace(/[^0-9]/g, "");
	} else if (obj.value.length > 3) {
		if (obj.name == "phone2") {
			$('input[name=phone3]').focus();
		} else if (obj.name == "phone3") {
			$('input[name=password]').focus();
		}
	}
}

function openCity(evt, Name) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(Name).style.display = "block";
	evt.currentTarget.className += " active";
}
var emailReg = /^[A-Za-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
$(document).ready(function() {
	if (loginErr == "false") {
		alert("입력한 회원 정보가 올바르지 않습니다.");
	}
});
function checkForm() {
	if (!emailReg.test($('input[name=email]').val())) {
		alert("이메일을 올바르게 입력하세요.");
		$('input[name=tempEmail]').focus();
		return false;
	}
	return true;
}
function checkFormTwo() {
	if (!emailReg.test($("#pass_email").val())) {
		alert("이메일을 올바르게 입력하세요.");
		$('#pass_emai').focus();
		return false;
	}
	return true;
}