var bigcode = 0;
var smallcode = 0;
function bigChoice() {
	var sel = document.getElementById("big");
	bigcode = sel.options[sel.selectedIndex].value;
	if (bigcode == 0) {
		$('#small').attr('disabled', 'true');
	}
	if (bigcode != 0) {
		$('#small').removeAttr("disabled");
	}
	if (bigcode == 0) {
		bigcode = "코드를 선택하세요.";
	}
	if (bigcode == 1) {
		bigcode = "A";
	}
	if (bigcode == 2) {
		bigcode = "B";
	}
	if (bigcode == 3) {
		bigcode = "C";
	}
	if (bigcode == 4) {
		bigcode = "D";
	}
	if (bigcode == 5) {
		bigcode = "E";
	}
	if (bigcode == 6) {
		bigcode = "F";
	}
	if (bigcode == 7) {
		bigcode = "G";
	}
	if (bigcode == 8) {
		bigcode = "H";
	}
	if (bigcode == 9) {
		bigcode = "I";
	}
	if (bigcode == 10) {
		bigcode = "J";
	}
	$("#code").val(bigcode);
}
function smallChoice() {
	var sel = document.getElementById("small");
	smallcode = sel.options[sel.selectedIndex].value;
	
	if(smallcode == 0){
		$('#witer_code').attr('disabled', 'true');
		$('#witer_code').val("");
		$("#code").val(bigcode);
		$("#small_code").val(0);
	}
	if(smallcode != 0){
		$('#witer_code').removeAttr("disabled");
		$('#witer_code').val("");
		$("#small_code").val(smallcode);
		if (smallcode == 1) {
			smallcode = "a";
		}
		if (smallcode == 2) {
			smallcode = "b";
		}
		if (smallcode == 3) {
			smallcode = "c";
		}
		if (smallcode == 4) {
			smallcode = "d";
		}
		if (smallcode == 5) {
			smallcode = "e";
		}
		if (smallcode == 6) {
			smallcode = "f";
		}
		if (smallcode == 7) {
			smallcode = "g";
		}
		if (smallcode == 8) {
			smallcode = "h";
		}
		if (smallcode == 9) {
			smallcode = "i";
		}
		if (smallcode == 10) {
			smallcode = "j";
		}
		if (smallcode == 11) {
			smallcode = "k";
		}
		if (smallcode == 12) {
			smallcode = "l";
		}
		if (smallcode == 13) {
			smallcode = "m";
		}
		if (smallcode == 14) {
			smallcode = "n";
		}
		if (smallcode == 15) {
			smallcode = "o";
		}
		if (smallcode == 16) {
			smallcode = "p";
		}
		if (smallcode == 17) {
			smallcode = "q";
		}
		if (smallcode == 18) {
			smallcode = "r";
		}
		if (smallcode == 19) {
			smallcode = "s";
		}
		if (smallcode == 20) {
			smallcode = "t";
		}
		if (smallcode == 21) {
			smallcode = "u";
		}
		if (smallcode == 22) {
			smallcode = "v";
		}
		if (smallcode == 23) {
			smallcode = "w";
		}
		if (smallcode == 24) {
			smallcode = "x";
		}
		if (smallcode == 25) {
			smallcode = "y";
		}
		if (smallcode == 25) {
			smallcode = "z";
		}
		$("#code").val(bigcode + smallcode);
	}
}
$(document).ready(function() {
	$("#witer_code").on('input', function() {
		$("#code").val(bigcode + smallcode + $("#witer_code").val());
		var a = $("#code_03").val();
	});
	if (bigcode == 0) {
		$('#small').attr('disabled', 'true');
		$("#witer_code").attr('disabled', 'true');
		bigcode = "코드를 선택하세요.";
		$("#code").val(bigcode);
	}
});
