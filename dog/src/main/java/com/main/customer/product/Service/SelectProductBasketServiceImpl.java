package com.main.customer.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.Product_OrderVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectProductBasketServiceImpl implements SelectProductBasketService{
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<Product_OrderVO> selectProductBasket(String member_id) {
		// TODO Auto-generated method stub
		return productDAO.selectProductBasket(member_id);
	}
}
