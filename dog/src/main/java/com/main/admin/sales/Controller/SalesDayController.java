package com.main.admin.sales.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.sales.Service.SelectSalesService;

@Controller
public class SalesDayController {
	@Autowired
	SelectSalesService selectSalesService;

	@RequestMapping(value = "/salesDay.ado")
	public String salesDay() {
		System.out.println("일간 매출 페이지");
		return "admin/sales/salesDay";
	}
}
