package com.main.customer.payment.Service;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface SelectProductOrderService {
	
	
	public List<ProductVO> selectProductOrder(String code);
}
