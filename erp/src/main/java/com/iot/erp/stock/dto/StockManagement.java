package com.iot.erp.stock.dto;

import org.springframework.stereotype.Component;

@Component
public class StockManagement {

	private int smNo;
	private int purchaseNo;
	private int imcNo;
	private int quantity;
	private int amount;
	private int unitprice;
	private int createUser;
	private String createDate;
	private int modifiedUser;
	private String modifiedDate;
	
	public int getSmNo() {
		return smNo;
	}
	public void setSmNo(int smNo) {
		this.smNo = smNo;
	}
	public int getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(int purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public int getImcNo() {
		return imcNo;
	}
	public void setImcNo(int imcNo) {
		this.imcNo = imcNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(int unitprice) {
		this.unitprice = unitprice;
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
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	@Override
	public String toString() {
		return "StockManagement [smNo=" + smNo + ", purchaseNo=" + purchaseNo + ", imcNo=" + imcNo + ", quantity="
				+ quantity + ", amount=" + amount + ", unitprice=" + unitprice + ", createUser=" + createUser
				+ ", createDate=" + createDate + ", modifiedUser=" + modifiedUser + ", modifiedDate=" + modifiedDate
				+ "]";
	}
	
	
}
