package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailPageController {
	@RequestMapping(value = "/detailPage.do")
	public String detailPage() {
		System.out.println("상품상세 페이지");

		return "simple/product/detailPage";
	}
}
