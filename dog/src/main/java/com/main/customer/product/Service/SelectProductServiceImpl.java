package com.main.customer.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectProductServiceImpl implements SelectProductService{
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<ProductVO> selectProduct(String member_id) {
		// TODO Auto-generated method stub
		return productDAO.selectProduct(member_id);
	}


}
