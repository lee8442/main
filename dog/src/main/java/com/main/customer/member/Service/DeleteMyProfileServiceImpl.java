package com.main.customer.member.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.VO.MemberVO;

@Service("DeleteMyProfileService")
public class DeleteMyProfileServiceImpl implements DeleteMyProfileService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public int myProfileDelete(MemberVO vo) {
		return memberDAO.myProfileDelete(vo);
	}

}
