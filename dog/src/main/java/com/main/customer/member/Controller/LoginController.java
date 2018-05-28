package com.main.customer.member.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value = "/loginForm.do")
	public String login() {
		System.out.println("로그인 페이지");
		return "simple/member/loginForm";
	}
}