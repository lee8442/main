package com.main.customer.payment.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.main.admin.product.VO.Basket_CheckBoxVO;
import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.admin.product.VO.Product_OrderVO;
import com.main.customer.member.VO.MemberVO;
import com.main.customer.payment.Service.DeleteBasketService;
import com.main.customer.payment.Service.InsertPaymentService;
import com.main.customer.payment.Service.SelectMemberPointService;
import com.main.customer.payment.Service.SelectProductOrderService;
import com.main.customer.product.Service.SelectDirectPaymentProductService;
import com.main.customer.product.Service.SelectPaymentProductBasketService;
import com.main.customer.product.Service.SelectPaymentProductService;

@Controller
public class PaymentController {

	@Autowired
	SelectPaymentProductBasketService selectpaymentproductbasketservice;

	@Autowired
	SelectPaymentProductService selectpaymentproductservice;

	@Autowired
	SelectProductOrderService selectProductOrderService;

	@Autowired
	SelectDirectPaymentProductService selectdirectpaymentproductservice;

	@Autowired
	InsertPaymentService insertpaymentservice;

	@Autowired
	SelectMemberPointService selectmemberpointservice;

	@Autowired
	DeleteBasketService deletebasketservice;
	
	@RequestMapping(value = "/payment.do")
	public String payment(@RequestParam(value = "code", defaultValue = "-1") String code,
			@RequestParam(value = "amount", defaultValue = "-1") Integer amount, Basket_CheckBoxVO product_code,
			Model model, HttpServletRequest request, HttpSession session) {
		System.out.println("결제페이지");
		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		String member_id = memberVO.getId();
		
		// 장바구니 이용시
		if (request.getParameterValues("checkbox") != null) {
			System.out.println("장바구니에서 결제시");
			String[] productcode = request.getParameterValues("checkbox");
			List<String> list = new ArrayList<String>();
			HashMap<String, Object> hm = new HashMap<String, Object>();
			for (int i = 0; i < productcode.length; i++) {
				list.add(productcode[i]);
			}
			hm.put("list", list); // map에 list를 넣는다.
			hm.put("id", member_id);

			List<ProductVO> productlist = selectpaymentproductservice.selectPaymentProduct(hm);
			List<Product_BasketVO> productbasketlist = selectpaymentproductbasketservice.selectPaymentProductBasket(hm);

			model.addAttribute("basketProductList", productbasketlist);
			model.addAttribute("productList", productlist);
		}
		// 바로결제시
		if (code.equals("-1") & amount == -1) {
		} else {
			System.out.println("상세페이지에서 결제시");
			List<ProductVO> productlist = selectdirectpaymentproductservice.selectDirectPaymentProductBasket(code);
			List<Product_BasketVO> productamount = new ArrayList<Product_BasketVO>();
			Product_BasketVO vo = new Product_BasketVO();
			vo.setAmount(amount);
			productamount.add(vo);
			model.addAttribute("basketProductList", productamount);
			model.addAttribute("productList", productlist);
		}

		return "simple/payment/paymentForm";
	}

	@RequestMapping(value = "/payment.do", method = RequestMethod.POST)
	public String paymentForm(Product_OrderVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println("결제완료준비");
		System.out.println(vo.getmontant());
		System.out.println("gogo");
		String[] amountval = request.getParameterValues("amount");
		String[] product_codeval = request.getParameterValues("product_code");
		String amount = "";
		String product_code = "";
		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		String member_id = memberVO.getId();
		for(int i=0; i<amountval.length; i++){
				if(i != amountval.length-1) {
					amount += amountval[i] +",";
					product_code += product_codeval[i] +",";
				} else {
					amount += amountval[i];
					product_code += product_codeval[i];
				}
		}
		vo.setAmount(amount);
		vo.setProduct_code(product_code);
		vo.setMember_id(member_id);
		insertpaymentservice.insertPayment(vo);
		
		
		//결제완료한 상품 장바구니 삭제
		HashMap<String, Object> hm = new HashMap<String, Object>();
		List<String> list = new ArrayList<String>();
		for(int i=0; i<amountval.length; i++){
			list.add(product_codeval[i]); //in 조건에 넣을 정보
		}	
		hm.put("list", list); //map에 list를 넣는다.
		hm.put("member_id", member_id);
		
		deletebasketservice.deleteBasket(hm);
		System.out.println("결제 완료");
		return "redirect:main.do";
	}

	// 포인트 조회
	@RequestMapping(value = "/memeberpoint.do", method = RequestMethod.POST)
	@ResponseBody
	public int selectMemberPoint(HttpSession session) {
		System.out.println("포인트 조회");
		int point = 0;
		MemberVO memberVO = (MemberVO) session.getAttribute("login");
		String member_id = memberVO.getId();
		point = selectmemberpointservice.selectMemberPoint(member_id);
		return point;
	}

}