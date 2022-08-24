package com.sttproject.dto;

public class OrderDTO {
	private int orderidx;
	private int useridx; 
	private int serviceidx; 
	private String servicetitle;
	private int servicecnt;
	private String serviceperiod;
	private int serviceprice;
	private int usercash;
	
	
	public int getOrderidx() {
		return orderidx;
	}
	public void setOrderidx(int orderidx) {
		this.orderidx = orderidx;
	}
	public int getUseridx() {
		return useridx;
	}
	public void setUseridx(int useridx) {
		this.useridx = useridx;
	}
	public int getServiceidx() {
		return serviceidx;
	}
	public void setServiceidx(int serviceidx) {
		this.serviceidx = serviceidx;
	}
	public String getServicetitle() {
		return servicetitle;
	}
	public void setServicetitle(String servicetitle) {
		this.servicetitle = servicetitle;
	}
	public int getServicecnt() {
		return servicecnt;
	}
	public void setServicecnt(int servicecnt) {
		this.servicecnt = servicecnt;
	}
	public String getServiceperiod() {
		return serviceperiod;
	}
	public void setServiceperiod(String serviceperiod) {
		this.serviceperiod = serviceperiod;
	}
	public int getServiceprice() {
		return serviceprice;
	}
	public void setServiceprice(int serviceprice) {
		this.serviceprice = serviceprice;
	}
	public int getUsercash() {
		return usercash;
	}
	public void setUsercash(int usercash) {
		this.usercash = usercash;
	}

	
	
	
}
