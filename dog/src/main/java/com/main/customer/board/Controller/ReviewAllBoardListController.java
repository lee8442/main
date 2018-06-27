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

import com.main.customer.board.Service.SelectReviewBoardService;
import com.main.customer.board.VO.ReviewPagerVO;
import com.main.customer.board.VO.ReviewVO;

@Controller
public class ReviewAllBoardListController {
	
	@Autowired
	SelectReviewBoardService selectReviewBoardService;
	
	@RequestMapping(value = "/reviewAllBoardList.do")
	public ModelAndView reviewAllBoardList(
			@RequestParam(defaultValue = "1") int curPage, 
			Model model,ReviewVO rvo,
			@RequestParam(defaultValue = "all") String search_option, 
			@RequestParam(defaultValue = "") String keyword)
		throws Exception {
		
		System.out.println("search_option" + search_option);
		System.out.println("keyword" + keyword);
		
		int reviewcount = selectReviewBoardService.countArticle(search_option, keyword);
		// 페이지의 시작번호 끝번호 계산
		ReviewPagerVO pager = new ReviewPagerVO(reviewcount, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		

		int num_i = rvo.getNum();
		System.out.println(num_i);
		selectReviewBoardService.ReviewViewCount(num_i);
		
		List<ReviewVO> pplist = selectReviewBoardService.listAll(start, end, search_option, keyword);
		System.out.println(pplist);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pplist", pplist); // list
		map.put("reviewcount", reviewcount); // 레코드의 갯수
		map.put("search_option", search_option); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("pager", pager);

		mav.setViewName("simple/product/reviewAllBoardList"); // 뷰를 list.jsp로 설정
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("pplist",pplist);
		// replyList.jsp로 포워딩
		System.out.println("상품리뷰게시판목록");
		return mav;
	}
}
