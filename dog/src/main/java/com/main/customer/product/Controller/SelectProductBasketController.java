package com.main.customer.product.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.member.VO.MemberVO;
import com.main.customer.product.Service.SelectProductBasketService;
import com.main.customer.product.Service.SelectProductService;

@Controller
public class SelectProductBasketController {

	@Autowired
	SelectProductService selectProductService;
	@Autowired
	SelectProductBasketService selectProductBasketService;

	@RequestMapping(value = "/productBasket.do", method = RequestMethod.GET)
	public String productbasket(Model model, HttpSession session) {

		System.out.println("상품바구니페이지");

		MemberVO memberVO = (MemberVO) session.getAttribute("login");

		String member_id = memberVO.getId();

		List<ProductVO> productList = selectProductService.selectProduct(member_id);

		List<Product_BasketVO> productBasketList = selectProductBasketService.selectProductBasket(member_id);

		model.addAttribute("basketProductList", productBasketList);
		model.addAttribute("productList", productList);

		return "simple/product/productBasket";
	}
	
	


}