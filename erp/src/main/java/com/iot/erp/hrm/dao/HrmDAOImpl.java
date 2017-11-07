package com.iot.erp.hrm.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


import com.iot.erp.hrm.dto.HumanResourceManagement;

@Repository
public class HrmDAOImpl extends SqlSessionDaoSupport implements HrmDAO{

//로그인--------------------------------------------------------------------------------------------------------------------	
	public HumanResourceManagement login(HumanResourceManagement h_resourceManagement){
		return this.getSqlSession().selectOne("hrm.LOGIN_HUMANRESOURCEMANAGEMENT",h_resourceManagement);
	}
			
//인사관리----------------------------------------------------------------------------------------------------------------	
	@Override
	public List<HashMap> selectHumanResourceManagementList(HumanResourceManagement h_resourceManagement) {
		return this.getSqlSession().selectList("hrm.SELECT_HRMLIST", h_resourceManagement);
		//인사관리 리스트.
	}
	@Override
	public HumanResourceManagement selectHumanResourceManagement(HumanResourceManagement h_resourceManagement) {
		return this.getSqlSession().selectOne("hrm.SELECT_HRM", h_resourceManagement);
		//인사관리 단일.
	}
	@Override
	public int insertHumanResourceManagement(HumanResourceManagement h_resourceManagement){
		return this.getSqlSession().insert("hrm.INSERT_HUMANRESOURCEMANAGEMENT", h_resourceManagement);
		//인사관리 등록.
	}
	@Override
	public int deleteHumanResourceManagement(HumanResourceManagement h_resourceManagement){
		return this.getSqlSession().delete("hrm.DELETE_HUMANRESOURCEMANAGEMENT", h_resourceManagement);
		//인사관리 삭제.
	}
	@Override
	public int updateHumanResourceManagement(HumanResourceManagement h_resourceManagement){
		return this.getSqlSession().update("hrm.UPDATE_HUMANRESOURCEMANAGEMENT", h_resourceManagement);
		//인사관리 수정.
	}

}
