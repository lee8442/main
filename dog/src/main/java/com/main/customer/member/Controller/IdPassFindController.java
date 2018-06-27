package com.main.customer.member.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.customer.main.Email.EmailSender;
import com.main.customer.member.DAO.MemberDAO;
import com.main.customer.member.Service.SelectIdPassFindService;
import com.main.customer.member.VO.Email;
import com.main.customer.member.VO.MemberVO;

@Controller
public class IdPassFindController {
	@Autowired
	SelectIdPassFindService selectIdPassFindService;
	@Autowired
	MemberDAO memberDAO;
	@Autowired
	EmailSender emailSender;
	@Autowired
	private Email email;

	@RequestMapping(value = "/idpassFind.do")
	public String idpassFind() {
		System.out.println("아이디, 비밀번호 찾기");
		return "simple/member/idpassFind";
	}

	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	public String findId(Model model, MemberVO findId) {
		System.out.println("아이디 찾아줌");
		MemberVO myId = selectIdPassFindService.idFind(findId);
		if (myId != null) {
			model.addAttribute("myId", myId);
			System.out.println(myId);
			return "simple/member/resultMyId";
		} else {
			model.addAttribute("loginErr", "false");
			return "redirect:idpassFind.do";
		}
	}

	@RequestMapping(value = "/findPassword.do", method = RequestMethod.POST)
	public String findPassword(Model model, MemberVO findPass) throws Exception {
		MemberVO myPass = selectIdPassFindService.findPassword(findPass);

		if (myPass != null) {
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			myPass.setPassword(pw);
			System.out.println(pw);
			int myRepass = selectIdPassFindService.repass(myPass);
			try {
				if (myRepass > 0) {
					System.out.println(myRepass);
					email.setContent("임시비밀번호를 알려드립니다" + myPass.getPassword() + "입니다 비밀번호를 변경하여 사용해주세요.");
					email.setReceiver(myPass.getEmail());
					email.setSubject("#dog입니다 회원님의 비밀번호를 알려드립니다.");
					emailSender.SendEmail(email);
					return "simple/member/resultMyPass";
				} else {
					System.out.println("정보가 올바르지 않아 이메일을 보낼 수 없습니다.");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "simple/member/resultMyPass";
		} else {
			model.addAttribute("loginErr", "false");
			return "redirect:idpassFind.do";
		}

	}
	/*
	 * @RequestMapping(value = "/findPassword.do", method = RequestMethod.POST)
	 * public String findPassword(Model model, MemberVO findPassword) {
	 * System.out.println("비밀번호 찾음"); MemberVO myPassword =
	 * selectIdPassFindService.idFind(findPassword); if (myPassword != null) {
	 * model.addAttribute("myPassword", myPassword); System.out.println(myPassword);
	 * return "simple/member/resultMyId"; } else { model.addAttribute("loginErr",
	 * "false"); return "redirect:idpassFind.do"; } }
	 * 
	 * @RequestMapping(value = "/findPassword.do", method = RequestMethod.POST)
	 * public String mailSending(Model model, HttpServletResponse response) {
	 * Map<String, Object> map = model.asMap(); MemberVO userDto = (MemberVO)
	 * map.get("resultDto");
	 * 
	 * System.out.println(userDto.getEmail()); System.out.println(userDto.getId());
	 * String setfrom = "rlqhr2@gmail.com"; String tomail = userDto.getEmail(); //
	 * 받는 사람 이메일 String title = userDto.getName() + "님의 비밀번호 입니다."; // 제목 String
	 * content = userDto.getName() + "님의 비밀번호는 " + userDto.getPassword()+ " 입니다.";
	 * // 내용 try { MimeMessage message = mailSender.createMimeMessage();
	 * MimeMessageHelper messageHelper = new MimeMessageHelper(message, true,
	 * "UTF-8"); // 두번째 인자 true여야 파일첨부 가능. messageHelper.setFrom(setfrom); // 보내는사람
	 * 생략하거나 하면 정상작동을 안함 messageHelper.setTo(tomail); // 받는사람 이메일
	 * messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	 * messageHelper.setText(content); // 메일 내용 mailSender.send(message);
	 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
	 * response.getWriter();
	 * out.println("<script>alert('성공적으로 메일을 발송했습니다.');history.go(-1);</script>");
	 * out.flush(); } catch (Exception e) { System.out.println(e); } return "login";
	 * }
	 */
}
