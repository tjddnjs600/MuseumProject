package com.myweb.domain;

import java.sql.Date;

public class NoticeVO {
	private int nno;
	private String ntitle;
	private String nwriter;
	private Date nregdate;
	private int checkcount;
	private String ncontent;
	private String imgfile;
	
	public NoticeVO() {}
	
	
	//insert
	public NoticeVO(String ntitle, String nwriter, String ncontent, String imgfile) {
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.ncontent = ncontent;
		this.imgfile = imgfile;
	}

	
	//list
	public NoticeVO(int nno, String ntitle, String nwriter, Date nregdate, int checkcount) {
		this.nno = nno;
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.nregdate = nregdate;
		this.checkcount = checkcount;
	}


	//detail
	public NoticeVO(int nno, String ntitle, String nwriter, Date nregdate, int checkcount, String ncontent,
			String imgfile) {
		this.nno = nno;
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.nregdate = nregdate;
		this.checkcount = checkcount;
		this.ncontent = ncontent;
		this.imgfile = imgfile;
	}
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNwriter() {
		return nwriter;
	}
	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}
	public Date getNregdate() {
		return nregdate;
	}
	public void setNregdate(Date nregdate) {
		this.nregdate = nregdate;
	}
	public int getCheckcount() {
		return checkcount;
	}
	public void setCheckcount(int checkcount) {
		this.checkcount = checkcount;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getImgfile() {
		return imgfile;
	}
	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}
	
}
