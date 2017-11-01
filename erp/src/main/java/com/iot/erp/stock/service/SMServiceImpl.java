package com.iot.erp.stock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.stock.dao.SMDAO;
import com.iot.erp.stock.dto.StockManagement;

@Service
public class SMServiceImpl implements SMService{

	@Autowired
	SMDAO smDAO;
	
	@Override
	public List<StockManagement> selectStockManagementList(StockManagement sm) {
		return smDAO.selectStockManagementList(sm);
	}

	@Override
	public StockManagement selectStockManagement(StockManagement sm) {
		return smDAO.selectStockManagement(sm);
	}

	@Override
	public int insertStockManagement(StockManagement sm) {
		return smDAO.insertStockManagement(sm);
	}

	@Override
	public int deleteStockManagement(StockManagement sm) {
		return smDAO.deleteStockManagement(sm);
	}

	@Override
	public int updateStockManagement(StockManagement sm) {
		return smDAO.updateStockManagement(sm);
	}

}
