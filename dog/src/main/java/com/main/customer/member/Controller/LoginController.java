package com.main.customer.member.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.customer.member.Service.LoginService;
import com.main.customer.member.VO.MemberVO;

@Controller
public class LoginController {
	@Autowired
	LoginService LoginService;

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("로그인 페이지");
		return "simple/member/loginForm";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session ,Model model){
		System.out.println("로그인 실행");
		MemberVO userInfo = LoginService.login(vo);
		if(userInfo !=null) {
			session.setAttribute("login", userInfo);
			return "redirect:main.do";
		} else {
			model.addAttribute("loginErr", "false");
			return "redirect:login.do";
		}
	}
	@RequestMapping(value="/logout.do", method= RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}
}