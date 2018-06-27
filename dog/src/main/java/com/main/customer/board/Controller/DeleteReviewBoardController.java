package com.main.customer.board.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteReviewBoardController {
	
	@Autowired
	com.main.customer.board.Service.DeleteReviewBoardService deleteReviewBoardService;
	
	@RequestMapping(value="/deleteReview.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteReview(@RequestParam(value = "num") int num) {
	
		
		
		
		deleteReviewBoardService.deleteReview(num);
		return "redirect:reviewAllBoardList.do";
	}
}
