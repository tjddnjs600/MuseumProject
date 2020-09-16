package com.myweb.persistence;

import java.util.List;

import com.myweb.domain.Criterion;
import com.myweb.domain.NoticeVO;

public interface BoardDAO {
	public int noticeRegist(NoticeVO nvo);
	
	public List<NoticeVO> getNoticeList(Criterion cri);

	public int noticeUpCount(int nno);

	public NoticeVO noticeSelectOne(int nno);
	
	public List<NoticeVO> getNewNoticeList();
	
	public int noticeGetTotalCount();

}
