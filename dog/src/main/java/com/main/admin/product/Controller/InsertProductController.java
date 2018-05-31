package com.main.admin.product.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.InsertProductService;
import com.main.admin.product.VO.ProductVO;


@Controller
public class InsertProductController {
	
	@Autowired
	InsertProductService insertProductService;
	
	@RequestMapping(value = "/insertProductRegForm.ado")
	public String insertProductRegForm() {
		System.out.println("상품등록 페이지");
		
		return "admin/product/productReg";
	}
	@RequestMapping(value = "/productReg.ado")
	public String productReg (ProductVO vo ) {
		System.out.println("==> 상품등록 기능 수행");
	
		insertProductService.ProductReg(vo);
		return "admin/product/productReg";

	}
}
