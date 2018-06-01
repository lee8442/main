package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.Service.InsertProductService;
import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.CategorySVO;
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
		List<CategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
	      model.addAttribute("selectBigCategory", selectBigCategory);
		System.out.println("대분류 찍기");
		return "admin/product/productReg";
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
	
	@RequestMapping(value = "/productReg.ado")
	public String productReg (ProductVO vo ) {
		System.out.println("==> 상품등록 기능 수행");
	
		insertProductService.ProductReg(vo);
		return "admin/product/productReg";

	}
}
