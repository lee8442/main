package com.main.admin.order.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.order.VO.DeliveryVO;
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
		List<OrderVO> OrderList = sqlSession.selectList("admin.order.selectOrderList.Order", vo);
		return OrderList;
	}
	
	@Override
	public void updateOrderStart(int orderCode) {
		sqlSession.update("admin.order.updateOrder.OrderDeliveryStart", orderCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void updateOrderEnd(int orderCode) {
		sqlSession.update("admin.order.updateOrder.OrderDeliveryEnd", orderCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	@Override
	public List<DeliveryVO> selectDelivery(DeliveryVO vo){
		List<DeliveryVO> OrderList = sqlSession.selectList("admin.order.selectOrderList.OrderDelivery", vo);
		return OrderList;
		
	}
}
