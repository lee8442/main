package com.main.customer.board.VO;


public class ReplyVO {
	private int rno;        // 댓글 번호
    private int num;        // 게시글 번호
    private String replytext;    // 댓글 내용

   
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}

}
