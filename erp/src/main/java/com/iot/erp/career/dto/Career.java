package com.iot.erp.career.dto;

import org.springframework.stereotype.Component;

@Component
public class Career {
	
	private int careerNo; //int auto_increment primary key, #입사구분 번호
	private String careerCode; //varchar(10) not null, #입사구분 코드
	private String careerName; //varchar(30) not null #입사구분 명
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	public String getCareerCode() {
		return careerCode;
	}
	public void setCareerCode(String careerCode) {
		this.careerCode = careerCode;
	}
	public String getCareerName() {
		return careerName;
	}
	public void setCareerName(String careerName) {
		this.careerName = careerName;
	}
	@Override
	public String toString() {
		return "Career [careerNo=" + careerNo + ", careerCode=" + careerCode + ", careerName=" + careerName + "]";
	}
	
	

}
