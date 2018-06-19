package com.main.customer.member.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPage {

	@RequestMapping(value = "/myPage.do")
	public String myPage() {
		System.out.println("마이 페이지");
		return "simple/member/myPage";
	}
}
