package com.main.admin.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.ProductVO;

@Service
public class UpdateProductServiceImpl implements UpdateProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void updateProduct(ProductVO vo) {
		productDAO.updateProduct(vo);
	}

	@Override
	public ProductVO selectImage(String code) {
		return productDAO.selectImage(code);
	}
}
