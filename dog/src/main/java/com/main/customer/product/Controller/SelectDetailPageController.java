package com.main.customer.product.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.member.VO.MemberVO;
import com.main.customer.product.Service.InsertProductBasketService;
import com.main.customer.product.Service.SelectDetailPageListService;

@Controller
public class SelectDetailPageController {

	@Autowired
	SelectDetailPageListService selectDetailPageListservice;

	@Autowired
	InsertProductBasketService insertProductBasketService;
	
	@RequestMapping(value = "/detailPage.do", method = RequestMethod.GET)
	public String detailPage(String code, Model model, HttpSession session) {
		System.out.println("상품상세 페이지");

		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		String member_id = memberVO.getId();
		
		List<ProductVO> selectDetailPageList = selectDetailPageListservice.selectDetailPageList(code);
		model.addAttribute("selectDetailPage", selectDetailPageList);
		model.addAttribute("id", member_id);
		
		return "simple/product/detailPage";
	}
	
	@RequestMapping(value = "/detailPage.do", method = RequestMethod.POST)
	public String detailPage(Product_BasketVO vo) {
		
			
			insertProductBasketService.insertProductBasket(vo);
			
		return "redirect:productBasket.do";
	}

}