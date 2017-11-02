package com.iot.erp.hrm.dto;

import org.springframework.stereotype.Component;

@Component
public class HumanResourceManagement {

	private int humanNo; // int auto_increment primary key, #사원번호
	private String humanKorName; // varchar(30), #한국이름
	private String humanId; // varchar(30), #아이디
	private String humanPwd; // varchar(30), #비밀번호
	private String humanEngName; // varchar(30), #영어이름
	private String humanResidentNumber; // varchar(30), #주민등록번호
	private String humanGenerative; // varchar(5), #세대주여부

	private String humanEnteringDate; // varchar(30), #입사일자
	private int careerNo;
	private int rankNo;
	private int positionNo;
	private String humanLeaveDate; // varchar(30), #퇴사일자
	private String humanLeaveReason; // varchar(255), #퇴사사유
	private String humanHomeNum; // varchar(30), #집전화번호
	private String humanPhoneNum; // varchar(30), #폰번호
	private int humanPassportNumber; // int, #여권번호
	private String humanEmail; // varchar(50), #이메일
	private int departmentCodeNo;
	private int projectNo;
	private String humanSecondLanguage; // varchar(255), #제2외국어
	private int bankNo;
	private String humanAccountNumber; // varchar(30), #계좌번호
	private String humanAccountName; // varchar(30), #예금주
	private String humanAddress; // varchar(255), #주소
	private String humanPobbit; // varchar(30), #취미
	private String humanSpacialty; // varchar(30), #특기
	private String humanPicture; // varchar(2), #사진 0:사진없음 1:사진있음
	private String humanAttachmentFile; // varchar(2), #첨부파일 0: 첨부파일없음 1:첨부파일있음
	private String humanIndividualFile; // varchar(2), #개인파일 0: 개인파일없음 1:개인파일있음
	private String humanEtc; // varchar(255) #기타
	private String humanAuthority; // varchar(255) #유저 권한

	@Override
	public String toString() {
		return "HumanResourceManagement [humanNo=" + humanNo + ", humanKorName=" + humanKorName + ", humanId=" + humanId
				+ ", humanPwd=" + humanPwd + ", humanEngName=" + humanEngName + ", humanResidentNumber="
				+ humanResidentNumber + ", humanGenerative=" + humanGenerative + ", humanEnteringDate="
				+ humanEnteringDate + ", careerNo=" + careerNo + ", rankNo=" + rankNo + ", positionNo=" + positionNo
				+ ", humanLeaveDate=" + humanLeaveDate + ", humanLeaveReason=" + humanLeaveReason + ", humanHomenum="
				+ humanHomeNum + ", humanPhonenum=" + humanPhoneNum + ", humanPassportNumber=" + humanPassportNumber
				+ ", humanEmail=" + humanEmail + ", departmentCodeNo=" + departmentCodeNo + ", projectNo=" + projectNo
				+ ", humanSecondLanguage=" + humanSecondLanguage + ", bankNo=" + bankNo + ", humanAccountNumber="
				+ humanAccountNumber + ", humanAccountName=" + humanAccountName + ", humanAddress=" + humanAddress
				+ ", humanPobbit=" + humanPobbit + ", humanSpacialty=" + humanSpacialty + ", humanPicture="
				+ humanPicture + ", humanAttachmentFile=" + humanAttachmentFile + ", humanIndividualFile="
				+ humanIndividualFile + ", humanEtc=" + humanEtc + ", humanAuthority=" + humanAuthority + "]";
	}

	public int getHumanNo() {
		return humanNo;
	}

	public void setHumanNo(int humanNo) {
		this.humanNo = humanNo;
	}

	public String getHumanKorName() {
		return humanKorName;
	}

	public void setHumanKorName(String humanKorName) {
		this.humanKorName = humanKorName;
	}

	public String getHumanId() {
		return humanId;
	}

	public void setHumanId(String humanId) {
		this.humanId = humanId;
	}

	public String getHumanPwd() {
		return humanPwd;
	}

	public void setHumanPwd(String humanPwd) {
		this.humanPwd = humanPwd;
	}

	public String getHumanEngName() {
		return humanEngName;
	}

	public void setHumanEngName(String humanEngName) {
		this.humanEngName = humanEngName;
	}

	public String getHumanResidentNumber() {
		return humanResidentNumber;
	}

