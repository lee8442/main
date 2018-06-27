package com.main.customer.member.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.VO.MemberVO;

@Service
public class SelectIdPassFindServiceImpl implements SelectIdPassFindService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberVO idFind(MemberVO findId) {
		return memberDAO.idFind(findId);
	}
	@Override
	public MemberVO findPassword(MemberVO findPass) {
		return memberDAO.findPassword(findPass);
	}
	@Override
	public int repass(MemberVO findPass)throws Exception{
		return memberDAO.repass(findPass);
	}
}
