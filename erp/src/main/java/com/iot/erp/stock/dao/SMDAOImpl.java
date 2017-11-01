package com.iot.erp.stock.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.stock.dto.StockManagement;

@Repository
public class SMDAOImpl extends SqlSessionDaoSupport implements SMDAO{

	@Override
	public List<StockManagement> selectStockManagementList(StockManagement sm) {
		return this.getSqlSession().selectList("stock.SELECT_SMLIST",sm);
	}

	@Override
	public StockManagement selectStockManagement(StockManagement sm) {
		return this.getSqlSession().selectOne("stock.SELECT_SM",sm);
	}

	@Override
	public int insertStockManagement(StockManagement sm) {
		return this.getSqlSession().insert("stock.INSERT_SM",sm);
	}

	@Override
	public int deleteStockManagement(StockManagement sm) {
		return this.getSqlSession().delete("stock.DELETE_SM",sm);
	}

	@Override
	public int updateStockManagement(StockManagement sm) {
		return this.getSqlSession().update("stock.UPDATE_SM",sm);
	}

}
