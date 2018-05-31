package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class InquiryAllBoardListController {
	@RequestMapping(value = "/inquiryAllBoardList.do")
	public String inquiryAllBoardList() {
		System.out.println("전체게시판");

		return "simple/product/inquiryAllBoardList";
	}
}
