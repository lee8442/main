package com.main.admin.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.product.DAO.ProductDAO;
import com.main.admin.product.VO.CategoryVO;

@Service("selectCategoryService")
public class SelectCategoryServiceImpl implements SelectCategoryService {
   
   @Autowired
   private ProductDAO productDAO;
   
   @Override
   public List<CategoryVO> selectCategory(CategoryVO vo) throws Exception {
      return productDAO.selectCategory(vo);
   }
}
