package com.main.customer.header.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class HeaderDAOImpl implements HeaderDAO {
	
	private SqlSession SqlSession;

	public HeaderDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<ProductVO> selectSmallProduct(String bigName) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.header.smallProduct", bigName);
	}
}
