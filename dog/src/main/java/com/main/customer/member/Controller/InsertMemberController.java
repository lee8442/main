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

	@RequestMapping(value = "/insertMember.do", method = RequestMethod.GET)
	public String insertMemberForm() {
		System.out.println("회원가입 페이지");
		return "simple/member/insertMember";
	}

	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(String id) {
		System.out.println("아이디 중복 체크");
		int result = InsertMemberService.idCheck(id);
		return result;
	}

	@RequestMapping(value = "/mapSearch.do")
	public String mapSearch() {
		System.out.println("주소 검색 결과");
		return "simple/member/mapSearch";
	}

	@RequestMapping(value = "/insertMember.do", method = RequestMethod.POST)
	public String insertMember(MemberVO vo) {
		System.out.println("회원가입 완료");
		InsertMemberService.insertMember(vo);
		return "redirect:main.do";
	}
}