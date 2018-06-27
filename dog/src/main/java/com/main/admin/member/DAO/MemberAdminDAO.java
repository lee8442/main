package com.main.admin.member.DAO;

import java.util.List;

import com.main.customer.member.VO.MemberVO;

public interface MemberAdminDAO {
	public List<MemberVO> memberList();
	public MemberVO memberDetailList(String id);
	public int deleteMember(String id);
}
