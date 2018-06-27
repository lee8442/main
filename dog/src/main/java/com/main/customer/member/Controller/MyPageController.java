package com.main.customer.member.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.order.VO.OrderVO;
import com.main.customer.member.VO.MemberVO;
import com.main.customer.myPage.Service.SelectMyPageOrderService;
import com.main.customer.myPage.Service.UpdateMyPageOrderService;

@Controller
public class MyPageController {
	@Autowired
	private SelectMyPageOrderService selectMyPageOrderService;
	
	@Autowired
	private UpdateMyPageOrderService updateMyPageOrderService;
	
	@RequestMapping(value = "/myPage.do")
	public String myPage(Model model, HttpSession session) {
		System.out.println("마이 페이지");
		MemberVO membervo = (MemberVO)session.getAttribute("login");
		
		String id = membervo.getId();
		List<OrderVO> myOrderList = selectMyPageOrderService.myPageOrderList(id);
	    	model.addAttribute("myOrderList", myOrderList);
		return "simple/member/myPage";
	}
}
