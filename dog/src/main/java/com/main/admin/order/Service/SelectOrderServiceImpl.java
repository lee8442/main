package com.main.admin.order.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.DAO.OrderDAO;
import com.main.admin.order.VO.OrderVO;

@Service
public class SelectOrderServiceImpl implements SelectOrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public List<OrderVO> OrderList(OrderVO vo){
		return orderDAO.OrderList(vo);
	}
}
