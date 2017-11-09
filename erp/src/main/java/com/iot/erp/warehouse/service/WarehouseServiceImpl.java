package com.iot.erp.warehouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.warehouse.dao.WarehouseDAO;
import com.iot.erp.warehouse.dto.WarehouseManagement;

@Service
public class WarehouseServiceImpl implements WarehouseService {

	@Autowired
	WarehouseDAO wDao;

	@Override
	public WarehouseManagement getWarehouseManagement(WarehouseManagement wm) {
		return wDao.selectWarehouseManagement(wm);
	}

	@Override
	public List<WarehouseManagement> getWarehouseManagementList(WarehouseManagement wmList) {
		return wDao.selectWarehouseManagementList(wmList);
	}

	@Override
	public int insertWarehouse(WarehouseManagement wm) {
		return wDao.insertWarehouseManagement(wm);
	}

	@Override
	public int updateWarehouse(WarehouseManagement wm) {
		return wDao.updateWarehouseManagement(wm);
	}

	@Override
	public int deleteWarehouse(WarehouseManagement wm) {
		return wDao.deleteWarehouseManagement(wm);
	}
	
}
