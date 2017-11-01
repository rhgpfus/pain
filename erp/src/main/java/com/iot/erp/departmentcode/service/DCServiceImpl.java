package com.iot.erp.departmentcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.departmentcode.dao.DCDAO;
import com.iot.erp.departmentcode.dto.DepartmentCode;
import com.iot.erp.hrm.dto.HumanResourceManagement;

@Service
public class DCServiceImpl implements DCService {

	@Autowired
	DCDAO dcDao;
	

//부서코드-----------------------------------------------------------------------------------------------------------------------------------
	@Override
	public List<DepartmentCode> selectHumanDepartmentCodeList(DepartmentCode h_departmentCode) {
		return dcDao.selectHumanDepartmentCodeList(h_departmentCode);
		//부서코드 리스트.
	}
	@Override
	public DepartmentCode selectHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return dcDao.selectHumanDepartmentCode(h_departmentCode);
		//부서코드 단일.
	}
	@Override
	public int insertHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return dcDao.insertHumanDepartmentCode(h_departmentCode);
		//부서코드 등록.
	}
	@Override
	public int deleteHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return dcDao.deleteHumanDepartmentCode(h_departmentCode);
		//부서코드 삭제.
	}
	@Override
	public int updateHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return dcDao.updateHumanDepartmentCode(h_departmentCode);
		//부서코드 수정.
	}

}
