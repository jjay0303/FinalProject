package com.kh.oceanclass.store.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.oceanclass.common.model.vo.PageInfo;
import com.kh.oceanclass.store.model.vo.Product;
import com.kh.oceanclass.store.model.vo.ProductOption;

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
	
	public Product selectProduct(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.selectOne("inStoreMapper.selectProduct", pno);
	}

	public int insertProduct(SqlSessionTemplate sqlSession, Product p) {	
		return sqlSession.insert("inStoreMapper.insertProduct", p);
	}

	public int insertProductOption(SqlSessionTemplate sqlSession, ProductOption option) {
		return sqlSession.insert("inStoreMapper.insertProductOption", option);
	}
	

	
}
