package com.iot.erp.project.dto;

public class Project {
	
	private int projectNo; //int auto_increment primary key, #프로젝트 번호
	private String projectCode; //varchar(10) not null, #프로젝트 코드
	private String projectName; //varchar(30) not null #프로젝트 명
	
	@Override
	public String toString() {
		return "Project [projectNo=" + projectNo + ", projectCode=" + projectCode + ", projectName=" + projectName
				+ "]";
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	

}
