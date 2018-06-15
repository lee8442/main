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

@Controller
public class OrderController {
	@Autowired
	private SelectOrderService selectOrderService;
	
	@Autowired
	private UpdateOrderService updateOrderService;
	
	@RequestMapping(value = "/orderListForm.ado")
	public String productCategory(Model model,OrderVO vo) {
		System.out.println("주문목록 페이지");
		List<OrderVO> OrderList = selectOrderService.OrderList(vo);
	    	model.addAttribute("OrderList", OrderList);
	    	System.out.println("주문목록:"+toString());
		return "admin/order/orderList";
	}
	
	@RequestMapping(value = "/updateOrderDeliveryStart.ado", method = RequestMethod.POST)
	public String updateOrderStart(OrderVO vo) {
		System.out.println("주문현황 불러오기 완료");
		
		updateOrderService.updateOrderStart(vo);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
	
	@RequestMapping(value = "/updateOrderDeliveryEnd.ado", method = RequestMethod.POST)
	public String updateOrderEnd(OrderVO vo) {
		System.out.println("주문현황 불러오기 완료");
		
		updateOrderService.updateOrderEnd(vo);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
}
