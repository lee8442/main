package com.main.customer.productInquiry.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.productInquiry.VO.InquiryVO;
import com.main.util.SqlSessionFactoryBean;
@Repository
public class InquiryDAOImpl implements InquiryDAO {
	private SqlSession SqlSession;
	
	public InquiryDAOImpl() {
		SqlSession =  SqlSessionFactoryBean.getSqlSessionInstance();
	}
	@Override
	public void InsertInquiryBoard(InquiryVO vo) {
		// TODO Auto-generated method stub

	}

}
