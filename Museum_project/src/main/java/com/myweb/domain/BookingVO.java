package com.myweb.domain;

public class BookingVO {
	private int bno;
	private String btitle;
	private String bdate;
	private String btime;
	private String bname;
	private String bphone;
	private int bnumber;
	
	public BookingVO() {}
	
	//chk
	public BookingVO(String bname, String bphone) {
		this.bname = bname;
		this.bphone = bphone;
	}
	
	//updateMember
	public BookingVO(String btitle, int bnumber) {
		this.btitle = btitle;
		this.bnumber = bnumber;
	}
	
	//modify
	public BookingVO(int bno, String bname, String bphone, int bnumber) {
		this.bno = bno;
		this.bname = bname;
		this.bphone = bphone;
		this.bnumber = bnumber;
	}

	//insert
	public BookingVO(String btitle, String bdate, String btime, String bname, String bphone, int bnumber) {
		this.btitle = btitle;
		this.bdate = bdate;
		this.btime = btime;
		this.bname = bname;
		this.bphone = bphone;
		this.bnumber = bnumber;
	}


	//select
	public BookingVO(String btitle, String bdate, String btime, String bname, int bnumber) {
		this.btitle = btitle;
		this.bdate = bdate;
		this.btime = btime;
		this.bname = bname;
		this.bnumber = bnumber;
	}


	public BookingVO(int bno, String btitle, String bdate, String btime, String bname, String bphone, int bnumber) {
		this.bno = bno;
		this.btitle = btitle;
		this.bdate = bdate;
		this.btime = btime;
		this.bname = bname;
		this.bphone = bphone;
		this.bnumber = bnumber;
	}

	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getBtime() {
		return btime;
	}
	public void setBtime(String btime) {
		this.btime = btime;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBphone() {
		return bphone;
	}
	public void setBphone(String bphone) {
		this.bphone = bphone;
	}
	public int getBnumber() {
		return bnumber;
	}
	public void setBnumber(int bnumber) {
		this.bnumber = bnumber;
	}
	
}
