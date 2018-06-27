package com.main.customer.member.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.member.Service.DeleteMyProfileService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class DeleteMyProfileController {
	@Autowired
	DeleteMyProfileService deleteMyProfileService;

	@RequestMapping(value = "/deleteMyProfile.do")
	public String deleteMyProfile() {
		System.out.println("회원탈퇴 페이지");
		return "simple/member/deleteMyProfile";
	}

	@RequestMapping(value = "/deleteGo.do")
	public String deleteGo(MemberVO vo, Model model ,HttpSession session) {
		System.out.println("회원탈퇴 완료 사실은 update");
		int x = 1;
		if (x == 1) {
			/*
			 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
			 * response.getWriter();
			 * out.println("<script>alert('회원님의 탈퇴가 정상적으로 이루어졌습니다'); </script>");
			 * out.flush(); session.invalidate();
			 */
			deleteMyProfileService.myProfileDelete(vo);
			session.invalidate();
			model.addAttribute("deleteMSG", "true");
			return "redirect:main.do";
		} else if (x == 0) {
			model.addAttribute("falseMSG", "false");
		}
		return "redirect:main.do";
	}
}
