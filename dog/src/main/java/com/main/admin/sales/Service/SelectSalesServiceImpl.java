package com.main.admin.sales.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.VO.OrderVO;
import com.main.admin.sales.DAO.SalesDAO;

@Service
public class SelectSalesServiceImpl implements SelectSalesService {
	@Autowired
	private SalesDAO salesDAO;

	@Override
	public List<OrderVO> selectsales(String dayDate) {
		return salesDAO.selectsales(dayDate);
	}
	
	@Override
	public List<OrderVO> salesChart(OrderVO vo) {
		return salesDAO.salesChart(vo);
	}
}
