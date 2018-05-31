package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectProductListService;
import com.main.admin.product.VO.ProductVO;

@Controller
public class SelectProductListController {
	@Autowired
	SelectProductListService selectProductListService;
	
	@RequestMapping(value="/selectProductListForm.ado")
	public String selectProductListForm(ProductVO vo,Model model ) {
		System.out.println("상품리스트 페이지");
		
		List<ProductVO> list = selectProductListService.productList(vo);
		model.addAttribute("list", list);
		
		return "admin/product/productList";
	}
	
}
