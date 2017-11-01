package com.iot.erp.manager.dto;

import org.springframework.stereotype.Component;

@Component
public class Manager {

	private int managerNo; //int auto_increment primary key comment '사원(담당)기본키',
	private String managerCode; //varchar(30) comment '사원(담당)코드',
	private String managerName; //varchar(30) comment '사원(담당)명',
	private String codeMenu; //varchar(30) comment '코드사용메뉴(체크리스트 1.회계 2.구매 3.판매 4.기타 5.A/S 로 구분)',
	private String etc; //varchar(255) comment '적요&기타'
	
	public int getManagerNo() {
		return managerNo;
	}
	public void setManagerNo(int managerNo) {
		this.managerNo = managerNo;
	}
	public String getManagerCode() {
		return managerCode;
	}
	public void setManagerCode(String managerCode) {
		this.managerCode = managerCode;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getCodeMenu() {
		return codeMenu;
	}
	public void setCodeMenu(String codeMenu) {
		this.codeMenu = codeMenu;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	@Override
	public String toString() {
		return "Manager [managerNo=" + managerNo + ", managerCode=" + managerCode + ", managerName=" + managerName
				+ ", codeMenu=" + codeMenu + ", etc=" + etc + "]";
	}
	
	
}
