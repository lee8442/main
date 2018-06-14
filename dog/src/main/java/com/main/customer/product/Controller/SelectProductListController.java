package com.main.customer.product.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.main.Service.MainService;
import com.main.customer.main.VO.MainVO;
import com.main.customer.product.Service.SelectBigCodeNameService;
import com.main.customer.product.Service.SelectBigCodeProductListService;
import com.main.customer.product.Service.SelectSBigCodeNameService;
import com.main.customer.product.Service.SelectSSmallCodeNameService;
import com.main.customer.product.Service.SelectSmallCodeNameService;
import com.main.customer.product.Service.SelectSmallCodeProductListService;

@Controller
public class SelectProductListController {

	@Autowired
	SelectBigCodeProductListService SelectBigCodeProductListService;
	
	@Autowired
	SelectBigCodeNameService SelectBigCodeNameService;
	
	@Autowired
	SelectSmallCodeNameService SelectSmallCodeNameService;
	
	@Autowired
	SelectSmallCodeProductListService SelectSmallCodeProductListService;
	
	@Autowired
	SelectSSmallCodeNameService SelectSSmallCodeNameService;
	
	@Autowired
	SelectSBigCodeNameService SelectSBigCodeNameService;
	
	@Autowired
	MainService MainService;
	
	
	@RequestMapping(value = "/productList.do")
	public String listProduct() {
		System.out.println("상품목록 페이지");

		return "simple/product/selectProductList";
	}

	@RequestMapping(value = "/productListBigCode.do")
	public String productListBigCode(String bigcode, Model model, MainVO vo) {
		
		System.out.println(bigcode);

		List<ProductVO> selectBigCodeProductList = SelectBigCodeProductListService.selectBigCodeProductList(bigcode);
		model.addAttribute("selectBigCodeProductList", selectBigCodeProductList);
		
		String selectBigCodeName = SelectBigCodeNameService.selectBigCodeName(bigcode);
		model.addAttribute("selectBigCodeName", selectBigCodeName);
		
		List<ProductVO> selectSmallCodeName = SelectSmallCodeNameService.selectSmallCodeName(bigcode);
		model.addAttribute("selectSmallCodeName", selectSmallCodeName);
		
		
		List<MainVO> selectBestProduct = MainService.selectBestProduct(vo);

		model.addAttribute("selectBestProduct", selectBestProduct);
		
		List<MainVO> selectRecomProduct = MainService.selectRecomProduct(vo);

		model.addAttribute("selectRecomProduct", selectRecomProduct);
		
		return "simple/product/selectProductList";
	}

	@RequestMapping(value = "/productListSmallCode.do")
	public String productListSmallCode(String smallcode, Model model, MainVO vo) {
		
		List<ProductVO> selectSmallCodeProductList = SelectSmallCodeProductListService.selectSmallCodeProductList(smallcode);
		
		model.addAttribute("selectBigCodeProductList", selectSmallCodeProductList);

		
		String selectSBigCodeName = SelectSBigCodeNameService.selectSBigCodeName(smallcode);
		model.addAttribute("selectBigCodeName", selectSBigCodeName);
		
		List<ProductVO> selectSSmallCodeName = SelectSSmallCodeNameService.selectSSmallCodeName(smallcode);
		model.addAttribute("selectSmallCodeName", selectSSmallCodeName);
		
		
		
		List<MainVO> selectBestProduct = MainService.selectBestProduct(vo);

		model.addAttribute("selectBestProduct", selectBestProduct);
		
		List<MainVO> selectRecomProduct = MainService.selectRecomProduct(vo);

		model.addAttribute("selectRecomProduct", selectRecomProduct);
		
		return "simple/product/selectProductList";
	}
	
}