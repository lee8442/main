package com.main.customer.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.product.DAO.ProductDAO;

@Service
public class SelectSmallCodeNameServiceImpl implements SelectSmallCodeNameService {
	
	@Autowired
	private ProductDAO productDAO;

	@Override
	public List<ProductVO> selectSmallCodeName(String bigcode) {
		// TODO Auto-generated method stub
		return productDAO.selectSmallCodeName(bigcode);
	}

}
