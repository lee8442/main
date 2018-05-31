package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ReviewAllBoardListController {
	@RequestMapping(value = "/reviewAllBoardList.do")
	public String reviewAllBoardList() {
		System.out.println("전체게시판");

		return "simple/product/reviewAllBoardList";
	}
}
