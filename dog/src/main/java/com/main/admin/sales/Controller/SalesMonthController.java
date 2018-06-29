package com.main.admin.sales.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.sales.Service.SelectSalesService;

@Controller
public class SalesMonthController {
	@Autowired
	SelectSalesService selectSalesService;

	@RequestMapping(value = "/salesMonth.ado")
	public String salesMonth() {
		System.out.println("월간 매출 페이지");
		return "admin/sales/salesMonth";
	}
}
