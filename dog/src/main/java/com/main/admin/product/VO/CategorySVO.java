package com.main.admin.product.VO;

public class CategorySVO {
	private int Bcode;
	private int code;
	private String name;
	public int getBcode() {
		return Bcode;
	}
	public void setBcode(int bcode) {
		Bcode = bcode;
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
	@Override
	public String toString() {
		return "ProductVO [Bcode=" + Bcode + ", code=" + code + ", name=" + name + "]";
	}

}
