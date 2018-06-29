package com.main.admin.sales.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.order.VO.OrderVO;
import com.main.admin.sales.Service.SelectSalesService;

@Controller
public class SalesDailyController {
	@Autowired
	SelectSalesService selectSalesService;

	@RequestMapping(value = "/salesDaily.ado")
	public String salesDaily() {
		System.out.println("일일 매출 페이지");
		return "admin/sales/salesDaily";
	}
	
	@RequestMapping(value = "/salesChart.ado")
	@ResponseBody
	public List<OrderVO> salesChart(OrderVO vo) {
		System.out.println("매출 차트 데이터 불러오기");
		return selectSalesService.salesChart(vo);
	}
}
