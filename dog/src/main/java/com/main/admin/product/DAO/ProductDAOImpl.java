package com.main.admin.product.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
			
	}
	@Override
	   public List<CategoryVO> selectCategory(CategoryVO vo){
		System.out.println("===> mybatis로 대분류 가져오기 기능 수행");
	      return SqlSession.selectList("getCategory.selectCategoryBig", vo);
	   }

	@Override
	public List<ProductVO> productList(ProductVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> mybatis로 대분류 찍기 기능 수행");
		return SqlSession.selectList("ProductReg.productList",vo);
	}
}
