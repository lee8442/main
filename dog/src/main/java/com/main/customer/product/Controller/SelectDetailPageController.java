package com.main.customer.product.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.customer.board.Service.SelectInquiryBoardService;
import com.main.customer.board.Service.SelectReviewBoardService;
import com.main.customer.board.VO.InquiryVO;
import com.main.customer.board.VO.PagerVO;
import com.main.customer.board.VO.ReviewVO;
import com.main.customer.product.Service.InsertProductBasketService;
import com.main.customer.product.Service.SelectDetailPageListService;

@Controller
public class SelectDetailPageController {

	@Autowired
	SelectDetailPageListService selectDetailPageListservice;
	@Autowired
	InsertProductBasketService insertProductBasketService;
	@Autowired
	SelectInquiryBoardService selectInquiryBoardService;
	@Autowired
	SelectReviewBoardService selectReviewBoardService;

	
	@RequestMapping(value = "/detailPage.do", method = RequestMethod.GET)
	public ModelAndView detailPage(String code, Model model, HttpSession session,
			@RequestParam(defaultValue = "1") int curPage, InquiryVO vo,
			@RequestParam(defaultValue = "all") String search_option, @RequestParam(defaultValue = "") String keyword)
			throws Exception {
		
		System.out.println("상품상세 페이지");
	
		// 레코드 갯수 계산
		int count = selectInquiryBoardService.countArticle(search_option, keyword);
		int reviewcount = selectReviewBoardService.countArticle(search_option, keyword);
		// 페이지의 시작번호 끝번호 계산
		PagerVO pagerVO = new PagerVO(count, curPage);
		int start = pagerVO.getPageBegin();
		int end = pagerVO.getPageEnd();
		List<InquiryVO> list = selectInquiryBoardService.listAll(start, end, search_option, keyword);
		List<ReviewVO> vlist=selectReviewBoardService.listAll(start, end, search_option, keyword);
		
		System.out.println(list);
		System.out.println(vlist);

		ModelAndView mav = new ModelAndView();

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("vlist", vlist);
		map.put("reviewcount", reviewcount);
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("pager", pagerVO);

		mav.setViewName("simple/product/detailPage"); // 뷰를 list.jsp로 설정
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("list", list);
		mav.addObject("vlist",vlist);
		
		System.out.println("상품상세 페이지");
		/*MemberVO memberVO = (MemberVO) session.getAttribute("login");
		String member_id = memberVO.getId();*/
		
		
		List<ProductVO> selectDetailPageList = selectDetailPageListservice.selectDetailPageList(code);
		model.addAttribute("selectDetailPage", selectDetailPageList);
		//model.addAttribute("id", member_id);
		return mav;
	}
	@RequestMapping(value = "/detailPage.do", method = RequestMethod.POST)
	public String detailPage(Product_BasketVO vo) {
			insertProductBasketService.insertProductBasket(vo);
		return "redirect:productBasket.do";
	}

}