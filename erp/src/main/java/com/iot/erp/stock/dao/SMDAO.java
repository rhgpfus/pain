package com.iot.erp.stock.dao;

import java.util.List;

import com.iot.erp.stock.dto.StockManagement;

public interface SMDAO {
	
	public List<StockManagement> selectStockManagementList(StockManagement sm);
	//재고관리 리스트를 받아오는 함수.
	public StockManagement selectStockManagement(StockManagement sm);
	//재고관리 단일로 받아오는 함수.
	public int insertStockManagement(StockManagement sm);
	//재고관리 신규 등록하는 함수.
	public int deleteStockManagement(StockManagement sm);
	//재고관리 삭제하는 함수.
	public int updateStockManagement(StockManagement sm);
	//재고관리ㄴ 수정하는 함수.
}
