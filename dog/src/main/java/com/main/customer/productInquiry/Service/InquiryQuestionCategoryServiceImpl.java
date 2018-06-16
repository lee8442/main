package com.main.customer.productInquiry.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.InquiryDAO;
import com.main.customer.productInquiry.VO.InquiryQuestionCategoryVO;

@Service
public class InquiryQuestionCategoryServiceImpl implements InquiryQuestionCategoryService {
	
	@Autowired
	private InquiryDAO inquiryDAO;

	@Override
	public List<InquiryQuestionCategoryVO> QuestionCategory()  {
		// TODO Auto-generated method stub
		return inquiryDAO.QuestionCategory();
	}
}
