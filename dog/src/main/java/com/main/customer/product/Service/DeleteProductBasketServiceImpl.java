package com.main.customer.product.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.product.DAO.ProductDAO;

@Service
public class DeleteProductBasketServiceImpl implements DeleteProductBasketService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void deleteProductBasket(HashMap<String, Object> hm) {
		productDAO.deleteProductBasket(hm);
		
	}



}