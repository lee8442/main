package com.main.customer.payment.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentController {

   @RequestMapping(value = "/paymentForm.do")
   public String payment() {
      System.out.println("결제 페이지");
      return "simple/payment/paymentForm";
   }

   @RequestMapping(value = "/payment.do", method = RequestMethod.POST)
   public String paymentForm() {
      System.out.println("결제 완료");
      return "simple/main/main";
   }
}