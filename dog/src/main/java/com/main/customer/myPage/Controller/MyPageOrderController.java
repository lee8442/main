package com.main.customer.myPage.Controller;

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
public class MyPageOrderController {
	@Autowired
	private SelectMyPageOrderService selectMyPageOrderService;
	
	@Autowired
	private UpdateMyPageOrderService updateMyPageOrderService;
	
	//화면이동
	@RequestMapping(value = "/myPageOrderListForm.do")
	public String selectMyPageOrderList(Model model, HttpSession session) {
		System.out.println("주문목록 페이지");
		
		MemberVO membervo = (MemberVO)session.getAttribute("login");
		
		String id = membervo.getId();
		List<OrderVO> myOrderList = selectMyPageOrderService.myPageOrderList(id);
	    	model.addAttribute("myOrderList", myOrderList);
		return "simple/myPage/myPageOrder";
	}
	//환불신청
	@RequestMapping(value = "/updateOrderRefundStart.do")
	public String orderRefundStart(String cancleCodeS) {
		System.out.println("환불신청 시작");
		
		int cancelCode = Integer.parseInt(cancleCodeS);
		updateMyPageOrderService.orderRefundStart(cancelCode);
		System.out.println("환불신청 완료" + cancelCode);
		return "redirect:myPage.do";
	}
	//환불취소
	@RequestMapping(value = "/updateOrderRefundCancle.do")
	public String orderRefundCancle(String cancleCodeS) {
		System.out.println("환불취소 시작");
		
		int cancelCode = Integer.parseInt(cancleCodeS);
		updateMyPageOrderService.orderRefundCancle(cancelCode);
		System.out.println("환불취소 완료"+ cancelCode);
		return "redirect:myPage.do";
	}
	//교환신청
	@RequestMapping(value = "/updateOrderExchangeStart.do")
	public String orderExchangeStart(String cancleCodeS) {
		System.out.println("교환신청 시작");
		
		int cancelCode = Integer.parseInt(cancleCodeS);
		updateMyPageOrderService.orderExchangeStart(cancelCode);
		System.out.println("교환신청 완료"+ cancelCode);
		return "redirect:myPage.do";
	}
	//교환취소
	@RequestMapping(value = "/updateOrderExchangeCancle.do")
	public String orderExchangeCancle(String cancleCodeS) {
		System.out.println("교환취소시작");
		
		int cancelCode = Integer.parseInt(cancleCodeS);
		updateMyPageOrderService.orderExchangeCancle(cancelCode);
		System.out.println("교환취소 완료"+ cancelCode);
		return "redirect:myPage.do";
	}
	
	//주문취소
	@RequestMapping(value = "/updateOrderCancle.do")
	public String orderCancle(String cancleCodeS) {
		System.out.println("주문취소시작");
		
		int cancelCode = Integer.parseInt(cancleCodeS);
		updateMyPageOrderService.orderCancle(cancelCode);
		System.out.println("주문취소 완료"+ cancelCode);
		return "redirect:myPage.do";
	}
	
	
}
