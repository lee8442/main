package com.main.admin.order.DAO;

import java.util.List;

import com.main.admin.order.VO.DeliveryVO;
import com.main.admin.order.VO.OrderVO;

public interface OrderDAO {
	public List<OrderVO> OrderList(OrderVO vo);
	
	public void updateOrderStart(int orderCode);
	
	public void updateOrderEnd(int orderCode);
	
	public List<DeliveryVO> selectDelivery(DeliveryVO vo);
}
