package com.main.customer.member.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.VO.MemberVO;
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	MemberDAO MemberDAO;
	@Override
	public MemberVO login(MemberVO vo) {
		return MemberDAO.login(vo);
	}
	@Override
	public MemberVO adminLogin(MemberVO adminvo) {
		return MemberDAO.adminLogin(adminvo);
	}
}
