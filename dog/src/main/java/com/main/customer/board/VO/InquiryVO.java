package com.main.customer.board.VO;

import java.util.Date;


import org.springframework.web.multipart.MultipartFile;

public class InquiryVO {
	private int num;
	private String member_id;
	private int type_code;
	private String subject; 
	private String content; 
	private Date inquiry_date;
	private String password;
	private String name;
	private String column;
	private String search_option;
	private String keyword;
	private int viewcount;
	private MultipartFile file;
	private int recount;

	

	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getType_code() {
		return type_code;
	}
	public void setType_code(int type_code) {
		this.type_code = type_code;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getColumn() {
		return column;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getRecount() {
		return recount;
	}
	public void setRecount(int recount) {
		this.recount = recount;
	}
	
	@Override
	public String toString() {
		return "InquiryVO [num=" + num + ", member_id=" + member_id + ", type_code=" + type_code + ", subject="
				+ subject + ", content=" + content + ", inquiry_date=" + inquiry_date + ", password=" + password
				+ ", name=" + name + ", column=" + column + ", keyword=" + keyword + ", viewcount="
				+ viewcount + ", file=" + file + ", recount=" + recount + "]";
	}
	
	
}
