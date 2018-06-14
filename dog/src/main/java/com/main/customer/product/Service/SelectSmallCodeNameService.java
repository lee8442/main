package com.main.customer.product.Service;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface SelectSmallCodeNameService {
	
	
	public List<ProductVO> selectSmallCodeName(String bigcode);
}
