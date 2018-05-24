/**
 * 
 */
function insertCheck() {
	var idtext = document.getElementById("id");
	var jumin = document.getElementById('jumin1').value + document.getElementById('jumin2').value;
	var passtext = document.getElementById("pass");
	var repasstext = document.getElementById("repass");


	var id = idtext.value;
	var pass= passtext.value;
	var repass = repasstext.value;
	
	var fmt = /^\d{6}[1234]\d{6}$/;  

	var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
	var regname = /^[가-힝]{2,}$/;
	var pwExp = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;

	
	if (!regExp1.test(id)) {
		alert("아이디 형식에 맞춰 입력하세요");
		idtext.value ="";
		idtext.focus();
		return false;
	}

	if (!$("#name").val()) {
		$("#name").focus();
		alert("이름을 입력하세요");
		return false;
	}

	if (!$("#phone").val()) {
		$("#phone").focus();
		alert("전화번호를 입력하세요");
		return false;
	}

	var phone = /^[0-9]+$/;
	if (!phone.test($("#phone").val())) {
		alert("(-)없이 '숫자'만 입력 하세요");
		return false;
	}


	else if (!pwExp.test(pass)) {
		alert("형식에 맞춰 비밀번호를 입력하세요.");
		passtext.value ="";
		passtext.focus();
		return false;
	}
	
	else if (!(repass.slice(0, repass.length) === pass.slice(0, pass.length))) {
        alert("비밀번호가 동일하지 않습니다.");
        repasstext.value = "";
        repasstext.focus();
        return false;
    } 
    else if ((repass.slice(0, repass.length) === id.slice(0, id.length))) {
        alert("비밀번호가 ID와 동일하면 안됩니다.");
        passtext.value = "";
        passtext.focus();
        repasstext.value = "";
        repasstext.focus();
        return false;
    }
	

    
	if (!$("#address").val()) {
		$("#address").focus();
		alert("주소를 입력하세요");
		return false;
	}
	if (!$("#details-address").val()) {
		$("#details-address").focus();
		alert("주소를 입력하세요");
		return false;
	}

	var email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	if (!email.test($("#email").val())) {
		alert("이메일 형식으로 입력하세요");
		return false;
	}
}

