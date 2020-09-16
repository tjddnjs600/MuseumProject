package com.myweb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myweb.domain.NoticeVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	private static Logger log = LoggerFactory.getLogger(BoardDAOImpl.class);
	private static String ns = "BoardMapper.";
	
	@Inject
	SqlSession sql;
	
	@Override
	public int noticeRegist(NoticeVO nvo) {
		return sql.insert(ns+"nAdd", nvo);
	}

	@Override
	public List<NoticeVO> getNoticeList() {
		return sql.selectList(ns+"nlist");
	}

	@Override
	public int noticeUpCount(int nno) {
		return sql.update(ns+"nUpCount", nno);
	}

	@Override
	public NoticeVO noticeSelectOne(int nno) {
		return sql.selectOne(ns+"ndetail", nno);
	}

	@Override
	public List<NoticeVO> getNewNoticeList() {
		return sql.selectList(ns+"newList");
	}


}
