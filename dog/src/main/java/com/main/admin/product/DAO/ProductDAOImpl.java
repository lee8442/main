package com.main.admin.product.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ProductDAOImpl implements ProductDAO {
	private SqlSession SqlSession;

	public ProductDAOImpl() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	@Override
	public void insertCategory(ProductVO vo) {
		/*SqlSession.insert("myBatis.admin.product.insertProduct", vo);
		SqlSession.commit();*/
	}

	@Override
	public void selectCategoryBig(ProductVO vo) {
	}

	@Override
	public void selectCategorySmall(ProductVO vo) {
	}

	
}
