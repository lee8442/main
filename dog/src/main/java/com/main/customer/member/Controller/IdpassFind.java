package com.main.customer.member.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class IdpassFind {
	@RequestMapping(value = "/idpassFind.do")
	public String idpassFind() {
		System.out.println("���̵� �н�����ã�� ������ ");

		return "simple/member/idpassFind";
	}
}
