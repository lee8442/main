
   
   function deleteCheck(num){
	   var password = $('#password').val();
		var pass =Number(password);
		var num =$(".xans-record- tr:first td:last-child").text();
		
		if(pass > 0 ){
			alert('삭제되었습니다')
			location.href='deleteReview.do?num='+ num;
		}else{
			alert('비밀번호를 확인하세요')
		}
	}
   

