package com.main.customer.product.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.product.Service.UpdateProductBasketService;

	

@Controller
public class UpdateProductBasketController {
	
	@Autowired
	UpdateProductBasketService updateProductBasketService;
	
	@RequestMapping(value = "/updateProductBasket.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteProductbasket(Integer amount, String code) {
		  
		System.out.println("장바구니 수량 수정  " + amount + code );
		
		Product_BasketVO vo = new Product_BasketVO();
		vo.setProduct_code(code);
		vo.setAmount(amount);
		
		updateProductBasketService.updateProductBasket(vo);
		
		return "redirect:main.do";
	}
}