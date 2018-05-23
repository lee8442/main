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

	public void insertMember(MemberVO vo) {
		System.out.println(vo.toString());
		SqlSession.insert("myBatis.customer.member.insertMember", vo);
		SqlSession.commit();
		System.out.println("완료");
	}
}