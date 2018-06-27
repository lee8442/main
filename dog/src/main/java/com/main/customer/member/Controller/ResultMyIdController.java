package com.main.customer.member.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResultMyIdController {
	@RequestMapping(value = "/resultMyId.do")
	public String resultMyId() {
		System.out.println("마이 페이지");
		return "simple/member/resultMyId";
	}
}
