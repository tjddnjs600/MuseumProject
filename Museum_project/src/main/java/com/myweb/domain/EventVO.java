package com.myweb.domain;

public class EventVO {
	private String title;
	private String start;
	private int emember;
	
	
	public EventVO() {}
	
	
	public EventVO(String title, String start) {
		this.title = title;
		this.start = start;
	}

	public EventVO(String title, String start, int emamber) {
		this.title = title;
		this.start = start;
		this.emember = emamber;
	}


	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public int getEmember() {
		return emember;
	}
	public void setEmember(int emember) {
		this.emember = emember;
	}
	
	
}
