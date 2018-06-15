package com.main.admin.order.VO;

import java.util.Date;

public class OrderVO {
	private int code;
	private String member_id;
	private String product_code;
	private int amount;
	private Date product_order_date;
	private int delivery_code;
	private int cancle_code;
	private String delivery_address;
	@Override
	public String toString() {
		return "OrderVO [code=" + code + ", member_id=" + member_id + ", product_code=" + product_code + ", amount="
				+ amount + ", product_order_date=" + product_order_date + ", delivery_code=" + delivery_code
				+ ", cancle_code=" + cancle_code + ", delivery_address=" + delivery_address + "]";
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
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
	public Date getProduct_order_date() {
		return product_order_date;
	}
	public void setProduct_order_date(Date product_order_date) {
		this.product_order_date = product_order_date;
	}
	public int getDelivery_code() {
		return delivery_code;
	}
	public void setDelivery_code(int delivery_code) {
		this.delivery_code = delivery_code;
	}
	public int getCancle_code() {
		return cancle_code;
	}
	public void setCancle_code(int cancle_code) {
		this.cancle_code = cancle_code;
	}
	public String getDelivery_address() {
		return delivery_address;
	}
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
}
