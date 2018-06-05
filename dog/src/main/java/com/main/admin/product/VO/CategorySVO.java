package com.main.admin.product.VO;

public class CategorySVO {
	private String big_class_code;
	private String code;
	private String name;

	public String getBig_class_code() {
		return big_class_code;
	}

	public void setBcode(String big_class_code) {
		this.big_class_code = big_class_code;
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

	@Override
	public String toString() {
		return "ProductVO [big_class_code=" + big_class_code + ", code=" + code + ", name=" + name + "]";
	}
}
