package com.main.customer.board.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.ReviewDAO;
import com.main.customer.board.VO.ReviewVO;


@Service
public class InsertReviewBoardServiceImpl implements InsertReviewBoardService{
	@Autowired
	private ReviewDAO reviewDAO;
	
	public void InsertReviewBoard(ReviewVO rvo) {
		reviewDAO.InsertReviewBoard(rvo);
	}
}
