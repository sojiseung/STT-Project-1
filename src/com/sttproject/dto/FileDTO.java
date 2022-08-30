package com.sttproject.dto;

public class FileDTO {
	private int	serviceidx;
	private String uploadFilename;
	private String saveFilename;
	private int projectidx;
	
	public int getProjectidx() {
		return projectidx;
	}
	public void setProjectidx(int projectidx) {
		this.projectidx = projectidx;
	}
	public int getServiceidx() {
		return serviceidx;
	}
	public String getUploadFilename() {
		return uploadFilename;
	}
	public String getSaveFilename() {
		return saveFilename;
	}
	public void setServiceidx(int serviceidx) {
		this.serviceidx = serviceidx;
	}
	public void setUploadFilename(String uploadFilename) {
		this.uploadFilename = uploadFilename;
	}
	public void setSaveFilename(String saveFilename) {
		this.saveFilename = saveFilename;
	}
	
	
	
	


}
