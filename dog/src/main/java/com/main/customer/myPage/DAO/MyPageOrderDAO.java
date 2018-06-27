package com.main.customer.myPage.DAO;

import java.util.List;

import com.main.admin.order.VO.OrderVO;

public interface MyPageOrderDAO {
	public List<OrderVO> myPageOrderList(String id);
	
	public void orderRefundStart(int cancelCode);
	
	public void orderRefundCancle(int cancelCode);
	
	public void orderExchangeStart(int cancelCode);
	
	public void orderExchangeCancle(int cancelCode);
	
	public void orderCancle(int cancelCode);
}
