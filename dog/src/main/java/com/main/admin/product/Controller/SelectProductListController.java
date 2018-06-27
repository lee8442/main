package com.main.admin.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.Service.SelectProductListService;
import com.main.admin.product.VO.BigCategoryVO;
import com.main.admin.product.VO.ProductVO;

@Controller
public class SelectProductListController {
	@Autowired
	private SelectCategoryService selectCategoryService;
	@Autowired
	private SelectProductListService selectProductListService;

	@RequestMapping(value = "/selectProductList.ado")
	public String selectProductList(Model model, BigCategoryVO vo) {
		System.out.println("상품 목록 페이지");
		List<BigCategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
		model.addAttribute("selectBigCategory", selectBigCategory);
		List<ProductVO> list = selectProductListService.productList();
		model.addAttribute("list", list);
		return "admin/product/selectProductList";
	}
}
