// 아이디 영문자 대소문자 숫자로 시작가능 5 ~ 15자 끝날 때 제한없음
var idReg = /^[A-Za-z0-9]{5,15}/g;

// 조건1. 6 ~ 20 영문 대소문자
// 조건2. 최소 1개의 숫자 혹은 특수 문자를 포함해야 함
var passReg = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;

// 한글 이름 2 ~ 5자 이내
var nameReg = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣a-zA-Z]{2,10}$/;

// 전화 번호 – 예, 123-123-2344 혹은 123-1234-1234:
var phoneReg = /(\d{3}).*(\d{3}).*(\d{4})/;

// 이메일
var emailReg = /^[A-Za-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;

var id_check = 0;

// 모든 input의 공백 제거
$('input').change(
		function(e) {
			if (e.target.name != "address-search"
					&& e.target.name != "details-address") {
				e.target.value = e.target.value.replace(/\s/gi, "");
			}

		});

// 아이디 input에 특수 문자와 한글 방지, 15자 넘어가면 이름 input으로 포커스
function idInput(obj) {
	var val = obj.value;
	if (/[^A-Za-z0-9]/g.test(val)) {
		obj.value = val.replace(/[^A-Za-z0-9]/g, "");
	} else if (obj.value.length > 14) {
		$('input[name=name]').focus();
	}
}

// 아이디 input이 값이 변경될 때
function idChange() {
	$('h5').text("아이디 중복 확인을 하세요.");
	$('h5').css("color", "red");
	if ($('input[name=id]').val() == "") {
		$('h5').text("아이디를 입력하세요.");
		$('h5').css("color", "black");
	}
}

// 아이디 중복 확인
function idCheck() {
	if ($('input[name=id]').val() != "") {
		$.ajax({
			url : 'idCheck.do',
			type : 'post',
			data : {
				id : $('input[name=id]').val()
			},
			success : function(data) {
				if (data == 0) {
					$('h5').text("가입 가능한 아이디입니다.");
					$('h5').css("color", "green");
					id_check = 1;
				} else if (data == 1) {
					$('h5').text("가입 불가능한 아이디입니다.");
					$('h5').css("color", "red");
					id_check = 0;
				}
			},
			error : function() {
				alert('실패');
			}
		});
	} else {
		alert("아이디를 입력해주세요.");
	}
}

// 이름 input에 특수 문자와 한글 방지, 10자 넘어가면 전화번호 input으로 포커스
function nameInput(obj) {
	var val = obj.value;
	if (/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣A-Za-z]/g.test(val)) {
		obj.value = val.replace(/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣A-Za-z]/g, "");
	} else if (obj.value.length > 9) {
		$('select[name=phone1]').focus();
	}
}



function phoneOption() {
	alert("11");
	//$('input[name=phone2]').focus();
}

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

// 회원가입 양식 체크
function insertCheck() {
	var registration = $('input[name=jumin1]').val()
			+ $('input[name=jumin2]').val();
	$('input[name=registration]').val(registration);
	var phone = $('select[name=phone1]').val() + $('input[name=phone2]').val()
			+ $('input[name=phone3]').val();
	$('input[name=phone]').val(phone);
	var address = $('input[name=address-search]').val() + " "
			+ $('input[name=details-address]').val();
	$('input[name=address]').val(address);
	/*
	 * alert($('input[name=id]').val()); alert($('input[name=name]').val());
	 * alert($('input[name=password]').val());
	 * alert($('input[name=registration]').val());
	 * alert($('input[name=address]').val());
	 * alert($('input[name=email]').val()); alert($('input[name=phone]').val());
	 */

	if (!idReg.test($('input[name=id]').val())) {
		alert("아이디는 5 ~ 15자 사이 영문 대/소문자, 숫자로 입력하세요.");
		return false;
	}
	if (id_check == 0) {
		alert("아이디 중복 확인을 하세요.");
		return false;
	}
	if (!passReg.test($('input[name=password]').val())) {
		alert("비밀번호는 6 ~ 20자 사이 최소 1개 숫자 혹은 특수 문자를 포함하여 입력하세요.");
		return false;
	}
	if ($('input[name=password]').val() != $('input[name=repassword]').val()) {
		alert("비밀번호가 비밀번호 확인과 다릅니다.")
		return false;
	}
	if (!nameReg.test($('input[name=name]').val())) {
		alert("이름은 2~5자 사이 한글 또는 영문 대/소문자로 입력하세요.");
		return false;
	}
	if (!emailReg.test(document.newmemberForm.newmemberEmail.value)) {
		alert("이메일 형식이 맞는지 확인하세요.");
		return false;
	}
	if (email_check != 1) {
		alert("이메일 인증을 받으세요");
		return false;
	}
	/*
	 * pass = $('#newmemberPass').val(); var shapass = SHA256(pass);
	 * $('#newmemberPass').val(shapass); $('#newmemberPass2').val(shapass);
	 */
	alert("환영합니다! #dog 회원가입이 완료되었습니다!");
	return true;
}
