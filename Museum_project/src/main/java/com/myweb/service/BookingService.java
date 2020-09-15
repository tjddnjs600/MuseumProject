package com.myweb.service;

import java.util.List;

import com.myweb.domain.BookingVO;

public interface BookingService {
	public int booking(BookingVO bvo);
	public List<BookingVO> getBook(BookingVO bvo);
	public int modify(BookingVO bvo);
	public int remove(int bno, BookingVO bvo);
}
