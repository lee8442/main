package com.main.customer.productInquiry.DAO;

import java.util.List;

import com.main.customer.productInquiry.VO.InquiryCategoryVO;
import com.main.customer.productInquiry.VO.InquiryVO;

public interface InquiryDAO {
	public void InsertInquiryBoard(InquiryVO vo); 
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo);
}
