package com.main.admin.product.DAO;

import java.util.List;

import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;
import com.main.admin.product.VO.ProductVO;

public interface ProductDAO {
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo);

	public List<SmallCategoryVO> selectSmallCategory(String bigCategory);

	public void insertCategory(SmallCategoryVO vo);

	public List<SmallCategoryVO> selectCategoryUp(SmallCategoryVO svo);

	public void updateCategory(SmallCategoryVO vo);

	public void deleteCategory(String DelCode);

	public String selectProuctCode();

	public void insertProduct(ProductVO vo);

	public List<ProductVO> productList();

	public ProductVO selectImage(String code);

	public void updateProduct(ProductVO vo);

	public void deleteProduct(String code);
}