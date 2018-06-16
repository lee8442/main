package com.main.customer.productInquiry.Service;

import java.util.List;

import com.main.customer.productInquiry.VO.InquiryVO;

public interface SelectInquiryBoardService {
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo);
	public InquiryVO selectInquiryDetail(int num);
	public void increaseViewCount(int num);	
	public int maxRefInquiry();
	public List<InquiryVO>blistAll(int start, int end, String searchOption, String keyword) throws Exception;
	public int countArticle(String searchOption, String keyword);
}
