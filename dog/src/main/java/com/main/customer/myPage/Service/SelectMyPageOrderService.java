package com.main.customer.myPage.Service;

import java.util.List;

import com.main.admin.order.VO.OrderVO;

public interface SelectMyPageOrderService {
	public List<OrderVO> myPageOrderList(String id);
	
}
