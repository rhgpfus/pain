package com.iot.erp.warehouse.service;

import java.util.List;

import com.iot.erp.warehouse.dto.WarehouseManagement;

public interface WarehouseService {

	public WarehouseManagement getWarehouseManagement(WarehouseManagement wm);

	public List<WarehouseManagement> getWarehouseManagementList(WarehouseManagement wm);
	
	public int insertPurchaseManagementList(WarehouseManagement[] wm);
	
	public int insertPurchaseManagementList(WarehouseManagement wm);
	
	public int updatePurchaseManagementList(WarehouseManagement wm);
	
	public int deletePurchaseManagementList(WarehouseManagement wm);
	
}
