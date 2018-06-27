package com.main.customer.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class InsertProductBasketServiceImpl implements InsertProductBasketService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void insertProductBasket(Product_BasketVO vo) {
		productDAO.insertProductBasket(vo);
	}


}