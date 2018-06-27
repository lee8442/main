package com.main.admin.member.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.customer.member.VO.MemberVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class MemberAdminDAOImpl implements MemberAdminDAO {
	private SqlSession SqlSession;

	public MemberAdminDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<MemberVO> memberList() {
		System.out.println("회원목록 가져오기");
		return SqlSession.selectList("myBatis.admin.member.memberList");
	}
	@Override
	public MemberVO memberDetailList(String id) {
		System.out.println("회원상세목록 가져오기");
		return SqlSession.selectOne("myBatis.admin.member.memberDetailList", id);
	}
	@Override
	public int deleteMember(String id){
		System.out.println("회원 탈퇴시켜주기");
		int result = SqlSession.delete("myBatis.admin.member.deleteMember",id);
		SqlSession.commit();
		return result;
	}
}
