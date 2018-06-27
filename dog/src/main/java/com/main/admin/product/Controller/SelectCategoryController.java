package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.SmallCategoryVO;
import com.main.admin.product.VO.BigCategoryVO;

@Controller
public class SelectCategoryController {
	@Autowired
	private SelectCategoryService selectCategoryService;

	// 분류관리 폼이동
	
	
	@RequestMapping(value = "/productCategoryForm.ado")
	public String productCategory(Model model,BigCategoryVO vo, SmallCategoryVO svo) throws Exception {
		System.out.println("상품분류 페이지");
		
		List<BigCategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
	      model.addAttribute("selectBigCategory", selectBigCategory);
	      System.out.println("대분류 출력완료");
	      
		return "admin/product/productCategory";
	}

	// 소분류 기능
	@RequestMapping(value = "/getSmallCategory.ado")
	@ResponseBody
	public List<SmallCategoryVO> getSmallCategory(String bigCategory) {
		System.out.println("소분류 목록 출력");
		List<SmallCategoryVO> selectSmallCategory = selectCategoryService.selectSmallCategory(bigCategory);
		return selectSmallCategory;
	}
	
	
}
