package com.main.customer.productInquiry.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.InquiryDAO;
import com.main.customer.productInquiry.VO.InquiryVO;
@Service
public class UpdateInquiryBoardServiceImpl implements UpdateInquiryBoardService{
	@Autowired
	private	InquiryDAO inquiryDAO;
	
	@Override
	public void updateInquiryInsert(InquiryVO vo) {
		inquiryDAO.updateInquiryInsert(vo);
	}
}
