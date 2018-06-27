package com.main.customer.member.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.member.Service.UpdateMyProfileService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class UpdateMyProfileController {
	@Autowired
	UpdateMyProfileService updateMyProfileService;

	@RequestMapping(value = "/updateMyProfile.do")
	public String updateMyProfile() {
		System.out.println("정보 수정 페이지");
		return "simple/member/updateMyProfile";
	}

	@RequestMapping(value = "/updateProfile.do")
	public String updateProfile(MemberVO vo, Model model) {
		System.out.println("정보 수정 완료");
		int x = 1;
		if (x == 1) {
			updateMyProfileService.myProfileUpdate(vo);
			model.addAttribute("msg", "true");
		}
		return "simple/member/myPage";
	}
}
