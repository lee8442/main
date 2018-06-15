package com.main.admin.order.DAO;

import java.util.List;

import com.main.admin.order.VO.OrderVO;

public interface OrderDAO {
	public List<OrderVO> OrderList(OrderVO vo);
	
	public void updateOrderStart(OrderVO vo);
	
	public void updateOrderEnd(OrderVO vo);
}
