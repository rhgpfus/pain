package com.iot.erp.manager.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.manager.dto.Manager;

@Repository
public class ManagerDAOImpl extends SqlSessionDaoSupport implements ManagerDAO{

	@Override
	public List<Manager> selectManagerList(Manager manager) {
		return this.getSqlSession().selectList("manager.SELECT_MANAGER" , manager);
		//사원(담당) 리스트.
	}

	@Override
	public Manager selectManager(Manager manager) {
		return this.getSqlSession().selectOne("manager.SELECT_MANAGER" , manager);
		//사원(담당) 단일.
	}

	@Override
	public int insertManager(Manager manager) {
		return this.getSqlSession().insert("manager.INSERT_MANAGER" , manager);
		//사원(담당) 등록.
	}

	@Override
	public int deleteManager(Manager manager) {
		return this.getSqlSession().delete("manager.DELETE_MANAGER" , manager);
		//사원(담당) 삭제.
	}

	@Override
	public int updateManager(Manager manager) {
		return this.getSqlSession().update("manager.UPDATE_MANAGER" , manager);
		//사원(담당) 수정.
	}

}
