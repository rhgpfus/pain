package com.iot.erp.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.manager.dao.ManagerDAO;
import com.iot.erp.manager.dto.Manager;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	ManagerDAO mDAO;
	
	@Override
	public List<Manager> selectManagerList(Manager manager) {
		return mDAO.selectManagerList(manager);
		//사원(담당) 리스트.
	}

	@Override
	public Manager selectManager(Manager manager) {
		return mDAO.selectManager(manager);
		//사원(담당) 단일.
	}

	@Override
	public int insertManager(Manager manager) {
		return mDAO.insertManager(manager);
		//사원(담당) 등록.
	}

	@Override
	public int deleteManager(Manager manager) {
		return mDAO.deleteManager(manager);
		//사원(담당) 삭제.
	}

	@Override
	public int updateManager(Manager manager) {
		return mDAO.updateManager(manager);
		//사원(담당) 수정.
	}

}
