package com.main.customer.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectSBigCodeNameServiceImpl implements SelectSBigCodeNameService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public String selectSBigCodeName(String smallcode) {
		// TODO Auto-generated method stub
		return productDAO.slectSBigCodeName(smallcode);
	}


}
