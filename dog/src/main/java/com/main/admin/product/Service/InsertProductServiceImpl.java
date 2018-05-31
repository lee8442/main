package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;
@Service
public class InsertProductServiceImpl implements InsertProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void ProductReg(ProductVO vo) {
		productDAO.ProductReg(vo);
	}
	@Override
	public List<CategoryVO> selectCategory(CategoryVO vo) throws Exception{
		return productDAO.selectCategory(vo);
	}
	
}
