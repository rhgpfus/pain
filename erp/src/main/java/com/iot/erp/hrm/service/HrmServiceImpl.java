package com.iot.erp.hrm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.hrm.dao.HrmDAO;
import com.iot.erp.hrm.dto.HumanResourceManagement;

@Service
public class HrmServiceImpl implements HrmService {

	@Autowired
	HrmDAO hDao;
	
//로그인--------------------------------------------------------------------------------------------------------------------
	@Override
	public HumanResourceManagement login(HumanResourceManagement h_resourceManagement){
		HumanResourceManagement rHrm = hDao.login(h_resourceManagement);
		if(rHrm != null && rHrm.getHumanPwd().equals(h_resourceManagement.getHumanPwd())){
			return rHrm;
		}
		return null;
	}
	
	
//인사관리-----------------------------------------------------------------------------------------------------------------------------------
	@Override
	public List<HumanResourceManagement> selectHumanResourceManagementList(HumanResourceManagement h_resourceManagement){
		return hDao.selectHumanResourceManagementList(h_resourceManagement);
		//인사관리 리스트.
	}
	@Override
	public HumanResourceManagement selectHumanResourceManagement(HumanResourceManagement h_resourceManagement) {
		return hDao.selectHumanResourceManagement(h_resourceManagement);
		//인사관리 단일.
	}
	@Override
	public int insertHumanResourceManagement(HumanResourceManagement[] hrmList){
		int result = 0;
		for(HumanResourceManagement hrm : hrmList){
			result += hDao.insertHumanResourceManagement(hrm);
		}
		return result;
		//인사관리 등록.
	}

	public int insertHumanResourceManagement(HumanResourceManagement hrm) {
		return hDao.insertHumanResourceManagement(hrm);
	}
	@Override
	public int deleteHumanResourceManagement(HumanResourceManagement hrm){
		return hDao.deleteHumanResourceManagement(hrm);
		//인사관리 삭제.
	}
	@Override
	public int updateHumanResourceManagement(HumanResourceManagement hrm){
		return hDao.updateHumanResourceManagement(hrm);
		//인사관리 수정.
	}
	

}
