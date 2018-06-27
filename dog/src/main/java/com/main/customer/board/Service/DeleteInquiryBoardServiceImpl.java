package com.main.customer.board.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAO;

@Service
public class DeleteInquiryBoardServiceImpl implements DeleteInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;
	
	@Override
	public int delete(int num) {
		return	inquiryDAO.delete(num);
		}


}
