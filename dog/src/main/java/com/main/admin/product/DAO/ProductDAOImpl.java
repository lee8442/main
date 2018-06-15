package com.main.admin.product.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ProductDAOImpl implements ProductDAO {
	private SqlSession SqlSession;

	public ProductDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public void insertCategory(CategorySVO vo) {
		SqlSession.insert("insertCategory.insertCategoryS", vo);
		SqlSession.commit();
		System.out.println("카테고리 등록 완료");
	}

	@Override
	public void ProductReg(ProductVO vo) {
		System.out.println("상품 등록 완료");
		SqlSession.insert("ProductReg.regProduct", vo);
		SqlSession.commit();
	}

	


	@Override
	public List<ProductVO> productList() {
		System.out.println("상품 목록 가져오기");
		return SqlSession.selectList("myBatis.admin.productReg.productList");
	}
	
	@Override
	public void deleteCategory(String DelCode) {
		SqlSession.delete("deleteCategory.deleteCategoryS", DelCode);
		SqlSession.commit();
		System.out.println("카테고리 삭제 완료");
	}
	
	
	//수정페이지로 이동시 클릭했던 checkbox 자료불러오기
	@Override
	public List<CategorySVO> selectCategoryUp(CategorySVO svo){
		List<CategorySVO> selectUpCategory = SqlSession.selectList("updateCategory.selectCategoryS", svo);
		return selectUpCategory;
	}

	@Override
	public List<CategoryVO> selectBigCategory(CategoryVO vo) {
		return SqlSession.selectList("getCategory.selectBigCategory");
	}

	@Override
	public List<CategorySVO> selectSmallCategory(String bigCategory) {
		List<CategorySVO> smallCategory = SqlSession.selectList("getCategory.selectSmallCategory", bigCategory);
		System.out.println("소분류 검색 완료");
		
		return smallCategory;
	}
	
	@Override
	public void updateCategory(CategorySVO vo) {
		SqlSession.update("updateCategory.updateCategoryS", vo);
		SqlSession.commit();
		System.out.println("카테고리 수정 완료");
	}
}
