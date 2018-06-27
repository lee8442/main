package com.main.customer.board.Service;

import java.util.List;

import com.main.customer.board.VO.ReviewVO;



public interface SelectReviewBoardService {
	public List<com.main.customer.board.VO.ReviewVO> SelectReviewBoard(ReviewVO rvo);
	public List<ReviewVO> listAll(int start, int end, String search_option, String keyword);
	public int countArticle(String search_option, String keyword);
	public void ReviewViewCount(int num);

	
}
