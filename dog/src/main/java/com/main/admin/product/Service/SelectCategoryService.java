package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

public interface SelectCategoryService {
	// 대분류
	public List<CategoryVO> selectBigCategory();

	// 소분류
	public List<CategorySVO> selectSmallCategory(String bigCategory);
}
