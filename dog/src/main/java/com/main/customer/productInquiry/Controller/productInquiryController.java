package com.main.customer.productInquiry.Controller;


import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.main.customer.productInquiry.DAO.InquiryDAO;
import com.main.customer.productInquiry.Service.BoardPager;
import com.main.customer.productInquiry.Service.DeleteInquiryBoardService;
import com.main.customer.productInquiry.Service.InquiryCategoryService;
import com.main.customer.productInquiry.Service.InquiryQuestionCategoryService;
import com.main.customer.productInquiry.Service.InsertInquiryBoardService;
import com.main.customer.productInquiry.Service.ReplyService;
import com.main.customer.productInquiry.Service.SelectInquiryBoardService;
import com.main.customer.productInquiry.Service.UpdateInquiryBoardService;
import com.main.customer.productInquiry.VO.InquiryCategoryVO;
import com.main.customer.productInquiry.VO.InquiryQuestionCategoryVO;
import com.main.customer.productInquiry.VO.InquiryVO;
import com.main.customer.productInquiry.VO.ReplyVO;
import com.sun.org.glassfish.gmbal.ManagedAttribute;

@Controller
public class productInquiryController {

	@Autowired
	InquiryCategoryService inquiryCategoryService;
	@Autowired
	InquiryQuestionCategoryService inquiryQuestionCategoryService;
	@Autowired
	InsertInquiryBoardService insertInquiryBoardService;
	@Autowired
	SelectInquiryBoardService selectInquiryBoardService;
	@Autowired
	DeleteInquiryBoardService deleteInquiryBoardService;
	@Autowired
	UpdateInquiryBoardService updateInquiryBoardService;
	@Autowired
	ReplyService replyService;
	
