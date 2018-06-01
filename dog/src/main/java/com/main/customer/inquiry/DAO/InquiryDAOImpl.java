package com.main.customer.inquiry.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.inquiry.VO.InquiryVO;
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
