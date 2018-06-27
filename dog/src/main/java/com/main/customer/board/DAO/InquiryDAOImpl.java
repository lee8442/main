
package com.main.customer.board.DAO;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.board.Service.SelectInquiryBoardService;
import com.main.customer.board.VO.InquiryCategoryVO;
import com.main.customer.board.VO.InquiryQuestionCategoryVO;
import com.main.customer.board.VO.InquiryVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class InquiryDAOImpl implements InquiryDAO {

	private SqlSession SqlSession;
	SelectInquiryBoardService selectInquiryBoardService;

	public InquiryDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public void InsertInquiryBoard(InquiryVO vo) {
		
		SqlSession.insert("maBatis.customer.product.insertInquiry", vo);
		SqlSession.commit();
	}

	@Override
	public void updateInquiryBoard(InquiryVO vo) {
		
		SqlSession.update("maBatis.customer.product.updateInquiryInsert", vo);
		SqlSession.commit();
	}

	@Override
	public int delete(int num) {
		return SqlSession.update("delete", num);
	}



	@Override
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo) {
		return SqlSession.selectList("InquiryCategory", vo);
	}

	@Override
	public List<InquiryQuestionCategoryVO> QuestionCategory() {
		return SqlSession.selectList("QuestionCategory");
	}

	@Override
	public InquiryVO selectInquiryDetail(int num) {
		InquiryVO vo = SqlSession.selectOne("selectInquiryDetail", num);
		
		return vo;
	}

	@Override
	public int increaseViewCount(int num) {

		int result = SqlSession.update("increaseViewCount", num);
		SqlSession.commit();
		return result;
	}

	public int maxRefInquiry() {
		// TODO Auto-generated method stub
		return 0;
	}
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo) {    
	
		return SqlSession.selectList("selectInquiry",vo);
	}
	@Override
	public List<InquiryVO> listAll(int start, int end, String search_option,String keyword) {    
		 	
		Map<String,Object>map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("start",start);		
		map.put("end",end);		
		return SqlSession.selectList("selectInquiry",map);
	}
	

	@Override
	public int countArticle(String search_option, String keyword) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		
		return SqlSession.selectOne("countArticle",map);
	}

}
