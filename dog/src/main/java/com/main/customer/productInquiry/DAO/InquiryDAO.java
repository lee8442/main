package com.main.customer.productInquiry.DAO;

import java.util.List;


import com.main.customer.productInquiry.VO.InquiryCategoryVO;
import com.main.customer.productInquiry.VO.InquiryQuestionCategoryVO;
import com.main.customer.productInquiry.VO.InquiryVO;

public interface InquiryDAO {
	public int InsertInquiryBoard(InquiryVO vo); 
	public int updateInquiryInsert(InquiryVO vo);
	public List<InquiryVO>SelectInquiryBoard(InquiryVO vo);
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo);
	public List<InquiryQuestionCategoryVO> QuestionCategory();
	public InquiryVO selectInquiryDetail(int num) ;
	public int increaseViewCount(int num) ;
	public int maxRefInquiry();
	public int delete(int num);
	public List<InquiryVO>blistAll(int start, int end, String searchOption, String keyword) throws Exception;

}
