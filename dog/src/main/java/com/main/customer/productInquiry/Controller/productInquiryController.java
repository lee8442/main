package com.main.customer.productInquiry.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.productInquiry.VO.InquiryVO;

@Controller
public class productInquiryController {

	@RequestMapping(value = "/productInquiry.do")
	public String productInquiry() {
		System.out.println("상품문의 페이지");

		return "simple/product/productInquiry";
	}
	@RequestMapping(value="/productInquiryWrite.do")
	public String productInquiryWrite(InquiryVO vo) {
		System.out.println("문의 등록이벤트");
		return "simple/product/productInquiryWrite";
	}
}
