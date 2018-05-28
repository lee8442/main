$('.starRev span').click(function(){
	console.log('star click');
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});

$('#selectStar1').click(function(){
	$('#selectStar').val('1');
});

$('#selectStar2').click(function(){
	$('#selectStar').val('2');
});

$('#selectStar3').click(function(){
	$('#selectStar').val('3');
});

$('#selectStar4').click(function(){
	$('#selectStar').val('4');
});

$('#selectStar5').click(function(){
	$('#selectStar').val('5');
});


function  formCheck(){
	window.alert($('#selectStar').val());
	var board_subject = document.boardForm.board_subject.value;
	var board_content = document.boardForm.board_content.value;
	var star;
	if(board_subject == null || board_subject==""){
		window.alert("제목을 입력하세요.");
		document.boardForm.board_subject.focus();
		return false;
	}
	if(board_content==null || board_content==""){
		window.alert("내용을 입력하세요.");
		document.boardForm.board_content.focus();
		return false;
	}
	
	
}