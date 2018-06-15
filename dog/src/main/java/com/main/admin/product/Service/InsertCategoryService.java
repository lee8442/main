package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

public interface InsertCategoryService {
	public List<CategoryVO> selectBigCategory(CategoryVO vo);
	
	public void insertCategory(CategorySVO vo);
}
