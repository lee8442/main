package com.main.admin.product.DAO;

import java.util.List;

import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;

public interface ProductDAO {
	public void ProductReg(ProductVO vo);

public List<ProductVO> productList(ProductVO vo);
public List<CategoryVO> selectCategory(CategoryVO vo);
}