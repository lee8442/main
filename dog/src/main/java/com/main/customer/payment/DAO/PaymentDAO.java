package com.main.customer.payment.DAO;

import java.util.HashMap;
import java.util.List;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_OrderVO;

public interface PaymentDAO {
	public List<ProductVO> selectProductOrder(String code);
	//상품 결제
	public void insertPayment(Product_OrderVO vo);
	//포인트 조회
	public int selectMemberPoint(String member_id);
	//결제 후 장바구니 삭제
	public void deleteBasket(HashMap<String, Object> hm);
	
}