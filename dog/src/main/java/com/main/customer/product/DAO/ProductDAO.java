package com.main.customer.product.DAO;

import java.util.List;

import com.main.admin.product.VO.ProductVO;

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
	
}