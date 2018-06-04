package com.main.admin.product.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.main.admin.product.Service.InsertProductService;
import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.CategoryVO;
import com.main.admin.product.VO.ProductVO;


@Controller
public class InsertProductController {
	@Autowired
	InsertProductService insertProductService;
	@Autowired
	SelectCategoryService selectCategoryService;
	
	@Resource(name="uploadPath")
	    String uploadPath;
	

	@RequestMapping(value = "/insertProductRegForm.ado")
	public String insertProductRegForm(CategoryVO vo, Model model) throws Exception {
		System.out.println("상품등록 페이지");
		//대분류 select option
		List<CategoryVO> categoryList = selectCategoryService.selectBigCategory(vo);
		model.addAttribute("categoryList",categoryList);
		System.out.println("대분류 찍기");
		return "admin/product/productReg";
	}
	@RequestMapping(value = "/productReg.ado")
	public String productReg (ProductVO vo, HttpServletRequest request) throws IOException {
		System.out.println("==> 상품등록 기능 수행");
		MultipartFile image = vo.getImage_file();
		if(!image.isEmpty()) {
			String fileName = image.getOriginalFilename();
			System.out.println(fileName);
			ServletContext context = request.getSession().getServletContext();
			String realPath = context.getRealPath("resources/image/main/");
			System.out.println(realPath);
			File f = new File(realPath	+ fileName);
			System.out.println(f);
			image.transferTo(f);
			
			vo.setImage("resources/image/main/"+fileName);
		}
		insertProductService.ProductReg(vo);
		
		return "admin/main/main";
	}
}	
