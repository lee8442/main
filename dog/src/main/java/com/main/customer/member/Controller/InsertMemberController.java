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
	
	@RequestMapping(value = "/insertMemberForm.do")
	public String insertMemberForm() {
		System.out.println("�쉶�썝媛��엯 �럹�씠吏�");

		return "simple/member/signUp";
	}
	
	@RequestMapping(value = "/login.do")
	public String login() {
		System.out.println("濡쒓렇�씤 �럹�씠吏�");

		return "simple/member/login";
	}

	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO vo) {
		System.out.println("�쉶�썝媛��엯 泥섎━");

		InsertMemberService.insertMember(vo);
		return "main/member/NewFile2";
	}
}