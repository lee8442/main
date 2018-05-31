package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.InsertProductService;
import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;


@Controller
public class InsertProductController {
	
	@Autowired
	InsertProductService insertProductService;
	@Autowired
	SelectCategoryService selectCategoryService;
	
	@RequestMapping(value = "/insertProductRegForm.ado")
	public String insertProductRegForm(CategoryVO vo, Model model) throws Exception {
		System.out.println("상품등록 페이지");
		//대분류 select option
		List<CategoryVO> categoryList = selectCategoryService.selectCategory(vo);
		model.addAttribute("categoryList",categoryList);
		System.out.println("대분류 찍기");
		return "admin/product/productReg";
	}
	@RequestMapping(value = "/productReg.ado")
	public String productReg (ProductVO vo ) {
		System.out.println("==> 상품등록 기능 수행");
	
		insertProductService.ProductReg(vo);
		return "admin/product/productReg";

	}
}
