package com.main.customer.payment.DAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_OrderVO;
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

	@Override
	public void insertPayment(Product_OrderVO vo) {
		// TODO Auto-generated method stub
		SqlSession.insert("myBatis.customer.payment.insertpayment", vo);
		SqlSession.update("myBatis.customer.payment.updatepoint", vo);
	}

	@Override
	public int selectMemberPoint(String member_id) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("myBatis.customer.payment.selectmemberpoint", member_id);
	}

	@Override
	public void deleteBasket(HashMap<String, Object> hm) {
		SqlSession.delete("myBatis.customer.payment.deleteBasket", hm);
		SqlSession.commit();
	}
}