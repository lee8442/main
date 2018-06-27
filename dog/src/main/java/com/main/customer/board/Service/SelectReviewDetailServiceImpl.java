package com.main.customer.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.ReviewDAO;
import com.main.customer.board.VO.ReviewVO;

@Service
public class SelectReviewDetailServiceImpl implements SelectReviewDetailService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<ReviewVO> selectReviewDetail(ReviewVO rvo) {
		
		return  reviewDAO.selectReviewDetail(rvo);
	}
	@Override
	public void reviewViewCount(int num) {
			int result=reviewDAO.ReviewViewCount(num);
			System.out.println(result);
	}

	@Override
	public int countArticle(String search_option, String keyword) {
		return reviewDAO.countArticle(search_option, keyword);
	}
}
