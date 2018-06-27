package com.main.admin.order.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.order.Service.SelectOrderService;
import com.main.admin.order.Service.UpdateOrderService;
import com.main.admin.order.VO.OrderVO;
import com.main.customer.myPage.Service.UpdateMyPageOrderService;

@Controller
public class OrderController {
	@Autowired
	private SelectOrderService selectOrderService;
	
	@Autowired
	private UpdateOrderService updateOrderService;
	
	@Autowired
	private UpdateMyPageOrderService updateMyPageOrderService;
	
	//주문목록화면
	@RequestMapping(value = "/orderList.ado", method = RequestMethod.GET)
	public String selectOrder(Model model,OrderVO vo) {
		System.out.println("주문목록 페이지");
		
		List<OrderVO> OrderList = selectOrderService.OrderList(vo);
	    	model.addAttribute("OrderList", OrderList);
	    		
	    
		return "admin/order/orderList";
	}
	//완료 목록화면
	@RequestMapping(value = "/endOrderList.ado", method = RequestMethod.GET)
	public String endOrderList(Model model,OrderVO vo) {
		System.out.println("완료목록 페이지");
		List<OrderVO> endOrderList = selectOrderService.endOrderList(vo);
	    	model.addAttribute("endOrderList", endOrderList);
	    	
	    	
	    
		return "admin/order/endList";
	}
	
	//환불 목록화면
	@RequestMapping(value = "/orderRefundList.ado", method = RequestMethod.GET)
	public String orderRefundList(Model model,OrderVO vo) {
		System.out.println("환불목록 페이지");
		
		List<OrderVO> orderRefundList = selectOrderService.orderRefundList(vo);
	    	model.addAttribute("orderRefundList", orderRefundList);
	    	
	    	
	    	
		return "admin/order/refundList";
	}
	//교환목록 화면
	@RequestMapping(value = "/orderExchangeList.ado", method = RequestMethod.GET)
	public String orderExchangeList(Model model,OrderVO vo) {
		System.out.println("환불목록 페이지");
		List<OrderVO> orderExchangeList = selectOrderService.orderExchangeList(vo);
	    	model.addAttribute("orderExchangeList", orderExchangeList);
	    
	    	
		return "admin/order/exchangeList";
	}
	
	@RequestMapping(value = "/updateOrderDeliveryStart.ado")
	public String updateOrderStart(String orderCodeS) {
		System.out.println("출고실행");
		
		updateOrderService.updateOrderStart(orderCodeS);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
	//주문현황 완료
	@RequestMapping(value = "/updateOrderDeliveryEnd.ado", method = RequestMethod.POST)
	public String updateOrderEnd(String orderCodeS) {
		System.out.println("배송완료 실행");
		updateOrderService.updateOrderEnd(orderCodeS);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
	//교환처리 완료
	@RequestMapping(value = "/updateOrderExchangeEnd.ado")
	public String orderExchangeEnd(String cancleCodeS) {
		System.out.println("교환완료 시작");
		
		
		updateOrderService.orderExchangeEnd(cancleCodeS);
		System.out.println("교환 완료");
		return "redirect:orderExchangeList.ado";
	}
	//환불처리 완료
	@RequestMapping(value = "/updateOrderRefundEnd.ado")
	public String orderRefundEnd(String cancleCodeS) {
		System.out.println("환불완료 시작");
		
		
		updateOrderService.orderRefundEnd(cancleCodeS);
		System.out.println("환불완료");
		return "redirect:orderRefundList.ado";
	}
	
	//환불신청(관리자)
		@RequestMapping(value = "/updateOrderRefundStart.ado")
		public String orderRefundStart(String cancleCodeS) {
			System.out.println("환불신청 시작");
			
			int cancelCode = Integer.parseInt(cancleCodeS);
			updateMyPageOrderService.orderRefundStart(cancelCode);
			System.out.println("환불신청 완료" + cancelCode);
			return "redirect:endOrderList.ado";
		}
		
		//교환신청(관리자)
		@RequestMapping(value = "/updateOrderExchangeStart.ado")
		public String orderExchangeStart(String cancleCodeS) {
			System.out.println("교환신청 시작");
			
			int cancelCode = Integer.parseInt(cancleCodeS);
			updateMyPageOrderService.orderExchangeStart(cancelCode);
			System.out.println("교환신청 완료"+ cancelCode);
			return "redirect:endOrderList.ado";
		}
		
		//배송중(완료목록)
		@RequestMapping(value = "/updateENdDeliveryStart.ado")
		public String updateEndStart(String orderCodeS) {
			System.out.println("주문현황 불러오기 완료");
			
			updateOrderService.updateOrderStart(orderCodeS);
			System.out.println("처리상태 수정 완료");
			return "redirect:endOrderList.ado";
		}
}
