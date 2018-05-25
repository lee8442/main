package com.main.customer.member.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.member.Service.InsertMemberService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class InsertMemberController {
	@Autowired
	InsertMemberService InsertMemberService;
	
	@RequestMapping(value = "/main.do")
	public String main() {
		System.out.println("메인 페이지");

		return "main/main/main";
	}

	@RequestMapping(value = "/insertMemberForm.do")
	public String insertMemberForm() {
		System.out.println("회원가입 페이지");

		return "simple/member/signUp";
	}

	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO vo) {
		System.out.println("회원가입 처리");

		InsertMemberService.insertMember(vo);
		return "main/member/NewFile2";
	}
}