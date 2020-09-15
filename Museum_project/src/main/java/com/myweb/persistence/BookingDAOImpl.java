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
public class BookingDAOImpl implements BookingDAO{
	private static Logger log = LoggerFactory.getLogger(BookingDAOImpl.class);
	private static String ns = "BookingMapper.";
	
	@Inject
	SqlSession sql;

	@Override
	public int insertBooking(BookingVO bvo) {
		return sql.insert(ns+"booking", bvo);
	}

	@Override
	public List<BookingVO> selectList(BookingVO bvo) {
		return sql.selectList(ns+"selBook", bvo);
	}

	@Override
	public int modifyBooking(BookingVO bvo) {
		return sql.update(ns+"modBook", bvo);
	}

	@Override
	public int deleteBooking(int bno) {
		return sql.delete(ns+"rmBook", bno);
	}

}
