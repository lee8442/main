package com.main.admin.product.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.ProductVO;
@Service
public class InsertProductServiceImpl implements InsertProductService {
	@Autowired
	private ProductDAO ProductRegDAO;
	@Override
	public void ProductReg(ProductVO vo) {
		ProductRegDAO.ProductReg(vo);
	}
	
}
