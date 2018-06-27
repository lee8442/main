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

	@RequestMapping(value = "/orderList.ado", method = RequestMethod.GET)
	public String productCategory(Model model, OrderVO vo, DeliveryVO svo) {
		System.out.println("주문목록 페이지");
		List<OrderVO> orderList = selectOrderService.OrderList(vo);
		model.addAttribute("orderList", orderList);
		return "admin/order/orderList";
	}

	@RequestMapping(value = "/updateStartDelivery.ado")
	public String updateOrderStart(String orderCodeS) {
		System.out.println("배송 시작");
		int orderCode = Integer.valueOf(orderCodeS);
		updateOrderService.updateOrderStart(orderCode);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderList.ado";
	}

	@RequestMapping(value = "/updateEndDelivery.ado")
	public String updateOrderEnd(String orderCodeS) {
		System.out.println("배송 완료");
		int orderCode = Integer.valueOf(orderCodeS);
		updateOrderService.updateOrderEnd(orderCode);
		System.out.println("처리상태 수정 완료");
		return "redirect:orderList.ado";
	}
}
