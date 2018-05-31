package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InquiryWriteController {

	@RequestMapping(value = "/inquiryWrite.do")
	public String productInquiry() {
		System.out.println("상품문의 페이지");

		return "simple/product/inquiryWrite";
	}
}
