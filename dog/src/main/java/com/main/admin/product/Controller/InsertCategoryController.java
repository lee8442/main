package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.InsertCategoryService;
import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

@Controller
public class InsertCategoryController {
	@Autowired
	private InsertCategoryService insertCategoryService;
	
	
	@RequestMapping(value = "/insertCategoryForm.ado" )
	public String insertCategoryForm(Model model, CategoryVO vo) {
		System.out.println("상품 분류 입력 페이지");
		
		List<CategoryVO> selectBigCategory = insertCategoryService.selectBigCategory(vo);
		model.addAttribute("selectBigCategory", selectBigCategory);
		
		return "admin/product/productCategoryInsert";
	}

	@RequestMapping(value = "/insertCategory.ado")
	public String insertCateogry(CategorySVO vo) {
		System.out.println("상품 분류 등록 완료");
		insertCategoryService.insertCategory(vo);
		
		return "redirect:productCategoryForm.ado";
	}
}
