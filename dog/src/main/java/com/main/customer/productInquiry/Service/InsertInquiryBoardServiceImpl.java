package com.main.customer.productInquiry.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.InquiryDAO;
import com.main.customer.productInquiry.VO.InquiryVO;

@Service
public class InsertInquiryBoardServiceImpl implements InsertInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;

	public void InsertInquiryBoard(InquiryVO vo) {
		// TODO Auto-generated method stub
			inquiryDAO.InsertInquiryBoard(vo);
	}
}
