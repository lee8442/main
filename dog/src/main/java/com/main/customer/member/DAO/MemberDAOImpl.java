package com.main.customer.member.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.member.VO.MemberVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class MemberDAOImpl implements MemberDAO {
	private SqlSession SqlSession;

	public MemberDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public void insertMember(MemberVO vo) {
		System.out.println(vo.toString());
		SqlSession.insert("myBatis.customer.member.insertMember", vo);
		SqlSession.commit();
		System.out.println("회원가입 완료");
	}

	@Override
	public int idCheck(String id) {
		int result = SqlSession.selectOne("myBatis.customer.member.idCheck", id);
		System.out.println("아이디 중복 확인 완료");
		System.out.println("결과 : " + result);
		return result;
	}

	// 로그인 구현
	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("로그인 실행 완료");
		MemberVO userId = SqlSession.selectOne("myBatis.customer.member.login", vo);
		return userId;
	}

	@Override
	public MemberVO adminLogin(MemberVO adminvo) {
		System.out.println("관리자 로그인 실행 완료");
		MemberVO adminId = SqlSession.selectOne("myBatis.customer.member.adminLogin", adminvo);
		return adminId;
	}

	// 아이디 찾기
	@Override
	public MemberVO idFind(MemberVO findId) {
		System.out.println("아이디 찾기");
		MemberVO idFind = SqlSession.selectOne("myBatis.customer.member.findId", findId);
		return idFind;
	}

	// 비밀번호 찾기
	@Override
	public MemberVO findPassword(MemberVO findPass) {
		System.out.println("비밀번호 찾기");
		MemberVO passFind = SqlSession.selectOne("myBatis.customer.member.findPassword", findPass);
		return passFind;
	}

	// 임시비밀번호 주기
	@Override
	public int repass(MemberVO findPass) throws Exception {
		int pass = SqlSession.update("myBatis.customer.member.repass", findPass);
		SqlSession.commit();
		return pass;
	}

	// 내정보 수정
	public int myProfileUpdate(MemberVO vo) {
		int profile = SqlSession.update("myBatis.customer.member.updateMyProfile", vo);
		SqlSession.commit();
		return profile;
	}

	// 회원탈퇴
	public int myProfileDelete(MemberVO vo) {
		int deleteProfile = SqlSession.update("myBatis.customer.member.deleteMyProfile", vo);
		SqlSession.commit();
		return deleteProfile;
	}

}