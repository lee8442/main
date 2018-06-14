package com.main.admin.product.VO;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private MultipartFile image_file;
	private String code;
	private String name;
	private int price;
	private String simple_explain;
	private String explain;
	private String image;
	private String small_class;
	private String reg_date;

	public MultipartFile getImage_file() {
		return image_file;
	}

	public void setImage_file(MultipartFile image_file) {
		this.image_file = image_file;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
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

	public String getSimple_explain() {
		return simple_explain;
	}

	public void setSimple_explain(String simple_explain) {
		this.simple_explain = simple_explain;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSmall_class() {
		return small_class;
	}

	public void setSmall_class(String small_class) {
		this.small_class = small_class;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "ProductVO [code=" + code + ", name=" + name + ", price=" + price + ", simple_explain=" + simple_explain
				+ ", explain=" + explain + ", image=" + image + ", small_class=" + small_class + ", reg_date="
				+ reg_date + "]";
	}
}
