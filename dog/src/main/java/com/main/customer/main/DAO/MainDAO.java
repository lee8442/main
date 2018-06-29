package com.main.customer.main.DAO;

import java.util.List;

import com.main.customer.main.VO.MainVO;

public interface MainDAO {

	public List<MainVO> selectBestProduct(MainVO vo);
	
	public List<MainVO> selectNewProduct(MainVO vo);
	
	public List<MainVO> selectRecomProduct(MainVO vo);
	
	
}
