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
	//로그인 구현
			@Override
			public MemberVO login(MemberVO vo) {
				System.out.println("로그인 실행 완료");
				MemberVO userId= SqlSession.selectOne("myBatis.customer.member.login", vo);
				return userId;
			}
}