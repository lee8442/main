package com.main.customer.board.DAO;

import java.util.List;

import com.main.customer.board.VO.InquiryCategoryVO;
import com.main.customer.board.VO.InquiryQuestionCategoryVO;
import com.main.customer.board.VO.InquiryVO;

public interface InquiryDAO {
	public void InsertInquiryBoard(InquiryVO vo); 
	public void updateInquiryBoard(InquiryVO vo);
	public List<InquiryVO>SelectInquiryBoard(InquiryVO vo);
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo);
	public List<InquiryQuestionCategoryVO> QuestionCategory();
	public InquiryVO selectInquiryDetail(int num) ;
	public int increaseViewCount(int num) ;
	public int maxRefInquiry();
	public int delete(int num); 
	public int countArticle(String search_option, String keyword);
	public  List<InquiryVO> listAll(int start, int end, String search_option, String keyword);
	
}
