package com.main.customer.board.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.main.customer.board.Service.InquiryCategoryService;
import com.main.customer.board.Service.InquiryQuestionCategoryService;
import com.main.customer.board.Service.ReplyService;
import com.main.customer.board.Service.SelectInquiryBoardService;
import com.main.customer.board.VO.InquiryQuestionCategoryVO;
import com.main.customer.board.VO.InquiryVO;
import com.main.customer.board.VO.PagerVO;
import com.main.customer.board.VO.ReplyVO;
import com.sun.org.glassfish.gmbal.ManagedAttribute;

@Controller
public class SelectInquiryBoardController {
	
	@Autowired
	InquiryCategoryService inquiryCategoryService;
	@Autowired
	SelectInquiryBoardService selectInquiryBoardService;
	@Autowired
	ReplyService replyService;
	
	@Autowired
	InquiryQuestionCategoryService inquiryQuestionCategoryService;
	


	// 상품문의 게시판 목록
		@RequestMapping(value = "/productInquiryForm.do")
		public ModelAndView productInquiryBoard(@RequestParam(defaultValue = "1") int curPage, Model model, InquiryVO vo,
				@RequestParam(defaultValue = "all") String search_option, @RequestParam(defaultValue = "") String keyword)
				throws Exception {

			System.out.println("search_option" + search_option);
			System.out.println("keyword" + keyword);
			// 레코드 갯수 계산
			int count = selectInquiryBoardService.countArticle(search_option, keyword);
			// 페이지의 시작번호 끝번호 계산
			PagerVO pager = new PagerVO(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();

			List<InquiryVO> list = selectInquiryBoardService.listAll(start, end, search_option, keyword);
			System.out.println(list);

			ModelAndView mav = new ModelAndView();

			// 데이터를 맵에 저장
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list); // list
			map.put("count", count); // 레코드의 갯수
			map.put("search_option", search_option); // 검색옵션
			map.put("keyword", keyword); // 검색키워드
			map.put("pager", pager);

			mav.setViewName("simple/product/productInquiry"); // 뷰를 list.jsp로 설정
			mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
			mav.addObject("list", list);
			// replyList.jsp로 포워딩

			return mav;
		}

		// 상품문의 글쓰기페이지
		@RequestMapping(value = "/productInquiryWrite.do")
		public String productInquiryWrite(InquiryQuestionCategoryVO vo, Model model) throws Exception {
			System.out.println("상품문의 글쓰기 페이지");
			List<InquiryQuestionCategoryVO> QuestionCategory = inquiryQuestionCategoryService.QuestionCategory();
			model.addAttribute("QuestionCategory", QuestionCategory);

			return "simple/product/productInquiryWrite";
		}
	// 상품문의 상세페이지
		@RequestMapping(value = "/productInquiryDetail.do")
		public String productInquiryDetail(String num, Model model) {

			System.out.println("1:1상품목록 상세페이지");
			int num_i = Integer.parseInt(num);
			System.out.println(num_i);
			selectInquiryBoardService.increaseViewCount(num_i);
			InquiryVO ivo = selectInquiryBoardService.selectInquiryDetail(num_i);
			model.addAttribute("ivo", ivo);
			System.out.println("ivo추가됨");
			return "simple/product/productInquiryDetail";
		}


		// 댓글 입력
		@RequestMapping(value = "insert.do")
		synchronized public @ManagedAttribute String insert(ReplyVO vo) {
			System.out.println(vo.getNum());
			System.out.println(vo.getRno());
			System.out.println(vo.getReplytext());
			replyService.create(vo);
			return "redirect:productInquiryForm.do";
		}

		// 댓글 목록(controller방식 : view(화면)을 리턴
		@RequestMapping(value = "list.do")
		public @ResponseBody Object list(@RequestParam int num) {
			List<ReplyVO> rlist = replyService.list(num);
			return rlist;
		}
}
