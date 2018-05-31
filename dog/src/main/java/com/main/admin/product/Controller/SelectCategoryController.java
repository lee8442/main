package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.CategoryVO;
@Controller
public class SelectCategoryController {
	@Autowired
	SelectCategoryService selectCategoryService;
	
	@RequestMapping(value = "/selectCategoryForm.ado")
	public String selectCategoryForm(CategoryVO vo, Model model) throws Exception {
		System.out.println("상품분류 페이지에서 대분류 보여주기");
		
		List<CategoryVO> categoryList = selectCategoryService.selectCategory(vo);
		model.addAttribute("categoryList", categoryList);
		return "admin/product/productCategory";
	}
	 
}
