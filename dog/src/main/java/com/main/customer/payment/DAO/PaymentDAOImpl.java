package com.main.customer.payment.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class PaymentDAOImpl implements PaymentDAO {
	private SqlSession SqlSession;

	public PaymentDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<ProductVO> selectProductOrder(String code) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.productOrderList", code);
	}
}