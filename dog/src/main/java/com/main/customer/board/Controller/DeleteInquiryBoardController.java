package com.main.customer.board.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.customer.board.Service.DeleteInquiryBoardService;

@Controller
public class DeleteInquiryBoardController {


	@Autowired
	DeleteInquiryBoardService deleteInquiryBoardService;
	
	// 상품문의게시판 삭제
		@RequestMapping(value = "/delete.do", method = RequestMethod.GET, produces = "plain/text;charset=utf-8")
		public String delete(@RequestParam(value = "num") int num) {
			deleteInquiryBoardService.delete(num);
			return "redirect:productInquiryForm.do";
		}

}

