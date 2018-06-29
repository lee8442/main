package com.main.admin.product.VO;

import java.util.Date;

public class Product_OrderVO {

	private int code;
	private String member_id;
	private String product_code;
	private String amount;
	private Date product_order_date;
	private int delivery_code;
	private int cancle_code;
	private String delivery_address;
	private String phone;
	private String name;
	private String message;
	private int use_point;
	private int left_point;
	private int card;
	private int account;
	private int bankbook;
	private int montant;

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

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getUse_point() {
		return use_point;
	}

	public void setUse_point(int use_point) {
		this.use_point = use_point;
	}

	public int getLeft_point() {
		return left_point;
	}

	public void setLeft_point(int left_point) {
		this.left_point = left_point;
	}

	public int getCard() {
		return card;
	}

	public void setCard(int card) {
		this.card = card;
	}

	public int getAccount() {
		return account;
	}

	public void setAccount(int account) {
		this.account = account;
	}

	public int getBankbook() {
		return bankbook;
	}

	public void setBankbook(int bankbook) {
		this.bankbook = bankbook;
	}

	public int getmontant() {
		return montant;
	}

	public void setmontant(int montant) {
		this.montant = montant;
	}

	@Override
	public String toString() {
		return "Product_OrderVO [code=" + code + ", member_id=" + member_id + ", product_code=" + product_code
				+ ", amount=" + amount + ", product_order_date=" + product_order_date + ", delivery_code="
				+ delivery_code + ", cancle_code=" + cancle_code + ", delivery_address=" + delivery_address + ", phone="
				+ phone + ", name=" + name + ", message=" + message + ", use_point=" + use_point + ", left_point="
				+ left_point + ", card=" + card + ", account=" + account + ", bankbook=" + bankbook + ", montant="
				+ montant + "]";
	}
}