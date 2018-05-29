package com.main.admin.product.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;

@Repository
public class ProductImpl implements ProductDAO {
	private SqlSession SqlSession;
	
	@Override
	public void insertCategory(ProductVO vo) {
		SqlSession.insert("myBatis.admin.product.insertProduct", vo);
		SqlSession.commit();
	}

	@Override
	public void selectCategoryBig(ProductVO vo) {
		// TODO Auto-generated method stub
	}

	@Override
	public void selectCategorySmall(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	
}
