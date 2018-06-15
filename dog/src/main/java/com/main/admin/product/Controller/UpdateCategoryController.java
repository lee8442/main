package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.Service.UpdateCategoryService;
import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;
@Controller
public class UpdateCategoryController {
	@Autowired
	private UpdateCategoryService updateCategoryService;
	@Autowired
	private SelectCategoryService selectCategoryService;
	
	@RequestMapping(value = "/updateCategoryForm.ado")
	public String updateCategory(Model model, CategoryVO vo, CategorySVO svo) {
		
		List<CategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
		model.addAttribute("selectBigCategory", selectBigCategory);
		
		
		List<CategorySVO> selectCategoryUp = updateCategoryService.selectCategoryUp(svo);
		model.addAttribute("selectCategoryUp", selectCategoryUp);
		
		return "admin/product/productCategoryUpdate";
	}
	
	
	
	
	@RequestMapping(value = "/updateCategory.ado")
	public String updateCateogryS(CategorySVO vo) {
		System.out.println("상품 분류 등록 완료");
		
		updateCategoryService.updateCategory(vo);
		System.out.println("소분류 수정 완료");
		return "redirect:productCategoryForm.ado";
	}
}
