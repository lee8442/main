package com.main.admin.order.VO;

public class DeliveryVO {
	private int code;
	private String state;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "DeliveryVO [code=" + code + ", state=" + state + "]";
	}
}
