package com.main.admin.product.Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.main.admin.product.Service.InsertProductService;
import com.main.admin.product.Service.SelectCategoryService;
import com.main.admin.product.VO.BigCategoryVO;
import com.main.admin.product.VO.ProductVO;

@Controller
public class InsertProductController {
	@Autowired
	InsertProductService insertProductService;
	@Autowired
	SelectCategoryService selectCategoryService;

	@Resource(name = "uploadPath")
	String uploadPath;

	@RequestMapping(value = "/insertProduct.ado", method = RequestMethod.GET)
	public String insertProductForm(Model model, BigCategoryVO vo) {
		System.out.println("상품 등록 페이지");
		List<BigCategoryVO> selectBigCategory = selectCategoryService.selectBigCategory(vo);
		model.addAttribute("selectBigCategory", selectBigCategory);
		return "admin/product/insertProduct";
	}

	@RequestMapping(value = "/insertProduct.ado", method = RequestMethod.POST)
	public String insertProduct(ProductVO vo, HttpServletRequest request) throws IOException {
		System.out.println("상품 등록 실행");
		vo.setCode(insertProductService.selectProuctCode());
		System.out.println(vo.toString());
		ServletContext context = request.getSession().getServletContext();
		String realPath = context.getRealPath("resources/image/product/");
		String folderName = vo.getCode();
		String filePath = realPath + folderName;
		String BackUpFilePath = "C:/imageBackUp/" + folderName;
		if (!new File(filePath).exists()) {
			File folder = new File(filePath);
			folder.mkdirs();
		}
		if (!new File(BackUpFilePath).exists()) {
			File BackUpFolder = new File(BackUpFilePath);
			BackUpFolder.mkdirs();
		}
		String productImageName = vo.getImage_file().getOriginalFilename();
		String productFileName = "product" + vo.getCode().substring(2) + "." + productImageName.split("\\.")[1];
		File productImage = new File(filePath + "/" + productFileName);
		vo.getImage_file().transferTo(productImage);
		Files.copy(Paths.get(filePath + "/" + productFileName), Paths.get(BackUpFilePath + "/" + productFileName),
				StandardCopyOption.REPLACE_EXISTING);
		vo.setImage("resources/image/product/" + folderName + "/" + productFileName);
		List<MultipartFile> explainList = vo.getExplain_image_file();
		StringBuffer explainName = new StringBuffer();
		for (int i = 0; i < explainList.size(); i++) {
			String explainImageName = explainList.get(i).getOriginalFilename();
			String explainFileName = "explain" + i + "." + explainImageName.split("\\.")[1];
			File explainImage = new File(filePath + "/" + explainFileName);
			explainList.get(i).transferTo(explainImage);
			Files.copy(Paths.get(filePath + "/" + explainFileName), Paths.get(BackUpFilePath + "/" + explainFileName),
					StandardCopyOption.REPLACE_EXISTING);
			if (i != explainList.size() - 1) {
				explainName.append("resources/image/product/" + folderName + "/" + explainFileName + ",");
			} else {
				explainName.append("resources/image/product/" + folderName + "/" + explainFileName);
			}
		}
		vo.setExplain(explainName.toString());
		insertProductService.insertProduct(vo);
		return "redirect:insertProduct.ado";
	}
}
