package com.main.customer.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.board.DAO.InquiryDAO;
import com.main.customer.board.VO.InquiryCategoryVO;
@Service
public class InquiryCategoryServiceImpl implements InquiryCategoryService {

	@Autowired
	private InquiryDAO inquiryDAO;
	@Override
	public List<InquiryCategoryVO> InquiryCategory(InquiryCategoryVO vo)throws Exception{
		return inquiryDAO.InquiryCategory(vo);
	}

}
