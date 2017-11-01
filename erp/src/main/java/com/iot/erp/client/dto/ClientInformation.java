package com.iot.erp.client.dto;

public class ClientInformation {
	
	private int clientNo;
	private String clientCode;
	private String homePage;
	private String bank;
	private String clientName;
	private String representAtives;
	private String sectors;
	private String phoneNumber;
	private String cellphoneNumber;
	private String address;
	private int managerNo;
	private String email;
	private int createUser;
	private String createDate;
	private int modifiedUser;
	private String modifiedData;
	public int getClientNo() {
		return clientNo;
	}
	public void setClientNo(int clientNo) {
		this.clientNo = clientNo;
	}
	public String getClientCode() {
		return clientCode;
	}
	public void setClientCode(String clientCode) {
		this.clientCode = clientCode;
	}
	public String getHomePage() {
		return homePage;
	}
	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getRepresentAtives() {
		return representAtives;
	}
	public void setRepresentAtives(String representAtives) {
		this.representAtives = representAtives;
	}
	public String getSectors() {
		return sectors;
	}
	public void setSectors(String sectors) {
		this.sectors = sectors;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getCellphoneNumber() {
		return cellphoneNumber;
	}
	public void setCellphoneNumber(String cellphoneNumber) {
		this.cellphoneNumber = cellphoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getManagerNo() {
		return managerNo;
	}
	public void setManagerNo(int managerNo) {
		this.managerNo = managerNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCreateUser() {
		return createUser;
	}
	public void setCreateUser(int createUser) {
		this.createUser = createUser;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getModifiedUser() {
		return modifiedUser;
	}
	public void setModifiedUser(int modifiedUser) {
		this.modifiedUser = modifiedUser;
	}
	public String getModifiedData() {
		return modifiedData;
	}
	public void setModifiedData(String modifiedData) {
		this.modifiedData = modifiedData;
	}
	@Override
	public String toString() {
		return "ClientInformation [clientNo=" + clientNo + ", clientCode=" + clientCode + ", homePage=" + homePage
				+ ", bank=" + bank + ", clientName=" + clientName + ", representAtives=" + representAtives
				+ ", sectors=" + sectors + ", phoneNumber=" + phoneNumber + ", cellphoneNumber=" + cellphoneNumber
				+ ", address=" + address + ", managerNo=" + managerNo + ", email=" + email + ", createUser="
				+ createUser + ", createDate=" + createDate + ", modifiedUser=" + modifiedUser + ", modifiedData="
				+ modifiedData + "]";
	}
	
	

}
