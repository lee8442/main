package com.main.admin.member.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.member.DAO.MemberAdminDAO;

@Service("DeleteMemberService")
public class DeleteMemberServiceImpl implements DeleteMemberService {
	@Autowired
	MemberAdminDAO memberAdminDAO;

	@Override
	public int deleteMember(String id) {
		return memberAdminDAO.deleteMember(id);
	}
}
