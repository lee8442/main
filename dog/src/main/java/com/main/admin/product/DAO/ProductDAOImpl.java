package com.main.admin.product.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;
import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ProductDAOImpl implements ProductDAO {
	private SqlSession SqlSession;

	public ProductDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<BigCategoryVO> selectBigCategory(BigCategoryVO vo) {
		return SqlSession.selectList("getCategory.selectBigCategory");
	}

	@Override
	public List<SmallCategoryVO> selectSmallCategory(String bigCategory) {
		List<SmallCategoryVO> smallCategory = SqlSession.selectList("getCategory.selectSmallCategory", bigCategory);
		System.out.println("소분류 검색 완료");
		return smallCategory;
	}

	@Override
	public void insertCategory(SmallCategoryVO vo) {
		SqlSession.insert("insertCategory.insertCategoryS", vo);
		SqlSession.commit();
		System.out.println("카테고리 등록 완료");
	}

	// 수정 페이지로 이동 시 클릭했던 checkbox 자료불러오기
	@Override
	public List<SmallCategoryVO> selectCategoryUp(SmallCategoryVO svo) {
		List<SmallCategoryVO> selectUpCategory = SqlSession.selectList("updateCategory.selectCategoryS", svo);
		return selectUpCategory;
	}

	@Override
	public void updateCategory(SmallCategoryVO vo) {
		SqlSession.update("updateCategory.updateCategoryS", vo);
		SqlSession.commit();
		System.out.println("카테고리 수정 완료");
	}

	@Override
	public void deleteCategory(String DelCode) {
		SqlSession.delete("deleteCategory.deleteCategoryS", DelCode);
		SqlSession.commit();
		System.out.println("카테고리 삭제 완료");
	}

	@Override
	public String selectProuctCode() {
		System.out.println("상품 코드 검색 완료");
		return SqlSession.selectOne("admin.product.selectProductCode");
	}

	@Override
	public void insertProduct(ProductVO vo) {
		System.out.println("상품 등록 완료");
		SqlSession.insert("admin.product.insertProduct", vo);
		SqlSession.commit();
	}

	@Override
	public List<ProductVO> productList() {
		System.out.println("상품 목록 가져오기");
		return SqlSession.selectList("admin.product.productList");
	}
	
	@Override
	public ProductVO selectImage(String code) {
		System.out.println("상품, 상세설명 사진 검색");
		return SqlSession.selectOne("admin.product.selectImage", code);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		System.out.println("상품 수정");
		SqlSession.update("admin.product.updateProduct", vo);
		SqlSession.commit();
	}

	@Override
	public void deleteProduct(String code) {
		System.out.println("상품 삭제");
		SqlSession.update("admin.product.deleteProduct", code);
		SqlSession.commit();
	}
}
