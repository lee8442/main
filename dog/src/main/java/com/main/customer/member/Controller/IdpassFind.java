package com.main.customer.member.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class IdpassFind {
	@RequestMapping(value = "/idpassFind.do")
	public String idpassFind() {
		System.out.println("아이디 패스워드찾기 페이지 ");

		return "simple/member/idpassFind";
	}
}
