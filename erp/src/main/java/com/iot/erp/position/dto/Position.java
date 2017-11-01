package com.iot.erp.position.dto;

public class Position {
	
	private int positionNo; //int auto_increment primary key, #직책 번호
	private String positionCode; //varchar(10) not null, #직책 코드
	private String positionName; //varchar(30) not null #직책 명
	public int getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}
	public String getPositionCode() {
		return positionCode;
	}
	public void setPositionCode(String positionCode) {
		this.positionCode = positionCode;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	@Override
	public String toString() {
		return "Position [positionNo=" + positionNo + ", positionCode=" + positionCode + ", positionName="
				+ positionName + "]";
	}
	
	
	
	
	
}
