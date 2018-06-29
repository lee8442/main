package com.main.admin.sales.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.order.VO.OrderVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class SalesDAOImpl implements SalesDAO {
	private SqlSession sqlSession;

	public SalesDAOImpl() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public List<OrderVO> selectsales(String dayDate) {
		return sqlSession.selectList("myBatis.admin.sales.selectSales", dayDate);
	}
	
	@Override
	public List<OrderVO> salesChart(OrderVO vo) {
		return sqlSession.selectList("myBatis.admin.sales.selectSalesChart", vo);
	}
}
