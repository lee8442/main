package com.main.customer.board.Controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.main.customer.board.Service.InsertReviewBoardService;
import com.main.customer.board.VO.ReviewVO;

@Controller
public class InsertReviewBoardController {

	@Autowired
	InsertReviewBoardService insertReviewBoardService;

	@RequestMapping(value = "/insertReview.do")
	synchronized public String InsertReviewBoard(ReviewVO rvo, MultipartFile file,HttpServletRequest request) {
		System.out.println("상품평 등록버튼");
		System.out.println(rvo.toString());
		
		
		int star = Integer.parseInt(request.getParameter("selectStar"));
			rvo.setGrade(star);
			
			try {
			rvo.setImage(file.getOriginalFilename());
			System.out.println("image name=" + rvo.getImage());
			File fd = new File("D:/myproject/mySpring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/dog2/resources/image" + rvo.getImage());
			if (!fd.exists()) {
				fd.mkdirs();
			}
			
			int cnt = 0;
			while (fd.exists()) {
				fd = new File("D:/file/" + cnt + rvo.getImage());
				rvo.setImage(cnt + file.getOriginalFilename());
				cnt++;
			}
			file.transferTo(fd);
		} catch (Exception e) {
			System.out.println("오류발생");
			e.printStackTrace();
		}
		System.out.println(rvo.toString());
		insertReviewBoardService.InsertReviewBoard(rvo);
		return "redirect:reviewAllBoardList.do";
	}
}
