package com.main.customer.member.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.customer.member.Service.InsertMemberService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class InsertMemberController {
	@Autowired
	InsertMemberService InsertMemberService;

	@RequestMapping(value = "/insertMemberForm.do")
	public String insertMemberForm() {
		System.out.println("회원가입 페이지");
		return "simple/member/signUp";
	}

	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(String id) {
		System.out.println("아이디 중복 체크");
		int result = InsertMemberService.idCheck(id);
		return result;
	}

	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO vo) {
		System.out.println("회원가입 완료");
		InsertMemberService.insertMember(vo);
		return "main/main/main";
	}
}