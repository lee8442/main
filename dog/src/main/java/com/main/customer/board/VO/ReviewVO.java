package com.main.customer.board.VO;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	private int num;
	private String member_id;
	private String product_code;
	private String content;
	private int grade;
	private Date product_review_date;
	private String image;
	private String subject;
	private int view_count;
	private MultipartFile file;
	private String search_option;
	private String column;
	private String simple_explain;
	private String show;
	private String keyword;
	private int price;
	private String name;
	private String password;
	
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSimple_explain() {
		return simple_explain;
	}
	public void setSimple_explain(String simple_explain) {
		this.simple_explain = simple_explain;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	public String getProduct_code() {
		System.out.println("get pc" + product_code);
		return product_code;
	}
	public void setProduct_code(String product_code) {
		System.out.println("set pc" + product_code);
		this.product_code = product_code;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getProduct_review_date() {
		return product_review_date;
	}
	public void setProduct_review_date(Date product_review_date) {
		this.product_review_date = product_review_date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}
	public String getColumn() {
		return column;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public String getShow() {
		return show;
	}
	public void setShow(String show) {
		this.show = show;
	}
	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", member_id=" + member_id + ", product_code=" + product_code + ", content="
				+ content + ", grade=" + grade + ", product_review_date=" + product_review_date + ", image=" + image
				+ ", subject=" + subject + ", view_count=" + view_count + ", file=" + file + ", search_option="
				+ search_option + ", column=" + column + ", show=" + show + "]";
	}
	public void setPassword(int sdf) {
		// TODO Auto-generated method stub
		
	}
	
	
}
