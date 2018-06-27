var newImage;
var newCode;

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
	showSlides(slideIndex += n);
}
function currentSlide(n) {
	showSlides(slideIndex = n);
}

function showSlides(n) {
	var i;
	var x = document.getElementsByClassName("imageLogin");
	if (n > x.length) {
		slideIndex = 1
	}
	if (n < 1) {
		slideIndex = x.length
	}
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";

	}
	x[slideIndex - 1].style.display = "block";
}

$(document).ready(function() {
	/* 베스트상품 세일가격 */
	/*
	 * var fileValue = $("input[name='price']").length;
	 * 
	 * var fileData = new Array(fileValue); var fileData1 = new
	 * Array(fileValue);
	 * 
	 * var inp = document.getElementsByName("saleprice"); var ina =
	 * document.getElementsByName("price");
	 * 
	 * for (var i = 0; i < fileValue; i++) {
	 * 
	 * inp[i].value = fileData[i] = $("input[name='price']")[i].value 0.7 + "원";
	 * 
	 * ina[i].value = fileData1[i] = $("input[name='price']")[i].value + "원";
	 * 
	 * inp[i].readOnly = true; ina[i].readOnly = true; }
	 */

	var newImageValue = $("input[name='newimage']").length;
	newImage1 = new Array(newImageValue);

	for (var i = 0; i < newImageValue; i++) {
		newImage1[i] = $("input[name='newimage']")[i].value;
	}
});

// 신상품 자동슬라이더
var interval = 2500;
var n = 0;

function rotate() {

	var newImageValue = $("input[name='newimage']").length;
	newImage1 = new Array(newImageValue);

	var newCodeValue = $("input[name='newcode']").length;
	newCode1 = new Array(newCodeValue);

	for (var i = 0; i < newCodeValue; i++) {
		newCode1[i] = $("input[name='newcode']")[i].value;
	}

	for (var i = 0; i < newImageValue; i++) {
		newImage1[i] = $("input[name='newimage']")[i].value;
	}

	var img = new Array();

	img[0] = new Image();
	img[0].src = newImage1[0];
	img[1] = new Image();
	img[1].src = newImage1[1];
	img[2] = new Image();
	img[2].src = newImage1[2];

	var imgs = new Array(newImage1[0], newImage1[1], newImage1[2]);

	if (navigator.appName == "Netscape" && document.getElementById) {
		document.getElementById("slide").src = imgs[n];
	} else
		document.images.slide.src = imgs[n];
	(n == (imgs.length - 1)) ? n = 0 : n++;
	if (n == 1) {
		$('.b').prop('href', "detailPage.do?code=" + newCode1[0]);
	}
	if (n == 2) {
		$('.b').prop('href', "detailPage.do?code=" + newCode1[1]);
	}
	if (n == 0) {
		$('.b').prop('href', "detailPage.do?code=" + newCode1[2]);
	}
	setTimeout("rotate()", interval);
}
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
function goMyPage() {
	window.location.href = "myPage.do";
}
function goAdminPage() {
	window.location.href = "main.ado";
}
