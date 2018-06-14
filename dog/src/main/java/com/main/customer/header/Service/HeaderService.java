package com.main.customer.header.Service;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

public interface HeaderService {

	public List<ProductVO> selectSmallProduct(String bigName);
}
