package com.main.customer.payment.DAO;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface PaymentDAO {
	public List<ProductVO> selectProductOrder(String code);
	
}