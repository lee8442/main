package com.main.customer.product.Service;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface SelectBigCodeProductListService {
	
	
	public List<ProductVO> selectBigCodeProductList(String bigcode);
}
