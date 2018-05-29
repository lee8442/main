package com.main.admin.product.DAO;

import com.main.admin.product.VO.ProductVO;

public interface ProductDAO {
	public void insertCategory(ProductVO vo);
	public void selectCategoryBig(ProductVO vo);
	public void selectCategorySmall(ProductVO vo);
}