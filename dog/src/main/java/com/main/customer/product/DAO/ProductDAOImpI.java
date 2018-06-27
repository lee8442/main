package com.main.customer.product.DAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.admin.product.VO.Product_OrderVO;
import com.main.util.SqlSessionFactoryBean;

@Repository
public class ProductDAOImpI implements ProductDAO {

	private SqlSession SqlSession;

	public ProductDAOImpI() {
		SqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	@Override
	public List<ProductVO> selectBigCodeProductList(String bigcode) {
		return SqlSession.selectList("myBatis.customer.product.bigCodeProductList", bigcode);
	}

	@Override
	public String selectBigCodeName(String bigcode) {
		return SqlSession.selectOne("myBatis.customer.product.bigCodeName", bigcode);
	}

	@Override
	public List<ProductVO> selectSmallCodeName(String bigcode) {
		return SqlSession.selectList("myBatis.customer.product.smallCodeName", bigcode);
	}

	@Override
	public List<ProductVO> selectSmallCodeProductList(String smallcode) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.smallCodeProductList", smallcode);
	}

	@Override
	public String slectSBigCodeName(String smallcode) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne("myBatis.customer.product.SbigCodeName", smallcode);
	}

	@Override
	public List<ProductVO> selectSSmallCodeProductList(String smallcode) {
		return SqlSession.selectList("myBatis.customer.product.SsmallCodeName", smallcode);
	}

	@Override
	public List<ProductVO> selectDetailPageList(String code) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.DetailPageList", code);
	}

	@Override
	public void insertProductBasket(Product_BasketVO vo) {
		SqlSession.insert("myBatis.customer.product.productBasket", vo);
		SqlSession.commit();
	}

	@Override
	public List<ProductVO> selectProduct(String member_id) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.productList", member_id);
	}

	@Override
	public List<Product_OrderVO> selectProductBasket(String member_id) {
		// TODO Auto-generated method stub
		return SqlSession.selectList("myBatis.customer.product.productBasketList", member_id);
	}

	@Override
	public void deleteProductBasket(HashMap<String, Object> hm) {
		SqlSession.delete("myBatis.customer.product.deleteProductBasket", hm);
		SqlSession.commit();
	}

	@Override
	public void updateProductBasket(Product_BasketVO vo) {
		System.out.println(vo.getAmount() + vo.getProduct_code());
		SqlSession.update("myBatis.customer.product.updateProductBasket", vo);
		SqlSession.commit();
	}

	@Override
	public List<ProductVO> selectPaymentProduct(HashMap<String, Object> hm) {

		return SqlSession.selectList("myBatis.customer.product.paymentProductList", hm);
	}

	@Override
	public List<Product_BasketVO> selectPaymentProductBasket(HashMap<String, Object> hm) {

		return SqlSession.selectList("myBatis.customer.product.paymentProductBasketList", hm);
	}

	@Override
	public List<ProductVO> selectDirectPaymentProductBasket(String code) {
		return SqlSession.selectList("myBatis.customer.product.paymentDirectProductList", code);
	}

}