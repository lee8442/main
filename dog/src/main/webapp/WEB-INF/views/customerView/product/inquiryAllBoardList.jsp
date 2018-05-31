<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product/inquiryAllBoardList.css">
</head>
<body>
<div id="container">
		<div id="contents">
			
<div class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 "><div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 location-board "><div class="path-board">
            <h2>현재 위치</h2>
            <ol>
                <li title="현재 위치"><strong>Q &amp; A</strong></li>
            </ol>
</div>
<div class="tit-board">
	        <p class="img"></p>
            <h2><font color="333333">Q &amp; A</font> </h2>
            <p class="info">상품 Q&amp;A입니다.</p>
        </div>
</div>
<!--
	※ 게시판 네비게이션 설정 ※
	[설명]특정게시판의 상단에 원하는 html을 display 시킵니다.
	[중요]디자인플로어는 해당파일에 대한 설정방법,변형방법등의 안내를 서비스하지 않습니다.
-->
<!-- 메뉴1 -->
<ul id="board-nav1" class="board-nav-style1" style="display:none">
<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
</ul>
<!-- 메뉴2 --><ul id="board-nav2" class="board-nav-style1" style="display:none">
<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
	<li><a href="/board/%EC%8A%A4%ED%82%A8%ED%8F%B4%EB%8D%94/list.html?board_no=%EC%BD%94%EB%93%9C">NAME</a></li>
</ul>
<script>
function GetQueryString(code) {
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
</script><style>
.board-nav-style1 { font-size:0; margin:30px auto 30px }
.board-nav-style1 li { display:inline-block; *display:inline; *zoom:1; margin:0 8px; font-family:Roboto, 'Nanum Gothic', Dotum, '돋움', AppleGothic, sans-serif; font-weight:400; font-size:11px }
.board-nav-style1 li a { display:inline-block; *display:inline; *zoom:1; border:1px solid #e7e7e7; padding:16px 31px; letter-spacing:1px }
.board-nav-style1 li a:hover { border:1px solid #434343; background:#434343; color:#fff }
</style>
<!-- 카테고리 --><div class="sec-sort">
		<div class="boardSort">
						<span class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
		</div>
	</div>
<div class="boardList">
        <table width="100%" border="1" summary="">
<caption>상품 게시판 목록</caption>
        <colgroup class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 "><col style="width:70px;">
<col style="width:77px;">
<col style="width:135px;" class="displaynone">
<col style="width:auto;">
<col style="width:105px;">
<col style="width:80px;" class="">
<col style="width:53px;" class="">
<col style="width:53px;" class="displaynone">
<col style="width:78px;" class="displaynone">
</colgroup>
<thead class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 "><tr style=" ">
<th scope="col"> <!--
한국어 : 번호 or NO.
영  어 : NO.
중국어 : 序号
일본어 : 番号
-->
NO.</th>
                <th scope="col" class="thumb">
<!--
한국어 : 상품정보 or PRODUCT
영  어 : PRODUCT
중국어 : 商品信息
일본어 : 商品情報
-->
PRODUCT</th>
                <th scope="col" class="displaynone">
<!--
한국어 : 분류 or CATEGORY
영  어 : CATEGORY
중국어 : 分类
일본어 : カテゴリー
-->
CATEGORY</th>
                <th scope="col">
<!--
한국어 : 제목 or SUBJECT
영  어 : TITLE
중국어 : 标题
일본어 : タイトル
-->
SUBJECT</th>
                <th scope="col">
<!--
한국어 : 작성자 or NAME
영  어 : POSTED BY
중국어 : 发帖人
일본어 : 作成者
-->
NAME</th>
                <th scope="col" class="">
<!--
한국어 : 작성일 or DATE
영  어 : DATE
중국어 : 日期
일본어 : 作成日
-->
DATE</th>
                <th scope="col" class="">
<!--
한국어 : 조회수 or VIEW
영  어 : VIEW
중국어 : 点击数
일본어 : 照会
-->
VIEW</th>
                <th scope="col" class="displaynone">
<!--
한국어 : 추천 or RECOMMEND or LIKE
영  어 : RECOMMEND
중국어 : 推荐
일본어 : おすすめ
-->
LIKE</th>
                <th scope="col" class="displaynone">
<!--
한국어 : 평점 or RATE
영  어 : RATE
중국어 : 评分
일본어 : 評点
-->
RATE</th>
            </tr></thead>
<tbody class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4"><!--
                $product_name_cut = 30
                $login_page_url = /member/login.html
                $deny_access_url = /index.html
            --><tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
</tbody>
</table>
</div>
<div class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 boardListEmpty displaynone "><p>
                    </p>
</div>
<div class="xans-element- xans-board xans-board-buttonlist-4 xans-board-buttonlist xans-board-4  "><a href="/board/product/write.html?board_no=6" class="btn Normal Wnormal Dark "><!--
한국어 : 쓰기

-->
쓰기</a>
</div>
</div>


<form id="boardSearchForm" name="" action="/board/product/list.html" method="get" enctype="multipart/form-data">
<input id="board_no" name="board_no" value="6" type="hidden">
<input id="page" name="page" value="1" type="hidden">
<input id="board_sort" name="board_sort" value="" type="hidden"><div class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 "><fieldset class="boardSearch">
<legend>게시물 검색</legend>
        <p class="category displaynone"></p>
        <p><select id="search_date" name="search_date" fw-filter="" fw-label="" fw-msg="">
<option value="week">일주일</option>
<option value="month">한달</option>
<option value="month3">세달</option>
<option value="all">전체</option>
</select> <select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
<option value="subject">제목</option>
<option value="content">내용</option>
<option value="writer_name">글쓴이</option>
<option value="member_id">아이디</option>
<option value="nick_name">별명</option>
<option value="product">상품정보</option>
</select> <input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"><a href="#none" onclick="BOARD.form_submit('boardSearchForm');" class="btn Small Light mL5"><!--
한국어 : 검색

-->
검색</a></p>
    </fieldset>
</div>
</form>
<!-- 관리자 전용 메뉴 -->

<!-- //관리자 전용 메뉴 -->
		</div>
	</div>
</body>
</html>