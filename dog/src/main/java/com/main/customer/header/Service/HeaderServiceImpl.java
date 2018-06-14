package com.main.customer.header.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.header.DAO.HeaderDAO;

@Service
public class HeaderServiceImpl implements HeaderService {

	@Autowired
	private HeaderDAO HeaderDAO;

	@Override
	public List<ProductVO> selectSmallProduct(String bigName) {
		// TODO Auto-generated method stub
		return HeaderDAO.selectSmallProduct(bigName);
	}


}
