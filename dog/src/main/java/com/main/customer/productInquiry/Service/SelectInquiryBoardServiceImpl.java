package com.main.customer.productInquiry.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.InquiryDAO;
import com.main.customer.productInquiry.VO.InquiryVO;

@Service
public class SelectInquiryBoardServiceImpl implements SelectInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;	
	
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo) {
		return inquiryDAO.SelectInquiryBoard(vo);
	}
	@Override
	public InquiryVO selectInquiryDetail(int num) {
		InquiryVO vo=inquiryDAO.selectInquiryDetail(num);
		return vo;
	}
	@Override
	public void increaseViewCount(int num) {
			int result=inquiryDAO.increaseViewCount(num);
			System.out.println(result);
	}
	/**글쓸때 max ref가져오기*/
	public int maxRefInquiry() {
		return inquiryDAO.maxRefInquiry();
	}
	@Override
	public List<InquiryVO> blistAll(int start, int end, String searchOption, String keyword) throws Exception {
	    return inquiryDAO.blistAll(start, end, searchOption, keyword);
	}
	@Override
	public int countArticle(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		return 0;
	}
}

