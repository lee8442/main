package com.main.customer.board.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAOImpl;
import com.main.customer.board.VO.InquiryVO;
@Service
public class UpdateInquiryBoardServiceImpl implements UpdateInquiryBoardService{
	@Autowired
	private	InquiryDAOImpl inquiryDAO;
	
	@Override
	public void updateInquiryBoard(InquiryVO vo) throws Exception{
		inquiryDAO.updateInquiryBoard(vo);
	}
}
