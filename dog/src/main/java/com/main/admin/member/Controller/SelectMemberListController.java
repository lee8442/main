package com.main.admin.member.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.member.Service.DeleteMemberService;
import com.main.admin.member.Service.SelectListMemberService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class SelectMemberListController {
	@Autowired
	private SelectListMemberService selectListMemberService;
	@Autowired
	private DeleteMemberService deleteMemberService;

	@RequestMapping(value = "/selectMemberList.ado")
	public String selectMemberList(Model model) {
		System.out.println("회원리스트 목록 페이지");
		List<MemberVO> list = selectListMemberService.memberList();
		model.addAttribute("memberList", list);
		return "admin/member/selectMemberList";
	}

	@RequestMapping(value = "/deleteMember.ado")
	@ResponseBody
	public int deleteMember(String id) {
		System.out.println("회원 삭제 실행");
		int result = deleteMemberService.deleteMember(id);
		System.out.println(result);
		return result;
	}
	/*
	 * @RequestMapping(value = "/selectMemberList.ado") public String
	 * deleteMember(String id) {
	 * 
	 * if(id != null) { DeleteMemberService.deleteMember(id); } else {
	 * System.out.println("삭제안댐"); } return "redirect:/member/selectMemberList"; }
	 */
}
