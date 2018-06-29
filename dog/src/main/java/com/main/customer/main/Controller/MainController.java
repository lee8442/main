package com.main.customer.main.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.customer.main.Service.MainService;
import com.main.customer.main.VO.MainVO;

@Controller
public class MainController {
	@Autowired
	MainService MainService;

	@RequestMapping(value = "/main.do")
	public String main(MainVO vo, Model model) {

		System.out.println("메인 페이지");

		List<MainVO> selectBestProduct = MainService.selectBestProduct(vo);

		model.addAttribute("selectBestProduct", selectBestProduct);

		List<MainVO> selectNewProduct = MainService.selectNewProduct(vo);

		model.addAttribute("selectNewProduct", selectNewProduct);

		List<MainVO> selectRecomProduct = MainService.selectRecomProduct(vo);

		model.addAttribute("selectRecomProduct", selectRecomProduct);

 		
		
		return "main/main/main";
	}

}
