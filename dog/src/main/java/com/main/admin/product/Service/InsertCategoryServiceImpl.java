package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;

@Service
public class InsertCategoryServiceImpl implements InsertCategoryService {
	@Autowired
	private ProductDAO ProductDAO;

	@Override
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo) {
		return ProductDAO.selectBigCategory(vo);
	}
	
	@Override
	public void insertCategory(SmallCategoryVO vo) {
		ProductDAO.insertCategory(vo);
	}
}
