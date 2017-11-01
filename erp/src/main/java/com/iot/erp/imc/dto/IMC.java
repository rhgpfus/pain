package com.iot.erp.imc.dto;

import org.springframework.stereotype.Component;

@Component
public class IMC {

	private int imcNo;
	private int purchaseNo;
	private int itemNo;
	private int clientNo;
	private int quantity;
	private int amount;
	private int unitprice;
	private String createDate;
	private String modifiedDate;
	
	public int getImcNo() {
		return imcNo;
	}
	public void setImcNo(int imcNo) {
		this.imcNo = imcNo;
	}
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
	public int getClientNo() {
		return clientNo;
	}
	public void setClientNo(int clientNo) {
		this.clientNo = clientNo;
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
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	@Override
	public String toString() {
		return "IMC [imcNo=" + imcNo + ", purchaseNo=" + purchaseNo + ", itemNo=" + itemNo + ", clientNo=" + clientNo
				+ ", quantity=" + quantity + ", amount=" + amount + ", unitprice=" + unitprice + ", createDate="
				+ createDate + ", modifiedDate=" + modifiedDate + "]";
	}
	
	
}
