package com.main.admin.main.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping(value = "/main.ado")
	public String main() {
		System.out.println("관리자 메인 페이지");
		return "admin/main/main";
	}
}
