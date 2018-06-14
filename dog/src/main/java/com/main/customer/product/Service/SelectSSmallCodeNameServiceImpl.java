package com.main.customer.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectSSmallCodeNameServiceImpl implements SelectSSmallCodeNameService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<ProductVO> selectSSmallCodeName(String smallcode) {
		// TODO Auto-generated method stub
		return productDAO.selectSSmallCodeProductList(smallcode);
	}



}
