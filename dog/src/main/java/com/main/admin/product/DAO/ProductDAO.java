package com.main.admin.product.DAO;

import java.util.List;

import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;

public interface ProductDAO {
	public void ProductReg(ProductVO vo);

	public List<ProductVO> productList();
	//대분류
	public List<CategoryVO> selectBigCategory();
	//소분류
	public List<CategorySVO> selectSmallCategory(String bigCategory);
}