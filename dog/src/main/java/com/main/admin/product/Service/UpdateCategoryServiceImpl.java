package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.CategorySVO;
@Service
public class UpdateCategoryServiceImpl implements UpdateCategoryService {
	@Autowired
	private ProductDAO ProductDAO;
	
	@Override
	public void updateCategory(CategorySVO vo) {
		ProductDAO.updateCategory(vo);
	}
	
	@Override
	public List<CategorySVO> selectCategoryUp(CategorySVO svo) {
		return ProductDAO.selectCategoryUp(svo);
	}
}
