package com.main.customer.productInquiry.DAO;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.main.customer.productInquiry.Service.SelectInquiryBoardService;
import com.main.customer.productInquiry.VO.InquiryCategoryVO;
import com.main.customer.productInquiry.VO.InquiryQuestionCategoryVO;
import com.main.customer.productInquiry.VO.InquiryVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class InquiryDAOImpl implements InquiryDAO {
	private SqlSession SqlSession;
	SelectInquiryBoardService selectInquiryBoardService;

	public InquiryDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public int InsertInquiryBoard(InquiryVO vo) {
		
		return SqlSession.insert("InquiryBoard.insertInquiry", vo);
	}

	@Override
	public int updateInquiryInsert(InquiryVO vo) {
		
		return SqlSession.insert("InquiryBoard.updateInquiryInsert", vo);
	}

	@Override
	public int delete(int num) {
		return SqlSession.update("InquiryBoard.delete", num);
	}

	@Override
	public List<InquiryVO> SelectInquiryBoard(InquiryVO vo) {
		return SqlSession.selectList("InquiryBoard.selectInquiry", vo);
	}

	@Override
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo) {
		return SqlSession.selectList("productInquiryCategory.InquiryCategory", vo);
	}

	@Override
	public List<InquiryQuestionCategoryVO> QuestionCategory() {
		return SqlSession.selectList("InquiryQC.QuestionCategory");
	}

	@Override
	public InquiryVO selectInquiryDetail(int num) {
		InquiryVO vo = SqlSession.selectOne("selectInquiryDetail", num);
		
		return vo;
	}

	@Override
	public int increaseViewCount(int num) {

		int result = SqlSession.update("InquiryBoard.increaseViewCount", num);
		SqlSession.commit();
		return result;
	}

	public int maxRefInquiry() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<InquiryVO> blistAll(int start, int end, String searchOption, String keyword) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    // BETWEEN #{start}, #{end}에 입력될 값을 맵에 
	    map.put("start", start);
	    map.put("end", end);
	    return SqlSession.selectList("selectInquiry", map);
	}
}
