package com.myweb.persistence;

import java.util.List;

import com.myweb.domain.BookingVO;
import com.myweb.domain.EventVO;

public interface EventDAO {
	public int addEvnet(EventVO evo);
	public List<EventVO> getEvent();
	public int chkMemberCount(String title);
	public int updateMemberCount(BookingVO bvo);
	public int resetUpdateCount(BookingVO bvo);
}
