package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.Service.UpdateCategoryService;
import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;
@Controller
public class UpdateCategoryController {
	@Autowired
	private UpdateCategoryService updateCategoryService;
	@Autowired
	private SelectCategoryService selectCategoryService;
	
	@RequestMapping(value = "/updateCategoryForm.ado")
	public String updateCategory(Model model, BigCategoryVO vo, SmallCategoryVO svo) {
		
		List<BigCategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
		model.addAttribute("selectBigCategory", selectBigCategory);
		
		
		List<SmallCategoryVO> selectCategoryUp = updateCategoryService.selectCategoryUp(svo);
		model.addAttribute("selectCategoryUp", selectCategoryUp);
		
		return "admin/product/productCategoryUpdate";
	}
	
	@RequestMapping(value = "/updateCategory.ado")
	public String updateCateogryS(SmallCategoryVO vo) {
		System.out.println("소분류 수정 실행");
		updateCategoryService.updateCategory(vo);
		return "redirect:productCategoryForm.ado";
	}
}
