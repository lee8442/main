package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.CategorySVO;

public interface UpdateCategoryService {
	public void updateCategory(CategorySVO vo);
	
	public List<CategorySVO> selectCategoryUp(CategorySVO svo);
}
