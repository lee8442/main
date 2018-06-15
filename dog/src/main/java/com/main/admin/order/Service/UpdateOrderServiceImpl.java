package com.main.admin.order.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.DAO.OrderDAO;
import com.main.admin.order.VO.OrderVO;
@Service
public class UpdateOrderServiceImpl implements UpdateOrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public void updateOrderStart(OrderVO vo) {
		orderDAO.updateOrderStart(vo);

	}
	@Override
	public void updateOrderEnd(OrderVO vo) {
		orderDAO.updateOrderEnd(vo);

	}
}
