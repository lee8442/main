package com.main.customer.productInquiry.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.InquiryDAO;

@Service
public class DeleteInquiryBoardServiceImpl implements DeleteInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;
	
	@Override
	public int delete(int num) {
		return	inquiryDAO.delete(num);
		}


}
