package com.kh.oceanclass.Class.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.oceanclass.Class.model.vo.ClassReview;
import com.kh.oceanclass.Class.model.vo.ClassVo;
import com.kh.oceanclass.common.model.vo.LikeVo;
import com.kh.oceanclass.common.model.vo.PageInfo;
import com.kh.oceanclass.common.model.vo.Reply;

public interface ClassService {

	// 클래스 상세보기용
	int increaseCount(int clNo);
	ClassVo selectClass(int clNo);
	ArrayList<ClassReview> selectClassReviewList(int clNo);
	ArrayList<ClassReview> selectClassReviewTopList(int clNo);
	ArrayList<ClassReview> selectClassReviewMainList(int clNo);
	int classReviewListCount(int clNo);
	ArrayList<ClassReview> selectClassReviewListPaging(int clNo, PageInfo pi);
	ClassReview selectClassReviewDetail(int crNo);
	int selectReplyListCount(int crNo);
	ArrayList<Reply> selectReplyList(int crNo, PageInfo pi);
	int insertClassReviewReply(Reply r);
	
	// 클래스 검색용
	int classSearchListCount(HashMap<String, String> map);
	ArrayList<ClassVo> classSearchList(HashMap<String, String> map, PageInfo pi);

	// 클래스 찜하기용
	int checkClassLike(LikeVo li);
	int insertClassLike(LikeVo li);
	int deleteClassLike(LikeVo li);
	
	// 클래스 추천용
	int checkRecommend(ClassReview cr);
	int deleteRecommend(ClassReview cr);
	int insertRecommend(ClassReview cr);
	
}
