package com.main.customer.product.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DetailPageController {
	@RequestMapping(value = "/detailPage.do")
	public String detailPage() {
		System.out.println("상품상세 페이지");

		return "simple/product/detailPage";
	}
		
	@RequestMapping(value = "/image.do")
	public String iamge(@RequestParam("image") String image) {
		System.out.println(" 이미지 전환 페이지 이미지경로로 DB검색해야");
		System.out.println(image);
		
		return "redirect:detailPage.do";
	}
	
	@RequestMapping(value = "/bestProduct.do")
	public String bestProduct(@RequestParam("code") String code) {
		System.out.println("code로 디비검색");
		System.out.println(code);
		
		return "redirect:detailPage.do";
	}
	@RequestMapping(value = "/recomProduct.do")
	public String recomProduct(@RequestParam("code") String code) {
		System.out.println("code로 디비검색");
		System.out.println(code);
		
		return "redirect:detailPage.do";
	}
}