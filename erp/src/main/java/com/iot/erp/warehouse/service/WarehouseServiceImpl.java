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
	public List<WarehouseManagement> getWarehouseManagementList(WarehouseManagement wm) {
		return wDao.selectWarehouseManagementList(wm);
	}

	@Override
	public int insertPurchaseManagementList(WarehouseManagement[] wmList) {
		int result = 0;
		for(WarehouseManagement wm : wmList) {
			result +=wDao.insertWarehouseManagement(wm);
		}
		return result;
	}

	@Override
	public int insertPurchaseManagementList(WarehouseManagement wm) {
		return wDao.insertWarehouseManagement(wm);
	}

	@Override
	public int updatePurchaseManagementList(WarehouseManagement wm) {
		return wDao.updateWarehouseManagement(wm);
	}

	@Override
	public int deletePurchaseManagementList(WarehouseManagement wm) {
		return wDao.deleteWarehouseManagement(wm);
	}
	
}
