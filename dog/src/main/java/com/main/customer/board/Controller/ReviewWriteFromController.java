package com.main.customer.board.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectProductListService;
import com.main.admin.product.VO.ProductVO;
import com.main.customer.board.VO.ReviewVO;


@Controller
public class ReviewWriteFromController {
	
	@Autowired
	SelectProductListService selectProductListService;
		

	@RequestMapping(value = "/reviewWrite.do")
	public String productReviewForm(Model model,ProductVO pvo,ReviewVO rvo) {
		System.out.println("상품리뷰 등록 페이지 ");
		rvo.setMember_id("visitor");
		List<ProductVO>  plist = selectProductListService.productList();
		selectProductListService.productList();
		model.addAttribute("plist",plist);
		System.out.println(plist);
		return "simple/product/reviewWrite";
	}
	
	
	
}
