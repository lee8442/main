package com.main.customer.myPage.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.myPage.DAO.MyPageOrderDAO;

@Service
public class UpdateMyPageOrderServiceImpl implements UpdateMyPageOrderService {
	@Autowired
	private MyPageOrderDAO myPageOrderDAO;
	
	@Override
	public void orderRefundStart(int cancelCode) {
		myPageOrderDAO.orderRefundStart(cancelCode);
	}
	
	@Override
	public void orderRefundCancle(int cancelCode) {
		myPageOrderDAO.orderRefundCancle(cancelCode);
	}
	
	@Override
	public void orderExchangeStart(int cancelCode) {
		myPageOrderDAO.orderExchangeStart(cancelCode);
	}
	
	@Override
	public void orderExchangeCancle(int cancelCode) {
		myPageOrderDAO.orderExchangeCancle(cancelCode);
	}
	
	@Override
	public void orderCancle(int cancelCode) {
		myPageOrderDAO.orderCancle(cancelCode);
	}
}
