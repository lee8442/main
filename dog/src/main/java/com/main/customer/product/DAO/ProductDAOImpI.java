package com.main.customer.product.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ProductDAOImpI implements ProductDAO {

	private SqlSession SqlSession;

	public ProductDAOImpI() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<ProductVO> selectBigCodeProductList(String bigcode) {
		return SqlSession.selectList("myBatis.customer.product.bigCodeProductList", bigcode);
	}

	@Override
	public String selectBigCodeName(String bigcode) {
		return SqlSession.selectOne("myBatis.customer.product.bigCodeName", bigcode);
	}

	@Override
	public List<ProductVO> selectSmallCodeName(String bigcode) {
		return SqlSession.selectList("myBatis.customer.product.smallCodeName", bigcode);
	}

	@Override
	public List<ProductVO> selectSmallCodeProductList(String smallcode) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.smallCodeProductList", smallcode);
	}

	@Override
	public String slectSBigCodeName(String smallcode) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("myBatis.customer.product.SbigCodeName", smallcode);
	}

	@Override
	public List<ProductVO> selectSSmallCodeProductList(String smallcode) {
		return SqlSession.selectList("myBatis.customer.product.SsmallCodeName", smallcode);
	}
	

}
