package com.main.admin.member.Service;

import java.util.List;

import com.main.customer.member.VO.MemberVO;

public interface SelectListMemberService {
	public List<MemberVO> memberList();
	public MemberVO memberDetailList(String id);
}
