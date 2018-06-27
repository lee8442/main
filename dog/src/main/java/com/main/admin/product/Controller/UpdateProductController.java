package com.main.admin.product.Controller;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.main.admin.product.Service.UpdateProductService;
import com.main.admin.product.VO.ProductVO;

@Controller
public class UpdateProductController {
	@Autowired
	private UpdateProductService updateProductService;

	@RequestMapping(value = "/updateProduct.ado")
	public String updateProduct(ProductVO vo, HttpServletRequest request) throws IOException {
		System.out.println("상품 수정 실행");
		System.out.println(vo.toString());
		ProductVO imageList = updateProductService.selectImage(vo.getCode());
		ServletContext context = request.getSession().getServletContext();
		String realPath = context.getRealPath("resources/image/product/");
		String folderName = vo.getCode();
		String filePath = realPath + folderName;
		String backUpFilePath = "C:/imageBackUp/" + folderName;
		if (!new File(filePath).exists()) {
			File folder = new File(filePath);
			folder.mkdirs();
		}
		if (!new File(backUpFilePath).exists()) {
			File backUpFolder = new File(backUpFilePath);
			backUpFolder.mkdirs();
		}
		if (vo.getImage_file().getSize() != 0) {
			String productImageName = vo.getImage_file().getOriginalFilename();
			String productFileName = "product" + vo.getCode().substring(2) + "." + productImageName.split("\\.")[1];
			File productImage = new File(filePath + "/" + productFileName);
			vo.getImage_file().transferTo(productImage);
			Files.copy(Paths.get(filePath + "/" + productFileName), Paths.get(backUpFilePath + "/" + productFileName),
					StandardCopyOption.REPLACE_EXISTING);
			vo.setImage("resources/image/product/" + folderName + "/" + productFileName);
		} else {
			String productImageSrc = imageList.getImage();
			vo.setImage(productImageSrc);
		}
		List<MultipartFile> explainList = vo.getExplain_image_file();
		StringBuffer explainNameBuf = new StringBuffer();
		String explainImageSrc = imageList.getExplain();
		String[] explainImageToken = explainImageSrc.split(",");
		boolean imgNull = false;
		for (int i = 0; i < explainList.size(); i++) {
			if (explainList.get(i).getSize() != 0) {
				String explainImageName = explainList.get(i).getOriginalFilename();
				String explainFileName = "explain" + i + "." + explainImageName.split("\\.")[1];
				File explainImage = new File(filePath + "/" + explainFileName);
				explainList.get(i).transferTo(explainImage);
				Files.copy(Paths.get(filePath + "/" + explainFileName),
						Paths.get(backUpFilePath + "/" + explainFileName), StandardCopyOption.REPLACE_EXISTING);
				if (i != explainList.size() - 1) {
					explainNameBuf.append("resources/image/product/" + folderName + "/" + explainFileName + ",");
				} else {
					explainNameBuf.append("resources/image/product/" + folderName + "/" + explainFileName);
				}
			} else {
				if (i < explainImageToken.length) {
					if (i != explainList.size() - 1) {
						explainNameBuf.append(explainImageToken[i] + ",");
					} else {
						explainNameBuf.append(explainImageToken[i]);
					}
				} else {
					imgNull = true;
				}
			}
		}
		File[] fileList = new File(filePath).listFiles(new FileFilter() {
			@Override
			public boolean accept(File filename) {
				return filename.getName().startsWith("explain");
			}
		});
		File[] backUpFileList = new File(backUpFilePath).listFiles(new FileFilter() {
			@Override
			public boolean accept(File filename) {
				return filename.getName().startsWith("explain");
			}
		});
		String explainName = explainNameBuf.toString();
		if (explainImageToken.length < explainList.size() && imgNull) {
			for (int i = 0; i < fileList.length; i++) {
				String extension = fileList[i].getName().substring(8);
				fileList[i].renameTo(new File(filePath + "/explain" + i + extension));
				backUpFileList[i].renameTo(new File(backUpFilePath + "/explain" + i + extension));
				explainName = explainName.replace(fileList[i].getName(), "explain" + i + extension);
			}
		}
		if (explainName.charAt(explainName.length() - 1) == ',') {
			explainName = explainName.substring(0, explainName.length() - 1);
		}
		vo.setExplain(explainName);
		updateProductService.updateProduct(vo);
		return "redirect:selectProductList.ado";
	}
}
