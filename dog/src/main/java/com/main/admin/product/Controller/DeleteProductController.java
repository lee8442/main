package com.main.admin.product.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.product.Service.DeleteProductService;
@Controller
public class DeleteProductController {
	@Autowired
	private DeleteProductService deleteProductService;
	
	@RequestMapping(value = "/deleteProduct.ado")
	public String deleteCategory(String code) {
		System.out.println("상품 삭제 실행");
		deleteProductService.deleteProduct(code);
		return "redirect:selectProductList.ado";
	}
	
}
