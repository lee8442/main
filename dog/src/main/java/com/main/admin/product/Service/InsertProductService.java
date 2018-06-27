package com.main.admin.product.Service;

import com.main.admin.product.VO.ProductVO;

public interface InsertProductService {
	public String selectProuctCode();

	public void insertProduct(ProductVO vo);
}
