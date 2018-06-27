package com.main.admin.order.Service;


public interface UpdateOrderService {
	
	public void updateOrderStart(String orderCodeS);
	
	public void updateOrderEnd(String orderCodeS);
	
	public void orderRefundEnd(String cancleCodeS);
	
	public void orderExchangeEnd(String cancleCodeS);
}
