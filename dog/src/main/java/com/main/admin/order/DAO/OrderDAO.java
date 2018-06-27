package com.main.admin.order.DAO;

import java.util.List;

import com.main.admin.order.VO.OrderVO;

public interface OrderDAO {
	public List<OrderVO> OrderList(OrderVO vo);
	
	public void updateOrderStart(String orderCodeS);
	
	public void updateOrderEnd(String orderCodeS);
	
	
	public void orderRefundEnd(String cancleCodeS);
	
	public void orderExchangeEnd(String cancleCodeS);
	
	public List<OrderVO> orderRefundList(OrderVO vo);
	
	public List<OrderVO> orderExchangeList(OrderVO vo);
	
	public List<OrderVO> endOrderList(OrderVO vo);
	
}
