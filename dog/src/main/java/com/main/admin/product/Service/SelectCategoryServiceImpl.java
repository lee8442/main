package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

@Service("selectCategoryService")
public class SelectCategoryServiceImpl implements SelectCategoryService {
   
   @Autowired
   private ProductDAO productDAO;
   //대분류
   @Override
   public List<CategoryVO> selectBigCategory(CategoryVO vo) throws Exception {
      return productDAO.selectBigCategory(vo);
   }
   //소분류
   @Override
	public List<CategorySVO> selectSmallCategory(int bigCategory) {
		return productDAO.selectSmallCategory(bigCategory);
	}
}
