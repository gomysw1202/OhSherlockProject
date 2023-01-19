package syj.shop.model;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.model.CartVO;
import common.model.ProductVO;

public interface InterProductDAO {

	// 이벤트 상품에 대한 총 페이지 알아오기
	int getEventTotalPage(Map<String, String> paraMap) throws SQLException;
	
	// 이벤트 상품 리스트 불러오기
	List<ProductVO> selectEventGoodsByCategory(Map<String, String> paraMap) throws SQLException;

	// 장바구니에 추가하기
	int addCart(String userid, String pnum, String oqty)  throws SQLException;

	// 로그인한 사용자의 장바구니 목록을 조회하기 
	List<CartVO> selectProductCart(String userid) throws SQLException;

	// 로그인한 사용자의 장바구니에 담긴 주문 총액 합계 및 총 포인트 합계
	HashMap<String, String> selectCartSumPricePoint(String userid) throws SQLException;

	// 찜목록 테이블에서 장바구니 담기 성공시 특정제품 1개행을 찜목록에서 비우기(예은)
	int delLike(String likeno) throws SQLException;

	// 장바구니 테이블에서 특정 제품을 장바구니에서 지우기
	int delCart(String cartno) throws SQLException;

	// 장바구니 테이블에서 특정 제품의 수량을 변경하기
	int updateCart(String cartno, String oqty) throws SQLException;

	// 장바구니에서 특정제품만 삭제하기
	int delSelectCart(String[] cartnoArr) throws SQLException;
	
	
	

}
