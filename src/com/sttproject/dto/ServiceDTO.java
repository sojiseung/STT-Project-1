package com.sttproject.dto;

public class ServiceDTO {
	private int serviceidx;
	private int expertidx;
	private int useridx;
	private String servicetitle;
	private int serviceprice;
	private int serviceperiod;
	private String serviceinfo;
	public int getServiceidx() {
		return serviceidx;
	}
	public void setServiceidx(int serviceidx) {
		this.serviceidx = serviceidx;
	}
	public int getExpertidx() {
		return expertidx;
	}
	public void setExpertidx(int expertidx) {
		this.expertidx = expertidx;
	}
	public int getUseridx() {
		return useridx;
	}
	public void setUseridx(int useridx) {
		this.useridx = useridx;
	}
	public String getServicetitle() {
		return servicetitle;
	}
	public void setServicetitle(String servicetitle) {
		this.servicetitle = servicetitle;
	}
	public int getServiceprice() {
		return serviceprice;
	}
	public void setServiceprice(int serviceprice) {
		this.serviceprice = serviceprice;
	}
	public int getServiceperiod() {
		return serviceperiod;
	}
	public void setServiceperiod(int serviceperiod) {
		this.serviceperiod = serviceperiod;
	}
	public String getServiceinfo() {
		return serviceinfo;
	}
	public void setServiceinfo(String serviceinfo) {
		this.serviceinfo = serviceinfo;
	}
	
}
