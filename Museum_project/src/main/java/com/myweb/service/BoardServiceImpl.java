package com.myweb.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.myweb.domain.NoticeVO;
import com.myweb.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	private static Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Inject
	BoardDAO bdao;

	@Override
	public int addnotice(NoticeVO nvo) {
		return bdao.noticeRegist(nvo);
	}
	
	@Override
	public List<NoticeVO> getNList() {
		return bdao.getNoticeList();
	}

	@Override
	public int nUpCount(int nno) {
		return bdao.noticeUpCount(nno);
	}

	@Override
	public NoticeVO nSelectOne(int nno) {
		return bdao.noticeSelectOne(nno);
	}

	
}
