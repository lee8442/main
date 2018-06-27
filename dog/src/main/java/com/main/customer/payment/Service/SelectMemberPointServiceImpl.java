package com.main.customer.payment.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.payment.DAO.PaymentDAO;

@Service
public class SelectMemberPointServiceImpl implements SelectMemberPointService {
	
	@Autowired
	private PaymentDAO paymentDAO;

	@Override
	public int selectMemberPoint(String member_id) {
		// TODO Auto-generated method stub
		return paymentDAO.selectMemberPoint(member_id);
	}






}
