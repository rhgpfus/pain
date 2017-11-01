package com.iot.erp.departmentcode.dto;

import org.springframework.stereotype.Component;

@Component
public class DepartmentCode {
	
	private int departmentCodeNo; //int auto_increment primary key, #부서코드 번호
	private String departmentCode; //varchar(10) not null, #부서 코드
	private String departmentName; //varchar(30) not null #부서 명
	
	public int getDepartmentCodeNo() {
		return departmentCodeNo;
	}
	public void setDepartmentCodeNo(int departmentCodeNo) {
		this.departmentCodeNo = departmentCodeNo;
	}
	public String getDepartmentCode() {
		return departmentCode;
	}
	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	@Override
	public String toString() {
		return "DepartmentCode [departmentCodeNo=" + departmentCodeNo + ", departmentCode=" + departmentCode
				+ ", departmentName=" + departmentName + "]";
	}
	
	
	
	
}
