package com.iot.erp.warehouse.dao;

import java.util.List;

import com.iot.erp.warehouse.dto.WarehouseManagement;

public interface WarehouseDAO {

public WarehouseManagement selectWarehouseManagement(WarehouseManagement wm);
	
	public List<WarehouseManagement> selectWarehouseManagementList(WarehouseManagement wm);
	
	public int  insertWarehouseManagement(WarehouseManagement wm);
	
	public int  updateWarehouseManagement(WarehouseManagement wm);
	
	public int deleteWarehouseManagement(WarehouseManagement wm);
}
