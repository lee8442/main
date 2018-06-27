package com.main.customer.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAO;
import com.main.customer.board.VO.InquiryVO;

@Service
public class SelectInquiryBoardServiceImpl implements SelectInquiryBoardService {
	@Autowired
	private InquiryDAO inquiryDAO;	
	
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
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo){
		return inquiryDAO.SelectInquiryBoard(vo);
	}
	@Override
	public int countArticle(String search_option, String keyword) {
		return inquiryDAO.countArticle(search_option, keyword);
	}
	@Override
	public List<InquiryVO> listAll(int start, int end, String search_option, String keyword) {
		// TODO Auto-generated method stub
		return inquiryDAO.listAll(start, end, search_option, keyword);
	}

}

