package com.myweb.service;

import java.util.List;

import com.myweb.domain.EventVO;

public interface EventService {
	public int addEvent(EventVO evo);
	public List<EventVO> getEvent();
	public int chkMember(String title);
}
