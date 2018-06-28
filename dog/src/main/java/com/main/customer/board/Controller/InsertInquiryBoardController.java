package com.main.customer.board.Controller;

import java.io.File;

import javax.servlet.http.HttpSession;

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
		synchronized public String insertInquiryBoard(InquiryVO vo) {
			
				
			
			        insertInquiryBoardService.InsertInquiryBoard(vo);
		    		return "redirect:productInquiryForm.do";
			}
}	
