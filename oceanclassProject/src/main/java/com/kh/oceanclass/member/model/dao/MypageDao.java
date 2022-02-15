package com.kh.oceanclass.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.oceanclass.Class.model.vo.ClassVo;
import com.kh.oceanclass.common.model.vo.PageInfo;
import com.kh.oceanclass.help.model.vo.Qna;
import com.kh.oceanclass.member.model.vo.Coupon;
import com.kh.oceanclass.member.model.vo.Member;

@Repository
public class MypageDao {
	
	public int updateProfile(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("myMapper.updateProfile", m);
	}
	
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("myMapper.updatePwd", m);
	}
	
	public int deleteMem(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.update("myMapper.deleteMem", userId);
	}
	
	public int selectCouponCount(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("myMapper.selectCouponCount", memNo);
	}

	public ArrayList<Coupon> selectCouponList(SqlSessionTemplate sqlSession, PageInfo pi, int memNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myMapper.selectCouponList", memNo, rowBounds);
	}
	
	public int selectQnaCount(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("myMapper.selectQnaCount", memNo);
	}
	
	public ArrayList<Qna> selectQnaList(SqlSessionTemplate sqlSession, PageInfo pi, int memNo){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myMapper.selectQnaList", memNo, rowBounds);
	}
	
	public int myQnaCount(SqlSessionTemplate sqlSession, Qna q) {
		if(q.createDate.equals("week")) {
			return sqlSession.selectOne("myMapper.myQnaWeekCount", q);
		}else if(q.createDate.equals("2week")) {
			return sqlSession.selectOne("myMapper.myQna2WeekCount", q);
		}else {
			return sqlSession.selectOne("myMapper.myQnaMonthCount", q);
		}
	}
	
	public ArrayList<Qna> selectMyQnaList(SqlSessionTemplate sqlSession, PageInfo pi, Qna q){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		if(q.createDate.equals("week")) {
			return (ArrayList)sqlSession.selectList("myMapper.myQnaWeek", q, rowBounds);
		}else if(q.createDate.equals("2week")) {
			return (ArrayList)sqlSession.selectList("myMapper.myQna2Week", q, rowBounds);
		}else {
			return (ArrayList)sqlSession.selectList("myMapper.myQnaMonth", q, rowBounds);
		}
	}
	
	public int checkNick(SqlSessionTemplate sqlSession, String nickName){
		return sqlSession.selectOne("myMapper.checkNick", nickName);
	}
	
	public int likeClassCount(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("myMapper.likeClassCount", memNo);
	}
	
	public ArrayList<ClassVo> selectLikeClass(SqlSessionTemplate sqlSession, PageInfo pi, int memNo){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myMapper.selectLikeClass", memNo, rowBounds);
	}
	

}// class
