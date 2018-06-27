package com.main.customer.board.DAO;

import java.util.List;

import com.main.customer.board.VO.ReviewVO;

public interface ReviewDAO {
	public void InsertReviewBoard(ReviewVO rvo);
	public List<ReviewVO> selectReviewDetail(ReviewVO rvo);
	public int DeleteReview(int num);
	public List<ReviewVO> SelectReviewBoard(ReviewVO rvo);
	public int ReviewViewCount(int num);
	public int countArticle(String search_option, String keyword);
	public List<ReviewVO> listAll(int start, int end, String search_option, String keyword);

}
