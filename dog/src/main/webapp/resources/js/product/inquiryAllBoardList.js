/**
 * 
 */function GetQueryString(code) {
	var reg = new RegExp("(^|&)" + code + "=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	var url = window.location.pathname.split("/");
	if(r!=null)
		return unescape(r[2]);
	else if(url[1]=='board'){
		return url[3];
	}else
		return null;
}
var myCode = GetQueryString("board_no")
//아랫줄부터 네비게이션 소스를 수정해주세요.(윗줄내용은 수정금지)


//게시판설명
if (myCode == 0 || myCode == 0) 
{ document.getElementById("board-nav1").style.display = 'table'; }


//게시판설명
else if (myCode == 0 || myCode == 0)
{ document.getElementById("board-nav2").style.display = 'table'; }
