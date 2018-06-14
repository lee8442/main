package com.main.customer.main.Service;

import java.util.List;

import com.main.customer.main.VO.MainVO;

public interface MainService {
		public List<MainVO> selectBestProduct(MainVO vo);
		
		public List<MainVO> selectNewProduct(MainVO vo);
		
		public List<MainVO> selectRecomProduct(MainVO vo);
		

}
