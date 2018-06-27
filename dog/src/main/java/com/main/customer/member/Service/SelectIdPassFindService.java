package com.main.customer.member.Service;


import com.main.customer.member.VO.MemberVO;

public interface SelectIdPassFindService {
	public MemberVO idFind(MemberVO findId);
	public MemberVO findPassword(MemberVO findPass);
	public int repass(MemberVO findPass)throws Exception;
}
