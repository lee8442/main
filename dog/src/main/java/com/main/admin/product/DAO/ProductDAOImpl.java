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
		System.out.println("===> mybatis로 ProductReg() 기능 수행");
		// SqslSession.insert("네임스페이스"."메소드아이디", vo객체)
		// Sqlsession.insert("ProductReg.regProduct", vo);
		SqlSession.insert("ProductReg.regProduct", vo);
		SqlSession.commit();
			
	}
	//대분류
	@Override
	   public List<CategoryVO> selectBigCategory(CategoryVO vo){
		System.out.println("===> mybatis로 대분류 가져오기 기능 수행");
	      return SqlSession.selectList("getCategory.selectBigCategory", vo);
	   }

	@Override
	public List<ProductVO> productList(ProductVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> mybatis로 디비에서 목록받아오기기능 수행");
		return SqlSession.selectList("ProductReg.productList",vo);
	}
	//소분류
	@Override
	public List<CategorySVO> selectSmallCategory(int bigCategory) {
		List<CategorySVO> smallCategory = SqlSession.selectList("getCategory.selectSmallCategory", bigCategory);
		int index = smallCategory.size();
		System.out.println("소분류 검색 완료");
		for (int i = 0; i < index; i++) {
			System.out.println("결과 : " + smallCategory.get(i).getBcode());
			System.out.println("결과 : " + smallCategory.get(i).getName());
			System.out.println("결과 : " + smallCategory.get(i).getCode());
		}
		return smallCategory;
	}
}
