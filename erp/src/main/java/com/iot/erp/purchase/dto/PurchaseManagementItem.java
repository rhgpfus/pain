package com.iot.erp.purchase.dto;

public class PurchaseManagementItem {

	private int pmItemNo;
	private int purchaseNo; //int auto_increment primary key comment '구매번호기본키',
	private int itemNo; //int comment '품목번호(품목번호와연결,화면에 제품이름)',
	private String deliveryDate; //varchar(30) comment '입고일자/납품일자. 수정가능.',
	private int imcNo; //int comment '품목&회사 기본키로 연결,화면에 수량과 총액 받아오기',
	private int managerNo; //int comment '담담장(담당자테이블연결)',
	private int warehouseNo; //int comment '입고될창고(창고테이블연결)',
	private int projectNo; //int comment '프로젝트(프로젝트테이블연결)',
	private String purchaseStatus; //varchar(100) comment '종결여부(1.입고중 2.배송중 3.취소 4.반품)',
	private int createUser; //int comment '입력자(인사관리에서의 이름)',
	private String createDate; //varchar(100) comment '입력일자',
	private int modifiedUser; //int comment '수정자(인사관리에서의 이름)',
	private String modifiedData; //varchar(100) comment '수정일자'
	
	public int getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(int purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public int getImcNo() {
		return imcNo;
	}
	public void setImcNo(int imcNo) {
		this.imcNo = imcNo;
	}
	public int getManagerNo() {
		return managerNo;
	}
	public void setManagerNo(int managerNo) {
		this.managerNo = managerNo;
	}
	public int getWarehouseNo() {
		return warehouseNo;
	}
	public void setWarehouseNo(int warehouseNo) {
		this.warehouseNo = warehouseNo;
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public String getPurchaseStatus() {
		return purchaseStatus;
	}
	public void setPurchaseStatus(String purchaseStatus) {
		this.purchaseStatus = purchaseStatus;
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
	public int getPmItemNo() {
		return pmItemNo;
	}
	public void setPmItemNo(int pmItemNo) {
		this.pmItemNo = pmItemNo;
	}
	@Override
	public String toString() {
		return "PurchaseManagementItem [pmItemNo=" + pmItemNo + ", purchaseNo=" + purchaseNo + ", itemNo=" + itemNo
				+ ", deliveryDate=" + deliveryDate + ", imcNo=" + imcNo + ", managerNo=" + managerNo + ", warehouseNo="
				+ warehouseNo + ", projectNo=" + projectNo + ", purchaseStatus=" + purchaseStatus + ", createUser="
				+ createUser + ", createDate=" + createDate + ", modifiedUser=" + modifiedUser + ", modifiedData="
				+ modifiedData + "]";
	}
	
	
	
	
}
