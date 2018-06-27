package com.main.customer.product.Service;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface SelectProductService {
	//상품 장바구니에서 상품리스트
	public List<ProductVO> selectProduct(String member_id);
}
