package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;

@Service("selectCategoryService")
public class SelectCategoryServiceImpl implements SelectCategoryService {
   
   @Autowired
   private ProductDAO productDAO;
   //대분류
  
   //소분류
   @Override
	public List<SmallCategoryVO> selectSmallCategory(String bigCategory) {
		return productDAO.selectSmallCategory(bigCategory);
	}
   
   @Override
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo) {
		return productDAO.selectBigCategory(vo);
	}
}
