package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailsPageController {
	@RequestMapping(value = "/detailsPage.do")
	public String detailsPage() {
		System.out.println("상품상세 페이지");

		return "simple/product/detailsPage";
	}
}
