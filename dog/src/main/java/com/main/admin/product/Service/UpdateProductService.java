package com.main.admin.product.Service;

import com.main.admin.product.VO.ProductVO;

public interface UpdateProductService {
	public void updateProduct(ProductVO vo);
	
	public ProductVO selectImage(String code);
}
