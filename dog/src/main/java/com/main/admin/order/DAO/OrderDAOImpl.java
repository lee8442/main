package com.main.admin.order.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.order.VO.OrderVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class OrderDAOImpl implements OrderDAO {
	private SqlSession sqlSession;

	public OrderDAOImpl() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public List<OrderVO> OrderList(OrderVO vo){
		List<OrderVO> OrderList = sqlSession.selectList("selectOrder.Order", vo);
		return OrderList;
	}
	
	@Override
	public void updateOrderStart(OrderVO vo) {
		sqlSession.update("UpdateOrder.OrderDeliveryStart", vo);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void updateOrderEnd(OrderVO vo) {
		sqlSession.update("UpdateOrder.OrderDeliveryEnd", vo);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
}
