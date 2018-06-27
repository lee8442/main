package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;

public interface SelectCategoryService {
	// 대분류
	

	// 소분류
	public List<SmallCategoryVO> selectSmallCategory(String bigCategory);
	
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo);
}
