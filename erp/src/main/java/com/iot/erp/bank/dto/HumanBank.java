package com.iot.erp.bank.dto;

public class HumanBank {
	
	private int bankNo;
	private String bankCode;
	private String bankName;

	@Override
	public String toString() {
		return "HumanBank [bankNo=" + bankNo + ", bankCode=" + bankCode + ", bankName=" + bankName + "]";
	}

	public int getBankNo() {
		return bankNo;
	}

	public void setBankNo(int bankNo) {
		this.bankNo = bankNo;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	
	
}
