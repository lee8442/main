package com.main.admin.product.VO;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private MultipartFile image_file;
	private List<MultipartFile> explain_image_file;
	private String code;
	private String name;
	private int price;
	private String simple_explain;
	private String explain;
	private String image;
	private String small_class;
	private String reg_date;
	private String big_class;

	public MultipartFile getImage_file() {
		return image_file;
	}

	public void setImage_file(MultipartFile image_file) {
		this.image_file = image_file;
	}

	public List<MultipartFile> getExplain_image_file() {
		return explain_image_file;
	}

	public void setExplain_image_file(List<MultipartFile> explain_image_file) {
		this.explain_image_file = explain_image_file;
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

	public String getBig_class() {
		return big_class;
	}

	public void setBig_class(String big_class) {
		this.big_class = big_class;
	}

	@Override
	public String toString() {
		return "ProductVO [image_file=" + image_file + ", explain_image_file=" + explain_image_file + ", code=" + code
				+ ", name=" + name + ", price=" + price + ", simple_explain=" + simple_explain + ", explain=" + explain
				+ ", image=" + image + ", small_class=" + small_class + ", reg_date=" + reg_date + ", big_class="
				+ big_class + "]";
	}
}
