package com.main.customer.board.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.board.Service.InsertReviewBoardService;
import com.main.customer.board.VO.ReviewVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	private SqlSession SqlSession;
	InsertReviewBoardService insertReviewBoardService;
	
	public ReviewDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	@Override
	public void InsertReviewBoard(ReviewVO rvo) {
		
		
		SqlSession.insert("myBatis.customer.board.insertReview",rvo);
		SqlSession.commit();
	}

	@Override
	public int DeleteReview(int num) {
		
		return SqlSession.delete("reviewdelete",num);
	}
	@Override
	public List<ReviewVO> SelectReviewBoard(ReviewVO rvo) {
	
		return SqlSession.selectList("myBatis.customer.board.selectReview", rvo);
	}
	@Override
	public int ReviewViewCount(int num) {

		int result = SqlSession.update("myBatis.customer.board.reviewViewCount", num);
		SqlSession.commit();
		return result;
	}
	@Override
	public List<ReviewVO> listAll(int start, int end, String search_option, String keyword) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("start",start);		
		map.put("end",end);		
		return SqlSession.selectList("myBatis.customer.board.selectReview",map);
	}

	@Override
	public int countArticle(String search_option, String keyword) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		
		return SqlSession.selectOne("myBatis.customer.board.review_countArticle",map);
	}
	@Override
	public List<ReviewVO> selectReviewDetail(ReviewVO rvo) {
		
			
		return SqlSession.selectList("myBatis.customer.board.selectReviewDetail",rvo);
	
	}		
}
	
