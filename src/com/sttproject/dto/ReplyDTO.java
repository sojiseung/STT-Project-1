package com.sttproject.dto;

public class ReplyDTO {
	private int replyidx;
	private String userid;
	private int serviceidx;
	private String replycontents;
	private String replyredate;
	
	
	public int getReplyidx() {
		return replyidx;
	}
	public void setReplyidx(int replyidx) {
		this.replyidx = replyidx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getServiceidx() {
		return serviceidx;
	}
	public void setServiceidx(int serviceidx) {
		this.serviceidx = serviceidx;
	}
	public String getReplycontents() {
		return replycontents;
	}
	public void setReplycontents(String replycontents) {
		this.replycontents = replycontents;
	}
	public String getReplyredate() {
		return replyredate;
	}
	public void setReplyredate(String replyredate) {
		this.replyredate = replyredate;
	}
	
	
}
