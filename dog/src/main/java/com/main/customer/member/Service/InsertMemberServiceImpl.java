package com.main.customer.member.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.VO.MemberVO;

@Service
public class InsertMemberServiceImpl implements InsertMemberService {
	@Autowired
	private MemberDAO MemberDAO;
	
	@Override
	public void insertMember(MemberVO vo) {
		MemberDAO.insertMember(vo);
	}
	
	@Override
	public int idCheck(String id) {
		int result = MemberDAO.idCheck(id);
		return result;
	};
}
