function deleteCheck(){
	var password = $('#password').val();
	var pass =Number(password);
	var num = $(".this:first tr:first td:last-child").text();
	if(pass >0 ){
		alert('삭제되었습니다')
		location.href='delete.do?num='+ num;
	}else{
		alert('비밀번호를 확인하세요')
	}
}

function updateCheck(){
	var password = $('#password').val();
	var pass =Number(password);
	var num = $(".this:first tr:first td:last-child").text();
	if(pass >0 ){
		alert("수정")
		location.href='updateInquiry.do?num='+num+'&password='+password;
	}else{
		alert('비밀번호를 확인하세요')
	}
	
}

function aaa(num) {
	location.href='productInquiryDetail.do?num='+num;
}

$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('#MOVE_TOP_BTN').fadeIn();
        } else {
            $('#MOVE_TOP_BTN').fadeOut();
        }
    });
    
    $("#MOVE_TOP_BTN").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });
});

