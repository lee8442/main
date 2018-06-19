package com.main.customer.payment.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.admin.product.VO.ProductVO;
import com.main.customer.payment.Service.SelectProductOrderService;

@Controller
public class PaymentController {

	@Autowired
	SelectProductOrderService selectProductOrderService;
	
   @RequestMapping(value = "/payment.do")
   public String payment(String code, int amount, Model model) {
      System.out.println("결제 페이지");
      
      List<ProductVO> productOrder = selectProductOrderService.selectProductOrder(code);
      
      model.addAttribute("amount", amount);
      model.addAttribute("productOrder", productOrder);
      
      
      return "simple/payment/paymentForm";
   }
   
   @RequestMapping(value = "/payment_basket.do")
   public String basket_payment() {
	   
      System.out.println("결제 페이지");
      
      return "simple/payment/paymentForm";
   }  
   
   

   @RequestMapping(value = "/payment.do", method = RequestMethod.POST)
   public String paymentForm() {
      System.out.println("결제 완료");
      
      return "redirect:main.do";
   }
}