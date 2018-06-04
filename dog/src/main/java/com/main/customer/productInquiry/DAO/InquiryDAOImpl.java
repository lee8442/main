package com.main.customer.productInquiry.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.productInquiry.VO.InquiryCategoryVO;
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
	}
	@Override
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("productInquiryCategory.InquiryCategory",vo);
	}
	
}
