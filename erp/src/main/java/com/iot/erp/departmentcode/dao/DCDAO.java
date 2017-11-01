package com.iot.erp.departmentcode.dao;

import java.util.List;

import com.iot.erp.departmentcode.dto.DepartmentCode;

public interface DCDAO {
	

//부서코드--------------------------------------------------------------------------------------------------------------------
	public List<DepartmentCode> selectHumanDepartmentCodeList(DepartmentCode h_departmentCode);
	//부서코드 리스트를 받아오는 함수.
	public DepartmentCode selectHumanDepartmentCode(DepartmentCode h_departmentCode);
	//부서코드 단일로 받아오는 함수.
	public int insertHumanDepartmentCode(DepartmentCode h_departmentCode);
	//부서코드 부서정보 신규 등록하는 함수.
	public int deleteHumanDepartmentCode(DepartmentCode h_departmentCode);
	//부서코드 부서정보 삭제하는 함수.
	public int updateHumanDepartmentCode(DepartmentCode h_departmentCode);
	//부서코드 부서정보 수정하는 함수.

}
