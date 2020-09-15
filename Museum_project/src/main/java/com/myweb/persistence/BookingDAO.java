package com.myweb.persistence;

import java.util.List;

import com.myweb.domain.BookingVO;

public interface BookingDAO {
	public int insertBooking(BookingVO bvo);
	public List<BookingVO> selectList(BookingVO bvo);
	public int modifyBooking(BookingVO bvo);
	public int deleteBooking(int bno);
}
