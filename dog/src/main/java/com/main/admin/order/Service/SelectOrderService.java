package com.main.admin.order.Service;

import java.util.List;

import com.main.admin.order.VO.DeliveryVO;
import com.main.admin.order.VO.OrderVO;

public interface SelectOrderService {
	public List<OrderVO> OrderList(OrderVO vo);
	
	public List<DeliveryVO> selectDelivery(DeliveryVO vo);
}
