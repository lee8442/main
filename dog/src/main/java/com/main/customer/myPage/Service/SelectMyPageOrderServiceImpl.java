package com.main.customer.myPage.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.admin.order.VO.OrderVO;
import com.main.customer.myPage.DAO.MyPageOrderDAO;

@Service
public class SelectMyPageOrderServiceImpl implements SelectMyPageOrderService {
	@Autowired
	private MyPageOrderDAO myPageOrderDAO;
	
	@Override
	public List<OrderVO> myPageOrderList(String id){
		List<OrderVO> myOrderList = myPageOrderDAO.myPageOrderList(id);
		return myOrderList;
	}
	
}
