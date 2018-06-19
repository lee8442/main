package com.main.admin.order.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.order.Service.SelectOrderService;
import com.main.admin.order.Service.UpdateOrderService;
import com.main.admin.order.VO.DeliveryVO;
import com.main.admin.order.VO.OrderVO;

@Controller
public class OrderController {
	@Autowired
	private SelectOrderService selectOrderService;
	
	@Autowired
	private UpdateOrderService updateOrderService;
	
	@RequestMapping(value = "/orderListForm.ado")
	public String productCategory(Model model,OrderVO vo, DeliveryVO svo) {
		System.out.println("주문목록 페이지");
		List<OrderVO> OrderList = selectOrderService.OrderList(vo);
	    	model.addAttribute("OrderList", OrderList);
	    
		return "admin/order/orderList";
	}
	
	@RequestMapping(value = "/updateOrderDeliveryStart.ado")
	public String updateOrderStart(String orderCodeS) {
		System.out.println("주문현황 불러오기 완료");
		
		int orderCode = Integer.parseInt(orderCodeS);
		updateOrderService.updateOrderStart(orderCode);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
	
	@RequestMapping(value = "/updateOrderDeliveryEnd.ado", method = RequestMethod.POST)
	public String updateOrderEnd(String orderCodeS) {
		System.out.println("주문현황 불러오기 완료");
		int orderCode = Integer.parseInt(orderCodeS);
		updateOrderService.updateOrderEnd(orderCode);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderListForm.ado";
	}
}
