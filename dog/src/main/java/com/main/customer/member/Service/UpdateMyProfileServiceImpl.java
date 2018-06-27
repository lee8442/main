package com.main.customer.member.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.VO.MemberVO;

@Service("UpdateMyProfileService")
public class UpdateMyProfileServiceImpl implements UpdateMyProfileService {
	@Autowired
	MemberDAO memberDAO;

	@Override
	public int myProfileUpdate(MemberVO vo) {
		return memberDAO.myProfileUpdate(vo);
	}

}
