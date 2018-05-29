package com.main.admin.product.VO;

public class ProductVO {
	private int big_class_code;
	private int code;
	private String name;
	private String Bname;

	public int getBig_class_code() {
		return big_class_code;
	}

	public void setBig_class_code(int big_class_code) {
		this.big_class_code = big_class_code;
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

	public String getBname() {
		return Bname;
	}

	public void setBname(String bname) {
		Bname = bname;
	}

	@Override
	public String toString() {
		return "ProductVO [big_class_code=" + big_class_code + ", code=" + code + ", name=" + name + ", Bname=" + Bname
				+ "]";
	}
}
