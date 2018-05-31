package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.CategoryVO;

public interface SelectCategoryService {
	public List<CategoryVO> selectCategory(CategoryVO vo) throws Exception;
}
