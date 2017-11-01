package com.iot.erp.rank.dto;

public class Rank {
	
	private int rankNo; //int auto_increment primary key, #직급 번호
	private String rankCode; //varchar(10) not null, #직급 코드
	private String rankName; //varchar(30) not null #직급 명
	
	public int getRankNo() {
		return rankNo;
	}
	public void setRankNo(int rankNo) {
		this.rankNo = rankNo;
	}
	public String getRankCode() {
		return rankCode;
	}
	public void setRankCode(String rankCode) {
		this.rankCode = rankCode;
	}
	public String getRankName() {
		return rankName;
	}
	public void setRankName(String rankName) {
		this.rankName = rankName;
	}
	@Override
	public String toString() {
		return "HumanRank [rankNo=" + rankNo + ", rankCode=" + rankCode + ", rankName=" + rankName + "]";
	}

}
