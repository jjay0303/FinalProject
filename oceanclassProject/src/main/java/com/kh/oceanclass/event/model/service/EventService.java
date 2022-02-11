package com.kh.oceanclass.event.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.oceanclass.common.model.vo.PageInfo;
import com.kh.oceanclass.event.model.vo.Event;

@Service
public interface EventService {
	
	// 1. 이벤트 리스트
	int selectEventCount();
	ArrayList<Event> selectEventList(PageInfo pi);
	
	// 2. 이벤트 상세보기
	Event selectEvent(int eventNo);
	
	// 3. 이벤트 카테고리 선택
	ArrayList<Event> ajaxSearchEvent(String category);
	
}
