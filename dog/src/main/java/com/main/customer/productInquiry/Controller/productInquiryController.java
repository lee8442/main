package com.main.customer.productInquiry.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.productInquiry.Service.InquiryCategoryService;
import com.main.customer.productInquiry.VO.InquiryCategoryVO;

import com.main.customer.productInquiry.VO.InquiryVO;

@Controller
public class productInquiryController {
	
	@Autowired
	InquiryCategoryService inquiryCategoryService;
	
	@RequestMapping(value = "/productInquiry.do")
	public String productInquiry(InquiryCategoryVO vo, Model model) throws Exception {
		System.out.println("상품문의 페이지");
		
		List<InquiryCategoryVO> InquiryCategory = inquiryCategoryService.InquiryCategory(vo);
		model.addAttribute("InquiryCategory",InquiryCategory);
		
		return "simple/product/productInquiry";
	}
	@RequestMapping(value="/productInquiryWrite.do")
	public String productInquiryWrite(InquiryVO vo) {
		System.out.println("상품문의 글쓰기 페이지 ");
		return "simple/product/productInquiryWrite";
	}
	
}
