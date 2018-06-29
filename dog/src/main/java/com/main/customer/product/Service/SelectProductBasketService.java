package com.main.customer.product.Service;

import java.util.List;

import com.main.admin.product.VO.Product_BasketVO;

public interface SelectProductBasketService {
	//상품 장바구니에서 상품리스트
	public List<Product_BasketVO> selectProductBasket(String member_id);
}
