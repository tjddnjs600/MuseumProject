package com.myweb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myweb.domain.BookingVO;
import com.myweb.domain.EventVO;

@Repository
public class EventDAOImpl implements EventDAO{
	private static Logger log = LoggerFactory.getLogger(EventDAOImpl.class);
	private static String ns = "EventMapper.";
	
	@Inject
	SqlSession sql;

	@Override
	public int addEvnet(EventVO evo) {
		return sql.insert(ns+"addEv", evo);
	}

	@Override
	public List<EventVO> getEvent() {
		return sql.selectList(ns+"selEv");
	}

	@Override
	public int chkMemberCount(String title) {
		return sql.selectOne(ns+"chkCount", title);
	}

	@Override
	public int updateMemberCount(BookingVO bvo) {
		return sql.update(ns+"upCount", bvo);
	}

	@Override
	public int resetUpdateCount(BookingVO bvo) {
		return sql.update(ns+"resetCount", bvo);
	}
}
