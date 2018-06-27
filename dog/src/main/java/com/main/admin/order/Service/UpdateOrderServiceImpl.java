package com.main.admin.order.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.DAO.OrderDAO;
@Service
public class UpdateOrderServiceImpl implements UpdateOrderService {
	@Autowired
	private OrderDAO orderDAO;
	//출고
	@Override
	public void updateOrderStart(String orderCodeS) {
		orderDAO.updateOrderStart(orderCodeS);
	}
	//배송완료
	@Override
	public void updateOrderEnd(String orderCodeS) {
		orderDAO.updateOrderEnd(orderCodeS);
	}
	//환불
	@Override
	public void orderRefundEnd(String cancleCodeS) {
		System.out.println("환불 처리중(서비스)");
		orderDAO.orderRefundEnd(cancleCodeS);
		System.out.println("환불처리중 (서비스2)");
	}
	//교환
	@Override
	public void orderExchangeEnd(String cancleCodeS) {
		orderDAO.orderExchangeEnd(cancleCodeS);
	}
}
