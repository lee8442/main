package com.main.customer.header.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.header.Service.HeaderService;

@Controller
public class HeaderController {

	@Autowired
	HeaderService HeaderService;

	@RequestMapping(value = "/headersmall.do")
	@ResponseBody
	public List<ProductVO> main(String bigName) {
		System.out.println("해더하냐" + bigName);
		List<ProductVO> selectSmallProduct = HeaderService.selectSmallProduct(bigName);

		System.out.println(selectSmallProduct);
		return selectSmallProduct;
	}

}
