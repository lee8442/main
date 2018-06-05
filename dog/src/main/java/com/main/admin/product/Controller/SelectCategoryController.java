package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.CategorySVO;
import com.main.admin.product.VO.CategoryVO;

@Controller
public class SelectCategoryController {
	@Autowired
	private SelectCategoryService selectCategoryService;

	// 분류관리 폼이동
	@RequestMapping(value = "/selectCategory.ado")
	public String selectCategory(Model model) {
		System.out.println("대분류 목록 출력");
		List<CategoryVO> selectBigCategory = selectCategoryService.selectBigCategory();
		model.addAttribute("selectBigCategory", selectBigCategory);
		return "admin/product/productCategory";
	}

	// 소분류 기능
	@RequestMapping(value = "/getSmallCategory.ado")
	@ResponseBody
	public List<CategorySVO> getSmallCategory(String bigCategory) {
		System.out.println("소분류 목록 출력");
		List<CategorySVO> selectSmallCategory = selectCategoryService.selectSmallCategory(bigCategory);
		return selectSmallCategory;
	}
}
