package com.main.admin.product.VO;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private MultipartFile image_file;
	private int code;
	private String name;
	private int price;
	private String explain;
	private String simple_explain;
	private String image;
	private int small_class;
	private String hire_date;
	
	public MultipartFile getImage_file() {
		return image_file;
	}
	public void setImage_file(MultipartFile image_file) {
		this.image_file = image_file;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getSimple_explain() {
		return simple_explain;
	}
	public void setSimple_explain(String simple_explain) {
		this.simple_explain = simple_explain;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSmall_class() {
		return small_class;
	}
	public void setSmall_class(int small_class) {
		this.small_class = small_class;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	@Override
	public String toString() {
		return "ProductVO [code=" + code + ", name=" + name + ", price=" + price + ", explain=" + explain
				+ ", simple_explain=" + simple_explain + ", image=" + image + ", small_class=" + small_class
				+ ", hire_date=" + hire_date + "]";
	}
	
		
}



