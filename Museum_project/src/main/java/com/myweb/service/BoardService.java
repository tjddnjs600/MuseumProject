package com.myweb.service;

import java.util.List;

import com.myweb.domain.NoticeVO;

public interface BoardService {
	public int addnotice(NoticeVO nvo);
	public List<NoticeVO> getNList();
	public int nUpCount(int nno);
	public NoticeVO nSelectOne(int nno);
	public List<NoticeVO> getNewList();
}
