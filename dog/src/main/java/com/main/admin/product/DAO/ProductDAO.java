package com.main.admin.product.DAO;

import java.util.List;

import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;

public interface ProductDAO {
	public void ProductReg(ProductVO vo);

	public List<ProductVO> productList();

	public List<CategorySVO> selectSmallCategory(String bigCategory);
	
	public List<CategoryVO> selectBigCategory(CategoryVO vo);
	
	public void insertCategory(CategorySVO vo);
	
	public void updateCategory(CategorySVO vo);
	
	public List<CategorySVO> selectCategoryUp(CategorySVO svo);
	
	public void deleteCategory(String DelCode);
}