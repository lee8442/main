package com.main.customer.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class UpdateProductBasketServiceImpl implements UpdateProductBasketService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void updateProductBasket(Product_BasketVO vo) {
		productDAO.updateProductBasket(vo);
		
	}

}