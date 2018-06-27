package com.main.customer.board.Service;

import java.util.List;

import com.main.customer.board.VO.ReviewVO;

public interface SelectReviewDetailService {
	public List<ReviewVO> selectReviewDetail(ReviewVO rvo);
	public void reviewViewCount(int num);	
	public int countArticle(String search_option, String keyword);
}
