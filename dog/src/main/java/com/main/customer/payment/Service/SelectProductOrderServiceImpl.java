package com.main.customer.payment.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.payment.DAO.PaymentDAO;

@Service
public class SelectProductOrderServiceImpl implements SelectProductOrderService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	@Override
	public List<ProductVO> selectProductOrder(String code) {
		// TODO Auto-generated method stub
		return paymentDAO.selectProductOrder(code);
	}





}
