package com.main.customer.product.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.customer.product.Service.DeleteProductBasketService;

@Controller
public class DeleteProductBasketController {
	
	@Autowired
	DeleteProductBasketService deleteProductBasketService;
	
	
	@RequestMapping(value = "/deleteProductBasket.do", method = RequestMethod.POST)
	public String deleteProductbasket(@RequestParam("product_code[]") List<String> product_code) {
		  
		
		
		HashMap<String, Object> hm = new HashMap<String, Object>();
		  
		List<String> list = new ArrayList<String>();
		  
		list.addAll(product_code); //in 조건에 넣을 정보
		     
		hm.put("list", list); //map에 list를 넣는다.
		
		/*
		
		DeleteVO dto1 = new DeleteVO();
		
		dto1.setProduc_code("Bad0001");
		
		DeleteVO dto2 = new DeleteVO();
		
		dto1.setProduc_code("Dal0001");
		
		List<DeleteVO> list = new ArrayList<DeleteVO>();

		list.add(dto1);
		list.add(dto2);

		Map<String, Object> hm = new HashMap<String, Object>();
		hm.put("list", list);
		System.out.println("상품삭제 전");*/
		
		
		deleteProductBasketService.deleteProductBasket(hm);
		System.out.println("상품삭제 완료");
		
		return "redirect:main.do";
	}
}