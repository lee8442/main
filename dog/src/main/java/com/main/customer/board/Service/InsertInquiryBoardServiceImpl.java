package com.main.customer.board.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAO;
import com.main.customer.board.VO.InquiryVO;

@Service
public class InsertInquiryBoardServiceImpl implements InsertInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;

	public void InsertInquiryBoard(InquiryVO vo) {
			inquiryDAO.InsertInquiryBoard(vo);
	}
}
