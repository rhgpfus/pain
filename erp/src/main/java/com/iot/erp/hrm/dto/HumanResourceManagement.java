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
	private String humanLeaveDate; // varchar(30), #퇴사일자
	private String humanLeaveReason; // varchar(255), #퇴사사유
	private String humanHomeNum; // varchar(30), #집전화번호
	private String humanPhoneNum; // varchar(30), #폰번호
	private int humanPassportNumber; // int, #여권번호
	private String humanEmail; // varchar(50), #이메일
	private String humanSecondLanguage; // varchar(255), #제2외국어
	private String humanAccountNumber; // varchar(30), #계좌번호
	private String humanAccountName; // varchar(30), #예금주
	private String humanAddress; // varchar(255), #주소
	private String humanPicture; // varchar(2), #사진 0:사진없음 1:사진있음
	private String humanAttachmentFile; // varchar(2), #첨부파일 0: 첨부파일없음 1:첨부파일있음
	private String humanIndividualFile; // varchar(2), #개인파일 0: 개인파일없음 1:개인파일있음
	private String humanEtc; // varchar(255) #기타
	private String humanAuthority; // varchar(255) #유저 권한

	private int careerNo; //입사구분 기본키
	private String careerName; //입사구분명
	private String careerCode; //입사구분코드
	
	private int rankNo; //직급 기본키
	private String rankName; //직급명(리스트 화면에 보일 컬럼)
	private String rankCode; //직급코드
	
	private int positionNo; //직책 기본키
	private String positionName; //직책명
	private String positionCode; //직책코드
	
	private int departmentCodeNo; //부서코드 기본키
	private String departmentName; //부서코드명(화면에 보일 컬럼)
	private String departmentCode; //부서코드
	
	private int projectNo; //프로젝트 기본키
	private String projectName; //프로젝트명
	private String projectCode; //프로젝트코드
	
	private int bankNo; //은행 기본키
	private String bankName; //은행명
	private String bankCode; //은행코드
	
	
	
	
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
	public String getHumanSecondLanguage() {
		return humanSecondLanguage;
	}
	public void setHumanSecondLanguage(String humanSecondLanguage) {
		this.humanSecondLanguage = humanSecondLanguage;
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
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	public String getCareerName() {
		return careerName;
	}
	public void setCareerName(String careerName) {
		this.careerName = careerName;
	}
	public String getCareerCode() {
		return careerCode;
	}
	public void setCareerCode(String careerCode) {
		this.careerCode = careerCode;
	}
	public int getRankNo() {
		return rankNo;
	}
	public void setRankNo(int rankNo) {
		this.rankNo = rankNo;
	}
	public String getRankName() {
		return rankName;
	}
	public void setRankName(String rankName) {
		this.rankName = rankName;
	}
	public String getRankCode() {
		return rankCode;
	}
	public void setRankCode(String rankCode) {
		this.rankCode = rankCode;
	}
	public int getPositionNo() {
		return positionNo;
	}
	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public String getPositionCode() {
		return positionCode;
	}
	public void setPositionCode(String positionCode) {
		this.positionCode = positionCode;
	}
	public int getDepartmentCodeNo() {
		return departmentCodeNo;
	}
	public void setDepartmentCodeNo(int departmentCodeNo) {
		this.departmentCodeNo = departmentCodeNo;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getDepartmentCode() {
		return departmentCode;
	}
	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public int getBankNo() {
		return bankNo;
	}
	public void setBankNo(int bankNo) {
		this.bankNo = bankNo;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankCode() {
		return bankCode;
	}
	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}
	@Override
	public String toString() {
		return "HumanResourceManagement [humanNo=" + humanNo + ", humanKorName=" + humanKorName + ", humanId=" + humanId
				+ ", humanPwd=" + humanPwd + ", humanEngName=" + humanEngName + ", humanResidentNumber="
				+ humanResidentNumber + ", humanGenerative=" + humanGenerative + ", humanEnteringDate="
				+ humanEnteringDate + ", humanLeaveDate=" + humanLeaveDate + ", humanLeaveReason=" + humanLeaveReason
				+ ", humanHomeNum=" + humanHomeNum + ", humanPhoneNum=" + humanPhoneNum + ", humanPassportNumber="
				+ humanPassportNumber + ", humanEmail=" + humanEmail + ", humanSecondLanguage=" + humanSecondLanguage
				+ ", humanAccountNumber=" + humanAccountNumber + ", humanAccountName=" + humanAccountName
				+ ", humanAddress=" + humanAddress + ", humanPicture=" + humanPicture + ", humanAttachmentFile="
				+ humanAttachmentFile + ", humanIndividualFile=" + humanIndividualFile + ", humanEtc=" + humanEtc
				+ ", humanAuthority=" + humanAuthority + ", careerNo=" + careerNo + ", careerName=" + careerName
				+ ", careerCode=" + careerCode + ", rankNo=" + rankNo + ", rankName=" + rankName + ", rankCode="
				+ rankCode + ", positionNo=" + positionNo + ", positionName=" + positionName + ", positionCode="
				+ positionCode + ", departmentCodeNo=" + departmentCodeNo + ", departmentName=" + departmentName
				+ ", departmentCode=" + departmentCode + ", projectNo=" + projectNo + ", projectName=" + projectName
				+ ", projectCode=" + projectCode + ", bankNo=" + bankNo + ", bankName=" + bankName + ", bankCode="
				+ bankCode + "]";
	}
	
	
}
