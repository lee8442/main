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
	//분류관리 폼이동
	@RequestMapping(value = "/selectCategoryForm.ado")
	public String selectCategoryForm(CategoryVO vo, Model model) throws Exception {
		System.out.println("상품분류 페이지에서 대분류 보여주기");
		
		List<CategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
	      model.addAttribute("selectBigCategory", selectBigCategory);
		return "admin/product/productCategory";
	}
	//소분류 기능
	@RequestMapping(value = "/getSmallCategory.ado")
	@ResponseBody
	public List<CategorySVO> getSmallCategory(String bigCategory) {
		System.out.println(bigCategory);
		int bigCategoryInt = Integer.valueOf(bigCategory);
		List<CategorySVO> selectSmallCategory = selectCategoryService.selectSmallCategory(bigCategoryInt);
		return selectSmallCategory;
	}
}
