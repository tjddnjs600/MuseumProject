package com.myweb.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.myweb.domain.EventVO;
import com.myweb.persistence.BookingDAO;
import com.myweb.persistence.EventDAO;

@Service
public class EventServiceImpl implements EventService{
	private static Logger log = LoggerFactory.getLogger(EventServiceImpl.class);
	
	@Inject
	EventDAO edao;

	@Override
	public int addEvent(EventVO evo) {
		return edao.addEvnet(evo);
	}

	@Override
	public List<EventVO> getEvent() {
		return edao.getEvent();
	}

	@Override
	public int chkMember(String title) {
		return edao.chkMemberCount(title);
	}
}
