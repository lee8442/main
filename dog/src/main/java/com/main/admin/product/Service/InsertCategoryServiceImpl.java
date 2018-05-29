package com.main.admin.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.ProductVO;

@Service
public class InsertCategoryServiceImpl implements InsertCategoryService {
	@Autowired
	private ProductDAO ProductDAO;
	
	@Override
	public void insertCategory(ProductVO vo) {
	}

	@Override
	public void selectCategoryBig(ProductVO vo) {
	}

	@Override
	public void selectCategorySmall(ProductVO vo) {
	}
}
