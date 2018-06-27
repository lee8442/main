package com.main.customer.myPage.Service;

public interface UpdateMyPageOrderService {
	public void orderRefundStart(int cancelCode);
	
	public void orderRefundCancle(int cancelCode);
	
	public void orderExchangeStart(int cancelCode);
	
	public void orderExchangeCancle(int cancelCode);
	
	public void orderCancle(int cancelCode);
}
