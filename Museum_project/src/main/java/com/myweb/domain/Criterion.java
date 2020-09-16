package com.myweb.domain;

public class Criterion {
	private int amount;
	private int pageNum;
	
	
	public Criterion() {
		this(1,10);
	}
	
	public Criterion(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}


	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
}
