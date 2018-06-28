package com.main.customer.board.Controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.main.customer.board.Service.InquiryQuestionCategoryService;
import com.main.customer.board.Service.SelectInquiryBoardService;
import com.main.customer.board.Service.UpdateInquiryBoardService;
import com.main.customer.board.VO.InquiryQuestionCategoryVO;
import com.main.customer.board.VO.InquiryVO;
@Controller
public class UpdateInquiryBoardController {

	@Autowired
	UpdateInquiryBoardService updateInquiryBoardService;
	@Autowired
	SelectInquiryBoardService selectInquiryBoardService;
	@Autowired
	InquiryQuestionCategoryService inquiryQuestionCategoryService;
	
	// 상품문의게시판 업데이트 페이지
		@RequestMapping(value = "/updateInquiry.do", method = RequestMethod.GET)
		public String updateInquiryBoard(Model model, String num, InquiryVO vo, MultipartFile file) {
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
	// 업데이트 글 저장
	@RequestMapping(value = "/updateInquiry.do", method = RequestMethod.POST)
	public String InsertUpdateInquiryBoard(int num, Model model, @ModelAttribute InquiryVO vo)
			throws Exception {
	
		
		updateInquiryBoardService.updateInquiryBoard(vo);
		model.addAttribute("vo", vo);
		
		System.out.println("vo 상태 : " + vo.toString());
		System.out.println(vo.getContent());
		System.out.println(vo.getSubject());

		return "redirect:productInquiryForm.do";
	}
/*
	// 상품문의게시판 업데이트 비밀번호 체크
	@RequestMapping(value = "/checkPw.do",method= {RequestMethod.POST,RequestMethod.GET}, produces = "plain/text;charset=utf-8")
	public @ResponseBody Object checkpw(InquiryVO vo) {
		System.out.println("비밀번호 체크");
		System.out.println(vo.getPassword());
		System.out.println(vo.getNum());
		String paramPassword = vo.getPassword();
		// db에서 password를 조회 vo.getNum()
		int num = vo.getNum();
		System.out.println(num);
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
	}*/

}
