package com.main.admin.product.Service;

import java.util.List;

import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;

public interface InsertProductService {
	public void ProductReg(ProductVO vo);
	public List<CategoryVO> selectBigCategory(CategoryVO vo) throws Exception;
	}
