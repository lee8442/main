package com.main.customer.board.Service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.main.customer.board.VO.InquiryVO;

public interface SelectInquiryBoardService {
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo) ;
	public InquiryVO selectInquiryDetail(int num);
	public void increaseViewCount(int num);	
	public int maxRefInquiry();
	public int countArticle(String search_option, String keyword);
	public List<InquiryVO> listAll(int start, int end, String search_option, String keyword);
	
	
	}

