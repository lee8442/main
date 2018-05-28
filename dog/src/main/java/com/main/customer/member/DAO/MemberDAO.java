package com.main.customer.member.DAO;

import com.main.customer.member.VO.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	
	public int idCheck(String id);
}