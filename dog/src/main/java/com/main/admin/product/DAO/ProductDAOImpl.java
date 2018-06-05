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
	public void ProductReg(ProductVO vo) {
		System.out.println("상품 등록 완료");
		SqlSession.insert("ProductReg.regProduct", vo);
		SqlSession.commit();
	}

	// 대분류
	@Override
	public List<CategoryVO> selectBigCategory() {
		System.out.println("대분류 목록 가져오기");
		return SqlSession.selectList("getCategory.selectBigCategory");
	}

	// 소분류
	@Override
	public List<CategorySVO> selectSmallCategory(String bigCategory) {
		List<CategorySVO> smallCategory = SqlSession.selectList("getCategory.selectSmallCategory", bigCategory);
		int index = smallCategory.size();
		System.out.println("소분류 목록 가져오기");
		for (int i = 0; i < index; i++) {
			System.out.println("결과 " + i + " : " + smallCategory.get(i).getBig_class_code());
			System.out.println("결과 " + i + " : " + smallCategory.get(i).getName());
			System.out.println("결과 " + i + " : " + smallCategory.get(i).getCode());
		}
		return smallCategory;
	}

	@Override
	public List<ProductVO> productList() {
		System.out.println("상품 목록 가져오기");
		return SqlSession.selectList("myBatis.admin.productReg.productList");
	}
}
