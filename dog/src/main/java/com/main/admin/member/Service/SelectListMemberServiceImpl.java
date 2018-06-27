package com.main.admin.member.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.main.admin.member.DAO.MemberAdminDAO;
import com.main.customer.member.VO.MemberVO;

@Service("SelectListMemberService")
public class SelectListMemberServiceImpl implements SelectListMemberService {
	@Autowired
	MemberAdminDAO memberAdminDAO;

	@Override
	public List<MemberVO> memberList() {
		return memberAdminDAO.memberList();
	}
	@Override
	public MemberVO memberDetailList(String id){
		return memberAdminDAO.memberDetailList(id);
	}
}
