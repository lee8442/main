package com.main.customer.board.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.ReviewDAO;


@Service
public class DeleteReviewBoardServiceImpl implements DeleteReviewBoardService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public int deleteReview(int num) {
		// TODO Auto-generated method stub
		return reviewDAO.DeleteReview(num);
	}
}
