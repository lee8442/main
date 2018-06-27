package com.main.admin.member.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.member.Service.SelectListMemberService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class SelectMemberInfoController {
	@Autowired
	SelectListMemberService ListService;

	@RequestMapping(value = "/selectMemberInfo.ado")
	public String selectMemberInfo(String id, Model model) {
		System.out.println("회원상세정보 페이지");
		MemberVO memberInfo = ListService.memberDetailList(id);
		model.addAttribute("memberInfo", memberInfo);
		return "admin/member/selectMemberInfo";
	}
}
