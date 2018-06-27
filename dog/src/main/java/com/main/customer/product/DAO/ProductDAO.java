package com.main.customer.product.DAO;

import java.util.HashMap;
import java.util.List;

import com.main.admin.product.VO.ProductVO;
import com.main.admin.product.VO.Product_BasketVO;
import com.main.admin.product.VO.Product_OrderVO;

public interface ProductDAO {
	//대분류 목록
	public List<ProductVO> selectBigCodeProductList(String bigcode);
	//대분류 클릭 시 대분류 이름
	public String selectBigCodeName(String bigcode);
	//대분류 클릭 시 소분류 이름
	public List<ProductVO> selectSmallCodeName(String bigcode);
	//소분류 목록
	public List<ProductVO> selectSmallCodeProductList(String smallcode);
	//소분류 클릭 시 대분류 이름
	public String slectSBigCodeName(String smallcode);
	//소분류 클릭 시 소분류 이름
	public List<ProductVO> selectSSmallCodeProductList(String smallcode);
	//상품상세페이지 상품정보
	public List<ProductVO> selectDetailPageList(String code);
	//상품 장바구니 등록
	public void insertProductBasket(Product_BasketVO vo);
	//상품 장바구니에서 상품리스트
	public List<ProductVO> selectProduct(String member_id);
	//상품 장바구니에서 장바구니리스트
	public List<Product_OrderVO> selectProductBasket(String member_id);
	//상품 바구니 목록 삭제
	public void deleteProductBasket(HashMap<String, Object> hm);
	//상품 바구니 수량 수정
	public void updateProductBasket(Product_BasketVO vo);
	//상품결제에서 상품리스트
	public List<ProductVO> selectPaymentProduct(HashMap<String, Object> hm);
	//상품결제에서 수량리스트
	public List<Product_BasketVO> selectPaymentProductBasket(HashMap<String, Object> hm);
	//바로결제 시 상품결제에서 상품리스트
	public List<ProductVO> selectDirectPaymentProductBasket(String code);
	
}