package com.main.customer.myPage.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.order.VO.OrderVO;
import com.main.util.SqlSessionFactoryBean;
@Repository
public class MyPageOrderDAOImpl implements MyPageOrderDAO {
	private SqlSession sqlSession;
	
	public MyPageOrderDAOImpl() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public List<OrderVO> myPageOrderList(String id){
		List<OrderVO> myOrderList = sqlSession.selectList("customer.myPage.myPageOrder", id);
		System.out.println("결과 : " + myOrderList);
		return myOrderList;
	}
	
	@Override
	public void orderRefundStart(int cancelCode) {
		sqlSession.update("customer.myPage.orderRefundStart", cancelCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void orderRefundCancle(int cancelCode) {
		sqlSession.update("customer.myPage.orderRefundCancle", cancelCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void orderExchangeStart(int cancelCode) {
		sqlSession.update("customer.myPage.orderExchangeStart", cancelCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void orderExchangeCancle(int cancelCode) {
		sqlSession.update("customer.myPage.orderExchangeCancle", cancelCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
	@Override
	public void orderCancle(int cancelCode) {
		sqlSession.update("customer.myPage.orderCancle", cancelCode);
		sqlSession.commit();
		System.out.println("처리상태 수정 완료");
	}
	
}
