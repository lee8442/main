package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.ProductVO;

@Service("selectProductListService")
public class SelectProductListServiceImpl implements SelectProductListService {
	@Autowired
	private ProductDAO ProductRegDAO;

	@Override
	public List<ProductVO> productList() {
		return ProductRegDAO.productList();
	}
}
