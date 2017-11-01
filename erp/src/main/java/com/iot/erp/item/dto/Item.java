package com.iot.erp.item.dto;

import org.springframework.stereotype.Component;

@Component
public class Item {

	private int itemNo; //int auto_increment primary key comment '품목기본키',
	private String img; //varchar(255) comment '이미지',
	private String itemCode; //varchar(30) comment '품목코드',
	private String itemName; //varchar(30) comment '품목명',
	private int warehousingCost; //int comment '입고단가',
	private int unstoringCost; //int comment '출고단가',
	private String itemDivision; //varchar(255) comment '1.원재료 2.부재료 3.제품 4.반제품 5.상품',
	private int createUser; //int comment '입력자(인사관리에서의 인사기본키와 조인)',
	private String createDate; //varchar(100) comment '입력일자',
	private int modifiedUser; //int comment '수정자(인사관리에서의 인사기본키와 조인)',
	private String modifiedData; //varchar(100) comment '수정일자'
	
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getWarehousingCost() {
		return warehousingCost;
	}
	public void setWarehousingCost(int warehousingCost) {
		this.warehousingCost = warehousingCost;
	}
	public int getUnstoringCost() {
		return unstoringCost;
	}
	public void setUnstoringCost(int unstoringCost) {
		this.unstoringCost = unstoringCost;
	}
	public String getItemDivision() {
		return itemDivision;
	}
	public void setItemDivision(String itemDivision) {
		this.itemDivision = itemDivision;
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
		return "Item [itemNo=" + itemNo + ", img=" + img + ", itemCode=" + itemCode + ", itemName=" + itemName
				+ ", warehousingCost=" + warehousingCost + ", unstoringCost=" + unstoringCost + ", itemDivision="
				+ itemDivision + ", createUser=" + createUser + ", createDate=" + createDate + ", modifiedUser="
				+ modifiedUser + ", modifiedData=" + modifiedData + "]";
	}
	
	
}
