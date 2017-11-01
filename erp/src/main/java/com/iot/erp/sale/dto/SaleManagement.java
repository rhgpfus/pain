package com.iot.erp.sale.dto;

import org.springframework.stereotype.Component;

@Component
public class SaleManagement {

	private int saleNo; //int auto_increment primary key comment '판매번호기본키',
	private String saleDate; //varchar(30) comment '판매일자. 신규는 now()로 등록 가능. 수정불가.',
	private int clientNo; //int comment '구매처번호(회사번호와연결,화면에 회사이름)',
	private int itemNo; //int comment '품목번호(품목번호와연결,화면에 제품이름)',
	private int imcNo; //int comment '품목&회사 기본키로 연결,화면에 수량과 총액 받아오기',
	private int managerNo; //int comment '담담장(담당자테이블연결)',
	private int warehouseNo; //int comment '출고창고(창고테이블연결)',
	private int projectNo; //int comment '프로젝트(프로젝트테이블연결)',
	private String receiptStatus; //varchar(100) comment '수령여부(체크)',
	private int createUser; //int comment '입력자(인사관리에서의 이름)',
	private String createDate; //varchar(100) comment '입력일자',
	private int modifiedUser; //int comment '수정자(인사관리에서의 이름)',
	private String modifiedData; //varchar(100) comment '수정일자'
	
	public int getSaleNo() {
		return saleNo;
	}
	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}
	public String getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(String saleDate) {
		this.saleDate = saleDate;
	}
	public int getClientNo() {
		return clientNo;
	}
	public void setClientNo(int clientNo) {
		this.clientNo = clientNo;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
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
	public String getReceiptStatus() {
		return receiptStatus;
	}
	public void setReceiptStatus(String receiptStatus) {
		this.receiptStatus = receiptStatus;
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
		return "SaleManagement [saleNo=" + saleNo + ", saleDate=" + saleDate + ", clientNo=" + clientNo + ", itemNo="
				+ itemNo + ", imcNo=" + imcNo + ", managerNo=" + managerNo + ", warehouseNo=" + warehouseNo
				+ ", projectNo=" + projectNo + ", receiptStatus=" + receiptStatus + ", createUser=" + createUser
				+ ", createDate=" + createDate + ", modifiedUser=" + modifiedUser + ", modifiedData=" + modifiedData
				+ "]";
	}
	
	
}
