package com.iot.erp.hrm.dao;

import java.util.HashMap;
import java.util.List;

import com.iot.erp.hrm.dto.HumanResourceManagement;

public interface HrmDAO {
	
//로그인--------------------------------------------------------------------------------------------------------------------	
	public HumanResourceManagement login(HumanResourceManagement h_resourceManagement);
	
//인사관리--------------------------------------------------------------------------------------------------------------------
	public List<HumanResourceManagement> selectHumanResourceManagementList(HumanResourceManagement h_resourceManagement);
	//인사관리 리스트를 받아오는 함수.
	public HumanResourceManagement selectHumanResourceManagement(HumanResourceManagement h_resourceManagement);
	//인사관리 단일로 받아오는 함수.
	public int insertHumanResourceManagement(HumanResourceManagement h_resourceManagement);
	//인사관리 사원정보 신규 등록하는 함수.
	public int deleteHumanResourceManagement(HumanResourceManagement h_resourceManagement);
	//인사관리 사원정보 삭제하는 함수.
	public int updateHumanResourceManagement(HumanResourceManagement h_resourceManagement);
	//인사관리 사원정보 수정하는 함수.
	


}
