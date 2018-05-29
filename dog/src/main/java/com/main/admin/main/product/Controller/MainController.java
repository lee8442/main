package com.main.admin.main.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping(value = "/main.ado")
	public String main() {
		System.out.println("메인페이지");
		return "main/main";
	}
}
