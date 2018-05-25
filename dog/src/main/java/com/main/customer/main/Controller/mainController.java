package com.main.customer.main.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	@RequestMapping(value = "/main.do")
	public String main() {
		System.out.println("메인 페이지");

		return "main/main/main";
	}
}
