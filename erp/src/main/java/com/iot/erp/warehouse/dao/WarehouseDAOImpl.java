package com.iot.erp.warehouse.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

import com.iot.erp.warehouse.dto.WarehouseManagement;
@Service
public class WarehouseDAOImpl extends SqlSessionDaoSupport implements WarehouseDAO{

	@Override
	public WarehouseManagement selectWarehouseManagement(WarehouseManagement wm) {
		return this.getSqlSession().selectOne("warehouse.SELECT_WAREHOUSE",wm);
	}

	@Override
	public List<WarehouseManagement> selectWarehouseManagementList(WarehouseManagement wm) {
		return this.getSqlSession().selectList("warehouse.SELECT_WAREHOUSE",wm);
	}

	@Override
	public int insertWarehouseManagement(WarehouseManagement wm) {
		return this.getSqlSession().insert("warehouse.INSERT_WAREHOUSE",wm);
	}

	@Override
	public int updateWarehouseManagement(WarehouseManagement wm) {
		return this.getSqlSession().update("warehouse.UPDATE_WAREHOUSE",wm);
	}

	@Override
	public int deleteWarehouseManagement(WarehouseManagement wm) {
		return this.getSqlSession().delete("warehouse.DELETE_WAREHOUSE",wm);
	}

}
