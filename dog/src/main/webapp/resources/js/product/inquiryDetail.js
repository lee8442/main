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
	var num = $(".this:first tr:first td:last-child").text();
	location.href='updateInquiry.do?num='+num;
}

//답글 처리 


