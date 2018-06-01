package com.main.customer.inquiry.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.inquiry.DAO.InquiryDAO;
import com.main.customer.inquiry.VO.InquiryVO;

@Service
public class InsertInquiryBoardServiceImpl implements InsertInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;

	public void InsertInquiryBoard(InquiryVO vo) {
		// TODO Auto-generated method stub
			inquiryDAO.InsertInquiryBoard(vo);
	}
}
