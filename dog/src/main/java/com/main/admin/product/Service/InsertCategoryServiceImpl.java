package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

@Service
public class InsertCategoryServiceImpl implements InsertCategoryService {
	@Autowired
	private ProductDAO ProductDAO;

	@Override
	public List<CategoryVO> selectBigCategory(CategoryVO vo) {
		return ProductDAO.selectBigCategory(vo);
	}
	
	@Override
	public void insertCategory(CategorySVO vo) {
		ProductDAO.insertCategory(vo);
	}
}
