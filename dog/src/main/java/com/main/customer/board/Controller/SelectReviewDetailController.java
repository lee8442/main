package com.main.customer.board.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.main.customer.board.Service.SelectReviewDetailService;
import com.main.customer.board.VO.ReviewVO;


@Controller
public class SelectReviewDetailController {
		
	@Autowired
	SelectReviewDetailService selectReviewDetailService;

	
	@RequestMapping(value = "/selectReviewDetail.do")
	public ModelAndView selectReviewDetail(ReviewVO rvo,Model model,
			@RequestParam(defaultValue = "all") String search_option, @RequestParam(defaultValue = "") String keyword) throws Exception {
		
		int count = selectReviewDetailService.countArticle(search_option, keyword);
		
		int num_i = rvo.getNum();
		System.out.println(rvo.getPassword());
		System.out.println(num_i);
		selectReviewDetailService.reviewViewCount(num_i);
		List<ReviewVO> pplist = selectReviewDetailService.selectReviewDetail(rvo);
		model.addAttribute("pplist",pplist);
		System.out.println(pplist);
		ModelAndView mav = new ModelAndView();
		Map<String,Object> map = new HashMap<>();
		map.put("pplist", pplist);
		map.put("count", count);
		
		mav.setViewName("simple/product/reviewDetail");
		mav.addObject("map", map);
		mav.addObject("pplist",pplist);
		System.out.println("상품평 상세페이지");
		return mav;
		}

}
