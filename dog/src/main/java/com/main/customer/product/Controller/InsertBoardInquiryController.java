package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.inquiry.VO.InquiryVO;

@Controller
public class InsertBoardInquiryController {

	@RequestMapping(value = "/insertBoardInquiryForm.do")
	public String productInquiry() {
		System.out.println("상품문의 페이지");

		return "simple/product/inquiryWrite";
	}
		@RequestMapping(value="/insertBoardInquiry.do")
		public String insertBoardInquiry(InquiryVO vo) {
			System.out.println("문의 등록이벤트");
			return "simple/product/inquiryWrite";
		}
	}