	InquiryDAO inquiryDAO;

	
	// 상품문의 게시판목록
	@RequestMapping(value = "/productInquiry.do")
	public ModelAndView productInquiry(@RequestParam(defaultValue="subject") String searchOption, 
            @RequestParam(defaultValue="") String keyword,String sel,InquiryVO vo,Model model,InquiryCategoryVO cvo,
            @RequestParam(defaultValue="1") int curPage) throws Exception{
		
		// 레코드의 갯수 계산
	    int count = selectInquiryBoardService.countArticle(searchOption, keyword);
		
	    // 페이지 나누기 관련 처리
	    BoardPager boardPager = new BoardPager(count, curPage);
	    int start = boardPager.getPageBegin();
	    int end = boardPager.getPageEnd();
	    
	    List<InquiryVO> blist = selectInquiryBoardService.blistAll(start, end, searchOption, keyword);
		
		System.out.println("상품문의 페이지");
	if (sel != null) {
			// 검색어 사용
			// String column="";변수선언
			if (sel.equals("1")) {
				vo.setColumn("subject");// 제목
				// column="subject";
			} else if (sel.equals("2")) {
				vo.setColumn("content");// 내용
			} else if (sel.equals("3")) {
				vo.setColumn("member_id");// 아이디
			} else {
				return null;
			}
			// vo.setColumn(column); vo에 세팅
			vo.setKeyword("%" + keyword + "%");
		}
		
	
		  // 데이터를 맵에 저장
	    Map<String, Object> map = new HashMap<String, Object>();
	    //map.put("blist", blist); // list
	    map.put("count", count); // 레코드의 갯수
	    map.put("searchOption", searchOption); // 검색옵션
	    map.put("keyword", keyword); // 검색키워드
	    map.put("boardPager", boardPager);
	    System.out.println(boardPager.getCurPage());
	    System.out.println(boardPager.getTotPage());
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    mav.addObject("blist", blist);
	    mav.setViewName("simple/product/productInquiry"); // 뷰를 list.jsp로 설정
	    
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
	// 상풍문의 글 등록
	@RequestMapping(value = "/insertInquiryBoard.do")
	synchronized public String insertInquiryBoard(@ModelAttribute InquiryVO vo, MultipartFile file) {
		try {
			vo.setMember_id("visitor");
			/* if((boolean) session.getAttribute(vo.setMember_id("member_id"))); //세션값있을때 (로그인했을때) setMemberId다시 해주면 됨
*/			System.out.println("글 등록 이벤트  ");
			vo.setImage(file.getOriginalFilename());
			System.out.println("image name=" + vo.getImage());
			File fd = new File("D:/file/" + vo.getImage());
			if (!fd.exists()) {
				fd.mkdirs();
			}
			File f = new File("D:/file/" + vo.getImage());
			int cnt = 0;
			while (f.exists()) {
				f = new File("D:/file/" + cnt + vo.getImage());
				vo.setImage(cnt + file.getOriginalFilename());
				cnt++;
			}
			file.transferTo(f);
		} catch (Exception e) {
			System.out.println("오류발생");
			e.printStackTrace();
		}
		System.out.println(vo.toString());
		insertInquiryBoardService.InsertInquiryBoard(vo);
		return "redirect:productInquiry.do";
	}
	// 상품문의게시판 업데이트 비밀번호 체크
	@RequestMapping(value = "/checkPw.do", method = RequestMethod.POST, produces = "plain/text;charset=utf-8")
	public @ResponseBody Object checkpw(InquiryVO vo) {
		System.out.println("비밀번호 체크");
		System.out.println(vo.getPassword());
		System.out.println(vo.getNum());
		String paramPassword = vo.getPassword();
		// db에서 password를 조회 vo.getNum()
		int num = vo.getNum();
		InquiryVO dbVo = selectInquiryBoardService.selectInquiryDetail(num);
		String dbPassword = dbVo.getPassword();// db의 password
		// String
		// dbPass=deleteInquiryBoardService.deleteInquiry(vo.getNum()).getPassword();//db의
		// password
		if (paramPassword.equals(dbPassword)) {
			return num + "";
		} else {
			return "0";
		}
	}
	// 상품문의게시판 삭제
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET, produces = "plain/text;charset=utf-8")
	public String delete(@RequestParam(value = "num") int num) {
		deleteInquiryBoardService.delete(num);
		return "redirect:productInquiry.do";
	}
	// 상품문의게시판 업데이트 페이지
	@RequestMapping(value = "/updateInquiry.do")
	public String updateInquiry(Model model,String num,InquiryVO vo,MultipartFile file) {
		try {
			
			System.out.println("글 등록 이벤트  ");
			vo.setImage(file.getOriginalFilename());
			System.out.println("image name=" + vo.getImage());

			File fd = new File("D:/file/" + vo.getImage());
			if (!fd.exists()) {
				fd.mkdirs();
			}
			File f = new File("D:/file/" + vo.getImage());
			int cnt = 0;
			while (f.exists()) {
				f = new File("D:/file/" + cnt + vo.getImage());
				vo.setImage(cnt + file.getOriginalFilename());
				cnt++;
			}
			file.transferTo(f);
		} catch (Exception e) {
			System.out.println("오류발생");
			e.printStackTrace();
		}
		
		int no = Integer.parseInt(num);
		System.out.println(no);
		InquiryVO uvo = selectInquiryBoardService.selectInquiryDetail(no);
		model.addAttribute("uvo", uvo);
		System.out.println("uvo추가됨");
		List<InquiryQuestionCategoryVO> QuestionCategory = inquiryQuestionCategoryService.QuestionCategory();
		inquiryQuestionCategoryService.QuestionCategory();
		model.addAttribute("QuestionCategory", QuestionCategory);
		return "simple/product/productInquiryUpdate";
	}
	//업데이트 글 저장 
		@RequestMapping(value="/updateInquiryInsert.do")
	public String updateInsert(Model model,String num,InquiryVO vo, MultipartFile file) {
			try {
				System.out.println("글 등록 이벤트  ");
				vo.setImage(file.getOriginalFilename());
				System.out.println("image name=" + vo.getImage());
				File fd = new File("D:/file/" + vo.getImage());
				if (!fd.exists()) {
					fd.mkdirs();
				}
				File f = new File("D:/file/" + vo.getImage());
				int cnt = 0;
				while (f.exists()) {
					f = new File("D:/file/" + cnt + vo.getImage());
					vo.setImage(cnt + file.getOriginalFilename());
					cnt++;
				}
				file.transferTo(f);
			} catch (Exception e) {
				System.out.println("오류발생");
				e.printStackTrace();
			}
			int no = Integer.parseInt(num);
			System.out.println(no);
			InquiryVO uvo = selectInquiryBoardService.selectInquiryDetail(no);
			model.addAttribute("uvo", uvo);
			System.out.println("uvo추가됨");
			List<InquiryQuestionCategoryVO> QuestionCategory = inquiryQuestionCategoryService.QuestionCategory();
			inquiryQuestionCategoryService.QuestionCategory();
			model.addAttribute("QuestionCategory", QuestionCategory);
			return"redirect:productInquiry.do";
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
	//댓글 입력 
	@RequestMapping(value="insert.do")
	synchronized public @ManagedAttribute String insert(ReplyVO vo) {
		System.out.println(vo.getNum());
		System.out.println(vo.getRno());
		System.out.println(vo.getReplytext());
		replyService.create(vo);	
		return "redirect:productInquiry.do";
	}
	//댓글 목록(controller방식 : view(화면)을 리턴 
	@RequestMapping(value="list.do")
	public @ResponseBody Object list(@RequestParam int num) {
		List<ReplyVO>rlist =replyService.list(num);
		return rlist;
	}
}
