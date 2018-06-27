package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;

public interface InsertCategoryService {
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo);
	
	public void insertCategory(SmallCategoryVO vo);
}
