package com.iot.erp.sale.service;

import java.util.List;

import com.iot.erp.sale.dto.SaleManagement;


public interface SaleService {

	public List<SaleManagement> selectSaleManagementList(SaleManagement sm);
	//판매관리 리스트를 받아오는 함수.
	public SaleManagement selectSaleManagement(SaleManagement sm);
	//판매관리 단일로 받아오는 함수.
	public int insertSaleManagement(SaleManagement sm);
	//판매관리 신규 등록하는 함수.
	public int deleteSaleManagement(SaleManagement sm);
	//판매관리 삭제하는 함수.
	public int updateSaleManagement(SaleManagement sm);
	//판매관리 수정하는 함수.
}
