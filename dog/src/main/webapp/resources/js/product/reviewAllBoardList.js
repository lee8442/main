function GetQueryString(code) {

	var reg = new RegExp("(^|&)" + code + "=([^&]*)(&|$)");

	var r = window.location.search.substr(1).match(reg);

	var url = window.location.pathname.split("/");

	if (r != null)
		return unescape(r[2]);
	else if (url[1] == 'board') {
		return url[3];
	} else
		return null;
}
var myCode = GetQueryString("board_no")
//아랫줄부터 네비게이션 소스를 수정해주세요.(윗줄내용은 수정금지)

//게시판설명
if (myCode == 0 || myCode == 0) {
	document.getElementById("board-nav1").style.display = 'table';
}

//게시판설명
else if (myCode == 0 || myCode == 0) {
	document.getElementById("board-nav2").style.display = 'table';
}

function aaa(num) {
	location.href='selectReviewDetail.do?num='+num;
}
function productSearch(){
	var sel=document.getElementById('search_option').value;
	var keyword = $('#search').val();
	if(sel=='검색'){
		return;
	}
	location.href='reviewAllBoardList.do?page=1&sel='+sel+'&keyword='+keyword;
}
function frmPaging() {
    document.getElementById("frmPaging").submit();
}
function check(){
	if(document.search.keyword.value ==""){
		alert("검색어를 입력하세요 ");
		document.search.keyword.fous();
		return;
	}
	document.search.submit();
}
$("span").css("pointer-events", "none");


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
$(document).on('ready', function(){
    $('.kv-ltr-theme-svg-star').rating({
        hoverOnClear: false,
        theme: 'krajee-svg'
    }); 
});