package com.myweb.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PagingVO {
	private static Logger log = LoggerFactory.getLogger(PagingVO.class);
	private int totalCount;
	private int startPageNum;
	private int endPageNum;
	private boolean prev, next;
	private Criterion cri;
	
	
	public PagingVO() {
	}
	
	public PagingVO(int totalCount, Criterion cri) {
		this.totalCount = totalCount;
		this.cri = cri;
		
		this.endPageNum = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPageNum = this.endPageNum - 9;
		
		int realEndPageNum = (int)(Math.ceil((totalCount*1.0)/cri.getAmount()));
		
		if (this.endPageNum >= realEndPageNum) {
			this.endPageNum = realEndPageNum;
		}
		
		this.prev = startPageNum > 1;
		this.next = endPageNum < realEndPageNum;

	}
	

	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getStartPageNum() {
		return startPageNum;
	}
	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}
	public int getEndPageNum() {
		return endPageNum;
	}
	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public Criterion getCri() {
		return cri;
	}
	public void setCri(Criterion cri) {
		this.cri = cri;
	}
	
}
