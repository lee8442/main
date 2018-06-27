package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.SmallCategoryVO;

public interface UpdateCategoryService {
	public void updateCategory(SmallCategoryVO vo);
	
	public List<SmallCategoryVO> selectCategoryUp(SmallCategoryVO svo);
}
