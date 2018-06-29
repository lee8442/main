package com.main.admin.order.VO;

public class OrderVO {
	private String code;
	private String member_id;
	private String product_code;
	private String amount;
	private String product_order_date;
	private String product_order_date2;
	private String delivery_code;
	private String cancle_code;
	private String delivery_address;
	private String phone;
	private String name;
	private String message;
	private int use_point;
	private int left_point;
	private int price;
	private String chartKeyword;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
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

	public String getProduct_order_date() {
		return product_order_date;
	}

	public void setProduct_order_date(String product_order_date) {
		this.product_order_date = product_order_date;
	}

	public String getProduct_order_date2() {
		return product_order_date2;
	}

	public void setProduct_order_date2(String product_order_date2) {
		this.product_order_date2 = product_order_date2;
	}

	public String getDelivery_code() {
		return delivery_code;
	}

	public void setDelivery_code(String delivery_code) {
		this.delivery_code = delivery_code;
	}

	public String getCancle_code() {
		return cancle_code;
	}

	public void setCancle_code(String cancle_code) {
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getChartKeyword() {
		return chartKeyword;
	}

	public void setChartKeyword(String chartKeyword) {
		this.chartKeyword = chartKeyword;
	}

	@Override
	public String toString() {
		return "OrderVO [code=" + code + ", member_id=" + member_id + ", product_code=" + product_code + ", amount="
				+ amount + ", product_order_date=" + product_order_date + ", product_order_date2=" + product_order_date2
				+ ", delivery_code=" + delivery_code + ", cancle_code=" + cancle_code + ", delivery_address="
				+ delivery_address + ", phone=" + phone + ", name=" + name + ", message=" + message + ", use_point="
				+ use_point + ", left_point=" + left_point + ", price=" + price + ", chartKeyword=" + chartKeyword
				+ "]";
	}
}
