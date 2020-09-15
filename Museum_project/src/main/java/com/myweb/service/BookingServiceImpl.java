package com.myweb.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.myweb.domain.BookingVO;
import com.myweb.domain.EventVO;
import com.myweb.persistence.BookingDAO;
import com.myweb.persistence.EventDAO;

@Service
public class BookingServiceImpl implements BookingService{
	private static Logger log = LoggerFactory.getLogger(BookingServiceImpl.class);
	
	@Inject
	BookingDAO bdao;
	
	@Inject
	EventDAO edao;

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public int booking(BookingVO bvo) {
		BookingVO bvo2 = new BookingVO(bvo.getBtitle(),bvo.getBnumber());
		edao.updateMemberCount(bvo2);
		return bdao.insertBooking(bvo);
	}

	@Override
	public List<BookingVO> getBook(BookingVO bvo) {
		return bdao.selectList(bvo);
	}

	@Override
	public int modify(BookingVO bvo) {
		return bdao.modifyBooking(bvo);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public int remove(int bno, BookingVO bvo) {
		edao.resetUpdateCount(bvo);
		return bdao.deleteBooking(bno);
	}
}
