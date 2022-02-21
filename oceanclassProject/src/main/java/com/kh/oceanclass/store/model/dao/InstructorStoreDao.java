package com.kh.oceanclass.store.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.oceanclass.common.model.vo.PageInfo;
import com.kh.oceanclass.store.model.vo.InProductOrder;
import com.kh.oceanclass.store.model.vo.Product;
import com.kh.oceanclass.store.model.vo.ProductOption;
import com.kh.oceanclass.store.model.vo.Stock;
import com.kh.oceanclass.store.model.vo.StoreBuyList;
import com.kh.oceanclass.store.model.vo.StoreOrder;

@Repository
public class InstructorStoreDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("inStoreMapper.selectListCount");
	}
	
	public ArrayList<Product> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectList", null, rowBounds);
	}
	
	//상품등록
	public int insertProduct(SqlSessionTemplate sqlSession, Product p) {	
		return sqlSession.insert("inStoreMapper.insertProduct", p);
	}

	public int insertProductOption(SqlSessionTemplate sqlSession, ProductOption option) {
		return sqlSession.insert("inStoreMapper.insertProductOption", option);
	}

	// 상품상세조회
	public Product selectProduct(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.selectOne("inStoreMapper.selectProduct", pno);
	}
	
	public ArrayList<ProductOption> selectProductOption(SqlSessionTemplate sqlSession, int pno) {
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectProductOption", pno);
	}

	public int updateProduct(SqlSessionTemplate sqlSession, Product p) {
		return sqlSession.update("inStoreMapper.updateProduct", p);
	}

	public int updateProductOption(SqlSessionTemplate sqlSession, ProductOption option) {
		return sqlSession.update("inStoreMapper.updateProductOption", option);
	}

	public int upinsertProductOption(SqlSessionTemplate sqlSession, ProductOption option) {
		return sqlSession.insert("inStoreMapper.upinsertProductOption", option);
	}
	
	public int deleteProduct(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.update("inStoreMapper.deleteProduct", pno);
	}
	
	public int deleteProductOption(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.delete("inStoreMapper.deleteProductOption", pno);
	}

	public int selectStockCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("inStoreMapper.selectStockCount");
	}
	
	public ArrayList<Stock> selectStockList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectStockList", null, rowBounds);
	}

	public int updateStockCount(SqlSessionTemplate sqlSession, Stock st) {
		return sqlSession.update("inStoreMapper.updateStockCount", st);
	}

	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectProductList");
	}

	
	public int insertProductOrder(SqlSessionTemplate sqlSession, InProductOrder pOrder) {
		return sqlSession.insert("inStoreMapper.insertProductOrder", pOrder);
	}

	public int selectStoreDeliveryCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("inStoreMapper.selectStoreDeliveryCount");
	}

	public ArrayList<StoreOrder> selectStoreDeliveryList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectStoreDeliveryList", null, rowBounds);
	}

	public StoreOrder selectStoreDelivery(SqlSessionTemplate sqlSession, String ono) {
		return sqlSession.selectOne("inStoreMapper.selectStoreDelivery", ono);
	}

	public ArrayList<StoreBuyList> selectStoreBuyList(SqlSessionTemplate sqlSession, String ono) {
		return (ArrayList)sqlSession.selectList("inStoreMapper.selectStoreBuyList", ono);
	}

	public int storeOrderUpdate(SqlSessionTemplate sqlSession, StoreOrder so) {
		return sqlSession.update("inStoreMapper.storeOrderUpdate", so);
	}

	public int searchStoreOrderCount(SqlSessionTemplate sqlSession, String orderStatus) {
		return sqlSession.selectOne("inStoreMapper.searchStoreOrderCount", orderStatus);
	}

	public ArrayList<StoreOrder> searchStoreOrderList(SqlSessionTemplate sqlSession, String orderStatus, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("inStoreMapper.searchStoreOrderList", orderStatus, rowBounds);
	}
	
	
	
}
