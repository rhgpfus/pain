package com.iot.erp.warehouse.service;

import java.util.List;

import com.iot.erp.warehouse.dto.WarehouseManagement;

public interface WarehouseService {

	public WarehouseManagement getWarehouseManagement(WarehouseManagement wm);

	public List<WarehouseManagement> getWarehouseManagementList(WarehouseManagement wm);
	
	public int insertWarehouse(WarehouseManagement wm);
	
	public int updateWarehouse(WarehouseManagement wm);
	
	public int deleteWarehouse(WarehouseManagement wm);

	
}
