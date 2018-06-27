package com.main.customer.member.DAO;

import com.main.customer.member.VO.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);

	public MemberVO login(MemberVO vo);

	public int idCheck(String id);

	public MemberVO adminLogin(MemberVO adminvo);

	public MemberVO idFind(MemberVO findId);

	public MemberVO findPassword(MemberVO findPass);

	public int repass(MemberVO findPass) throws Exception;

	public int myProfileUpdate(MemberVO vo);

	public int myProfileDelete(MemberVO vo);
}