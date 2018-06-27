package com.main.customer.payment.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.Product_OrderVO;
import com.main.customer.payment.DAO.PaymentDAO;

@Service
public class InsertPaymentServiceImpl implements InsertPaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	@Override
	public void insertPayment(Product_OrderVO vo) {
		// TODO Auto-generated method stub
		paymentDAO.insertPayment(vo);
	}






}
