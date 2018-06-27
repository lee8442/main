package com.main.customer.payment.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.payment.DAO.PaymentDAO;

@Service
public class DeleteBasketServiceImpl implements DeleteBasketService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	@Override
	public void deleteBasket(HashMap<String, Object> hm) {
		paymentDAO.deleteBasket(hm);
	}
}
