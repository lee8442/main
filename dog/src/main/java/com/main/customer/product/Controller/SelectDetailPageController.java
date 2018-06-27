package com.main.customer.product.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.order.VO.BasketVO;
import com.main.admin.product.VO.ProductVO;
import com.main.customer.product.Service.SelectDetailPageListService;

@Controller
public class SelectDetailPageController {

	@Autowired
	SelectDetailPageListService selectDetailPageListservice;

	@RequestMapping(value = "/detailPage.do", method = RequestMethod.GET)
	public String detailPage(String code, Model model) {
		System.out.println(code);
		System.out.println("상품상세 페이지");

		List<ProductVO> selectDetailPageList = selectDetailPageListservice.selectDetailPageList(code);
		model.addAttribute("selectDetailPage", selectDetailPageList);
		System.out.println(selectDetailPageList);
		
		
		return "simple/product/detailPage";
	}
	
	@RequestMapping(value = "/detailPage.do", method = RequestMethod.POST)
	public String detailPage(BasketVO vo, HttpSession session) {
	/*	String id = (String) session.getAttribute("login");
		vo.setMember_id(id);*/
		System.out.println(vo.getProduct_code());
		System.out.println(vo.getMember_id());
		System.out.println(vo.getAmount());
		
		
		return "redirect:main.do";
	}

}