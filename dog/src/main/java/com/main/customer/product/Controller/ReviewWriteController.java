package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ReviewWriteController {
	@RequestMapping(value = "/reviewWrite.do")
	public String productReview() {
		System.out.println("상품리뷰 게시판 페이지");

		return "simple/product/reviewWrite";
	}
}
