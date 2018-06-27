package com.main.customer.product.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectPaymentProductBasketServiceImpl implements SelectPaymentProductBasketService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<Product_BasketVO> selectPaymentProductBasket(HashMap<String, Object> hm) {
		// TODO Auto-generated method stub
		return productDAO.selectPaymentProductBasket(hm);
	}





}