	public void setHumanResidentNumber(String humanResidentNumber) {
		this.humanResidentNumber = humanResidentNumber;
	}

	public String getHumanGenerative() {
		return humanGenerative;
	}

	public void setHumanGenerative(String humanGenerative) {
		this.humanGenerative = humanGenerative;
	}

	public String getHumanEnteringDate() {
		return humanEnteringDate;
	}

	public void setHumanEnteringDate(String humanEnteringDate) {
		this.humanEnteringDate = humanEnteringDate;
	}

	public int getCareerNo() {
		return careerNo;
	}

	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}

	public int getRankNo() {
		return rankNo;
	}

	public void setRankNo(int rankNo) {
		this.rankNo = rankNo;
	}

	public int getPositionNo() {
		return positionNo;
	}

	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}

	public String getHumanLeaveDate() {
		return humanLeaveDate;
	}

	public void setHumanLeaveDate(String humanLeaveDate) {
		this.humanLeaveDate = humanLeaveDate;
	}

	public String getHumanLeaveReason() {
		return humanLeaveReason;
	}

	public void setHumanLeaveReason(String humanLeaveReason) {
		this.humanLeaveReason = humanLeaveReason;
	}

	public String getHumanHomeNum() {
		return humanHomeNum;
	}

	public void setHumanHomeNum(String humanHomeNum) {
		this.humanHomeNum = humanHomeNum;
	}

	public String getHumanPhoneNum() {
		return humanPhoneNum;
	}

	public void setHumanPhoneNum(String humanPhoneNum) {
		this.humanPhoneNum = humanPhoneNum;
	}

	public int getHumanPassportNumber() {
		return humanPassportNumber;
	}

	public void setHumanPassportNumber(int humanPassportNumber) {
		this.humanPassportNumber = humanPassportNumber;
	}

	public String getHumanEmail() {
		return humanEmail;
	}

	public void setHumanEmail(String humanEmail) {
		this.humanEmail = humanEmail;
	}

	public int getDepartmentCodeNo() {
		return departmentCodeNo;
	}

	public void setDepartmentCodeNo(int departmentCodeNo) {
		this.departmentCodeNo = departmentCodeNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public String getHumanSecondLanguage() {
		return humanSecondLanguage;
	}

	public void setHumanSecondLanguage(String humanSecondLanguage) {
		this.humanSecondLanguage = humanSecondLanguage;
	}

	public int getBankNo() {
		return bankNo;
	}

	public void setBankNo(int bankNo) {
		this.bankNo = bankNo;
	}

	public String getHumanAccountNumber() {
		return humanAccountNumber;
	}

	public void setHumanAccountNumber(String humanAccountNumber) {
		this.humanAccountNumber = humanAccountNumber;
	}

	public String getHumanAccountName() {
		return humanAccountName;
	}

	public void setHumanAccountName(String humanAccountName) {
		this.humanAccountName = humanAccountName;
	}

	public String getHumanAddress() {
		return humanAddress;
	}

	public void setHumanAddress(String humanAddress) {
		this.humanAddress = humanAddress;
	}

	public String getHumanPobbit() {
		return humanPobbit;
	}

	public void setHumanPobbit(String humanPobbit) {
		this.humanPobbit = humanPobbit;
	}

	public String getHumanSpacialty() {
		return humanSpacialty;
	}

	public void setHumanSpacialty(String humanSpacialty) {
		this.humanSpacialty = humanSpacialty;
	}

	public String getHumanPicture() {
		return humanPicture;
	}

	public void setHumanPicture(String humanPicture) {
		this.humanPicture = humanPicture;
	}

	public String getHumanAttachmentFile() {
		return humanAttachmentFile;
	}

	public void setHumanAttachmentFile(String humanAttachmentFile) {
		this.humanAttachmentFile = humanAttachmentFile;
	}

	public String getHumanIndividualFile() {
		return humanIndividualFile;
	}

	public void setHumanIndividualFile(String humanIndividualFile) {
		this.humanIndividualFile = humanIndividualFile;
	}

	public String getHumanEtc() {
		return humanEtc;
	}

	public void setHumanEtc(String humanEtc) {
		this.humanEtc = humanEtc;
	}

	public String getHumanAuthority() {
		return humanAuthority;
	}

	public void setHumanAuthority(String humanAuthority) {
		this.humanAuthority = humanAuthority;
	}

}
