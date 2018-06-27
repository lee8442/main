package com.main.customer.board.Controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.main.customer.board.Service.InsertInquiryBoardService;
import com.main.customer.board.VO.InquiryVO;

@Controller
public class InsertInquiryBoardController {
	
	@Autowired
	InsertInquiryBoardService insertInquiryBoardService;
	
	// 상풍문의 글 등록
		@RequestMapping(value = "/insertInquiryBoard.do")
		synchronized public String insertInquiryBoard(InquiryVO vo,MultipartFile file) {
			try {
				vo.setMember_id("visitor");
				/* if((boolean) session.getAttribute(vo.setMember_id("member_id"))); //세션값있을때 (로그인했을때) setMemberId다시 해주면 됨
	*/			System.out.println("글 등록 이벤트  ");
				vo.setImage(file.getOriginalFilename());
				System.out.println("image name=" + vo.getImage());
				File fd = new File("D:/myproject/mySpring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/dog2/resources/image" + vo.getImage());
				if (!fd.exists()) {
					fd.mkdirs();
				}
				int cnt = 0;
				while (fd.exists()) {
					fd = new File("D:/file/" + cnt + vo.getImage());
					vo.setImage(cnt + file.getOriginalFilename());
					cnt++;
				}
				file.transferTo(fd);
			} catch (Exception e) {
				System.out.println("오류발생");
				e.printStackTrace();
			}
			System.out.println(vo.toString());
			        insertInquiryBoardService.InsertInquiryBoard(vo);
		    		return "redirect:productInquiryForm.do";
			}
}	
