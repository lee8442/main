package com.main.admin.order.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.DAO.OrderDAO;
@Service
public class UpdateOrderServiceImpl implements UpdateOrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public void updateOrderStart(int orderCode) {
		System.out.println("service" + orderCode);
		orderDAO.updateOrderStart(orderCode);

	}
	@Override
	public void updateOrderEnd(int orderCode) {
		orderDAO.updateOrderEnd(orderCode);

	}
}
