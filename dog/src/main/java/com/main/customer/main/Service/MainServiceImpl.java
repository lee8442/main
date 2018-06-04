package com.main.customer.main.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.customer.main.DAO.MainDAO;
import com.main.customer.main.VO.MainVO;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO MainDAO;

	@Override
	public List<MainVO> selectBestProduct(MainVO vo) {
		return MainDAO.selectBestProduct(vo);
	}

}
