package com.iot.erp.departmentcode.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.departmentcode.dto.DepartmentCode;

@Repository
public class DCDAOImpl extends SqlSessionDaoSupport implements DCDAO{


//부서코드--------------------------------------------------------------------------------------------------------------
	@Override
	public List<DepartmentCode> selectHumanDepartmentCodeList(DepartmentCode h_departmentCode) {
		return this.getSqlSession().selectList("dc.SELECT_DCLIST", h_departmentCode);
		//부서코드 리스트.
	}
	@Override
	public DepartmentCode selectHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return this.getSqlSession().selectOne("dc.SELECT_DCLIST", h_departmentCode);
		//부서코드 단일.
	}
	@Override
	public int insertHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return this.getSqlSession().insert("dc.INSERT_DC", h_departmentCode);
		//부서코드 등록.
	}
	@Override
	public int deleteHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return this.getSqlSession().delete("dc.DELETE_DC", h_departmentCode);
		//부서코드 삭제.
	}
	@Override
	public int updateHumanDepartmentCode(DepartmentCode h_departmentCode) {
		return this.getSqlSession().update("dc.UPDATE_DC", h_departmentCode);
		//부서코드 수정.
	}


}
