package com.main.admin.product.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.product.Service.DeleteCategoryService;
@Controller
public class DeleteCategoryController {
	@Autowired
	private DeleteCategoryService deletecategoryService;
	
	@RequestMapping(value = "/deleteCategory.ado", method = RequestMethod.POST)
	public String deleteCategory(String DelCode) {
		System.out.println("삭제실행");
		deletecategoryService.deleteCategory(DelCode);
		System.out.println("삭제완료");
		return "redirect:productCategoryForm.ado";
	}
	
}
