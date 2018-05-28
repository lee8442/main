package com.main.customer.productInquiry.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class productInquiryController {

	@RequestMapping(value = "/productInquiry.do")
	public String productInquiry() {
		System.out.println("상품문의 페이지");

		return "simple/product/productInquiry";
	}
}
