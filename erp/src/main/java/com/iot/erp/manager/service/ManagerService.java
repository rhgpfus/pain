package com.iot.erp.manager.service;

import java.util.List;

import com.iot.erp.manager.dto.Manager;

public interface ManagerService {

	public List<Manager> selectManagerList(Manager manager);
	//사원(담당) 리스트를 받아오는 함수.
	public Manager selectManager(Manager manager);
	//사원(담당) 단일로 받아오는 함수.
	public int insertManager(Manager manager);
	//사원(담당) 신규 등록하는 함수.
	public int deleteManager(Manager manager);
	//사원(담당) 삭제하는 함수.
	public int updateManager(Manager manager);
	//사원(담당) 수정하는 함수.
}
