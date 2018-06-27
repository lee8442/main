package com.main.customer.product.Service;

import java.util.HashMap;
import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface SelectPaymentProductService {
	
	
	public List<ProductVO> selectPaymentProduct(HashMap<String, Object> hm);
	
}
