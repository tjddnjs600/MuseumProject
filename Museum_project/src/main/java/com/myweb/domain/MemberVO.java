package com.myweb.domain;


public class MemberVO {
	
	private String adid;
	private String adpwd;
	private String adnick;
	
	public MemberVO() {}
	
	public MemberVO(String adid, String adpwd) {
		this.adid = adid;
		this.adpwd = adpwd;
	}

	public MemberVO(String adid, String adpwd, String adnick) {
		this(adid,adpwd);
		this.adnick = adnick;
	}
	
	
	public String getAdid() {
		return adid;
	}
	public void setAdid(String adid) {
		this.adid = adid;
	}
	public String getAdpwd() {
		return adpwd;
	}
	public void setAdpwd(String adpwd) {
		this.adpwd = adpwd;
	}
	public String getAdnick() {
		return adnick;
	}
	public void setAdnick(String adnick) {
		this.adnick = adnick;
	}
	
	
}

