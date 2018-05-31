package com.main.admin.product.VO;

public class ProductVO {
	private int code;
	private String name;
	private int price;
	private int stock;
/*	private String image;*/
	private String explain;
	private String simple_explain;
	

/*
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
*/
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

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
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

	public Object getImg() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String toString() {
		return "ProductVO [code=" + code + ", name=" + name + ", price=" + price + ", stock=" + stock + ", explain="
				+ explain + ", simple_explain=" + simple_explain + "]";
	}
	
}



