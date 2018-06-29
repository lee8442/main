package com.main.admin.sales.Service;

import java.util.List;

import com.main.admin.order.VO.OrderVO;

public interface SelectSalesService {
	//일 매출 조회
	public List<OrderVO> selectsales(String dayDate);
	
	public List<OrderVO> salesChart(OrderVO vo);
}
