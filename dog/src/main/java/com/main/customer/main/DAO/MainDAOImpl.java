package com.main.customer.main.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.main.VO.MainVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class MainDAOImpl implements MainDAO {
	
	private SqlSession SqlSession;

	public MainDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public List<MainVO> selectBestProduct(MainVO vo) {
		return SqlSession.selectList("myBatis.customer.main.bestProduct");
	}


	@Override
	public List<MainVO> selectNewProduct(MainVO vo) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.main.newProduct");
	}


	@Override
	public List<MainVO> selectRecomProduct(MainVO vo) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.main.recomProduct");
	}

	@Override
	public List<MainVO> selectParkProduct(MainVO vo) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.main.parkProduct");
	}



}
