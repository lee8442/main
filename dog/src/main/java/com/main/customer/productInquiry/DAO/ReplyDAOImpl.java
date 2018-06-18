package com.main.customer.productInquiry.DAO;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.productInquiry.Service.ReplyService;
import com.main.customer.productInquiry.VO.ReplyVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	private SqlSession SqlSession;
	ReplyService replyService;
	
	public ReplyDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	// 댓글 목록
	public List<ReplyVO>list(Integer num){
		
		return SqlSession.selectList("listReply",num);
		
	}
	 // 댓글 작성
    public void create(ReplyVO vo) {
       SqlSession.insert("insertReply", vo);
       SqlSession.commit();
    }
    // 댓글 수정
    public void update(ReplyVO vo) {
        // TODO Auto-generated method stub
    }
    // 댓글 삭제
  
    public void delete(Integer rno) {
        // TODO Auto-generated method stub
    }
    
}
