package com.main.customer.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.ReviewDAO;
import com.main.customer.board.VO.ReviewVO;

@Service
public class SelectReviewBoardServiceImpl implements SelectReviewBoardService {
	
	@Autowired
	private ReviewDAO reviewDAO;

	public List<ReviewVO> SelectReviewBoard(ReviewVO rvo) {
		return reviewDAO.SelectReviewBoard(rvo);
	}
	@Override
	public List<ReviewVO> listAll(int start, int end, String search_option, String keyword) {
		return reviewDAO.listAll(start, end, search_option, keyword);
	}
	@Override
	public int countArticle(String search_option, String keyword) {
		return reviewDAO.countArticle(search_option, keyword);
	}
	@Override
	public void ReviewViewCount(int num) {
			int result=reviewDAO.ReviewViewCount(num);
			System.out.println(result);
	}
}
