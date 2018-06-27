package com.main.admin.product.VO;

import java.util.Date;

public class Product_BasketVO {

	private String member_id;
	private String product_code;
	private int amount;
	private Date product_basket_date;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getProduct_basket_date() {
		return product_basket_date;
	}
	public void setProduct_basket_date(Date product_basket_date) {
		this.product_basket_date = product_basket_date;
	}
	@Override
	public String toString() {
		return "Product_BasketVO [member_id=" + member_id + ", product_code=" + product_code + ", amount="
				+ amount + ", product_basket_date=" + product_basket_date + "]";
	}
	
}
