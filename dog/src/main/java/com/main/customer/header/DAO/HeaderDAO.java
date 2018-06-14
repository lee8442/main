package com.main.customer.header.DAO;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface HeaderDAO {
	public List<ProductVO> selectSmallProduct(String bigName);
	
	
	
	
}
