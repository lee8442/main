package com.main.customer.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectSmallCodeProductListServiceImpl implements SelectSmallCodeProductListService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<ProductVO> selectSmallCodeProductList(String smallcode) {
		// TODO Auto-generated method stub
		return productDAO.selectSmallCodeProductList(smallcode);
	}






}
