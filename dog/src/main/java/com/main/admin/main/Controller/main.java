package com.main.admin.main.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class main {
@RequestMapping(value = "/main.ado")
		public String adminMain() {
			System.out.println("메인 페이지");
			return "admin/main/main";
		}
}
