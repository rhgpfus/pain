package com.iot.erp.warehouse.dto;

public class WarehouseManagement {

	private int warehouseNo; //int auto_increment primary key comment '창고기본키',
	private String division; //varchar(30) comment '구분(라디오버튼 1.창고 2.공장 3.외주공장)',
	private String warehouseCode; //varchar(30) comment '창고코드',
	private String warehouseName; //varchar(100) comment '창고이름',
	private String warehouseAddress; //varchar(100) comment '창고주소',
	private int createUser; //int comment '입력자(인사관리에서의 이름)',
	private String createDate; //varchar(100) comment '입력일자',
	private int modifiedUser; //int comment '수정자(인사관리에서의 이름)',
	private String modifiedData; //varchar(100) comment '수정일자'
	
	public int getWarehouseNo() {
		return warehouseNo;
	}
	public void setWarehouseNo(int warehouseNo) {
		this.warehouseNo = warehouseNo;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getWarehouseCode() {
		return warehouseCode;
	}
	public void setWarehouseCode(String warehouseCode) {
		this.warehouseCode = warehouseCode;
	}
	public String getWarehouseName() {
		return warehouseName;
	}
	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}
	public String getWarehouseAddress() {
		return warehouseAddress;
	}
	public void setWarehouseAddress(String warehouseAddress) {
		this.warehouseAddress = warehouseAddress;
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
		return "WarehouseManagement [warehouseNo=" + warehouseNo + ", division=" + division + ", warehouseCode="
				+ warehouseCode + ", warehouseName=" + warehouseName + ", warehouseAddress=" + warehouseAddress
				+ ", createUser=" + createUser + ", createDate=" + createDate + ", modifiedUser=" + modifiedUser
				+ ", modifiedData=" + modifiedData + "]";
	}
	
	
}
