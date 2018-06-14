package com.main.customer.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectBigCodeNameServiceImpl implements SelectBigCodeNameService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public String selectBigCodeName(String bigcode) {
		return productDAO.selectBigCodeName(bigcode);
	}

}
