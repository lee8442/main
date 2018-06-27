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
	public List<OrderVO> orderRefundList(OrderVO vo){
		List<OrderVO> orderRefundList = sqlSession.selectList("admin.order.orderRefundList", vo);
		return orderRefundList;
	}
	
	@Override
	public List<OrderVO> OrderList(OrderVO vo){
		List<OrderVO> OrderList = sqlSession.selectList("admin.order.order", vo);
		return OrderList;
	}
	
	@Override
	public List<OrderVO> endOrderList(OrderVO vo){
		List<OrderVO> endOrderList = sqlSession.selectList("admin.order.endOrderList", vo);
		return endOrderList;
	}
	
	@Override
	public List<OrderVO> orderExchangeList(OrderVO vo){
		List<OrderVO> orderExchangeList = sqlSession.selectList("admin.order.orderExchangeList", vo);
		return orderExchangeList;
	}
	
	
	
	@Override
	public void updateOrderStart(String orderCodeS) {
		sqlSession.update("admin.order.orderDeliveryStart", orderCodeS);
		sqlSession.commit();
		System.out.println("출고 수정 완료");
	}
	
	@Override
	public void updateOrderEnd(String orderCodeS) {
		sqlSession.update("admin.order.orderDeliveryEnd", orderCodeS);
		sqlSession.commit();
		System.out.println("배송완료 수정 완료");
	}
	
	@Override
	public void orderRefundEnd(String cancleCodeS) {
		sqlSession.update("admin.order.orderRefundEnd", cancleCodeS);
		sqlSession.commit();
		System.out.println("환불 수정 완료");
	}
	
	@Override
	public void orderExchangeEnd(String cancleCodeS) {
		sqlSession.update("admin.order.orderExchangeEnd", cancleCodeS);
		sqlSession.commit();
		System.out.println("교환 수정 완료");
	}
	
	
}
