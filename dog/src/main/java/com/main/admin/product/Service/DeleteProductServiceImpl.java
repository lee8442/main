package com.main.admin.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;

@Service
public class DeleteProductServiceImpl implements DeleteProductService {
	@Autowired
	private ProductDAO ProductDAO;
	
	@Override
	public void deleteProduct(String code) {
		ProductDAO.deleteProduct(code);
	}
}
