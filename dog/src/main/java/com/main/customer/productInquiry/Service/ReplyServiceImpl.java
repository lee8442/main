package com.main.customer.productInquiry.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.productInquiry.DAO.ReplyDAO;
import com.main.customer.productInquiry.VO.ReplyVO;
@Service
public class ReplyServiceImpl implements ReplyService{
	 @Autowired
	 private ReplyDAO replyDAO;
	
	// 댓글 목록
    @Override
    public List<ReplyVO> list(Integer num) {
        return replyDAO.list(num);
    }
    // 댓글 작성
    @Override
    public void create(ReplyVO vo) {
    	replyDAO.create(vo);
    }
    // 댓글 수정
    @Override
    public void update(ReplyVO vo) {
        // TODO Auto-generated method stub
 
    }
    // 댓글 삭제
    @Override
    public void delete(Integer rno) {
        // TODO Auto-generated method stub
 
    }
}
