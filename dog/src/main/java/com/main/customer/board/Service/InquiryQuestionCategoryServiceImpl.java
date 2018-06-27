package com.main.customer.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAO;
import com.main.customer.board.VO.InquiryQuestionCategoryVO;

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
