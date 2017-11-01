package com.iot.erp.sale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.sale.dao.SaleDAO;
import com.iot.erp.sale.dto.SaleManagement;

@Service
public class SaleServiceImpl implements SaleService{

	@Autowired
	SaleDAO SDAO;
	
	@Override
	public List<SaleManagement> selectSaleManagementList(SaleManagement sm) {
		return SDAO.selectSaleManagementList(sm);
		//판매관리 리스트.
	}

	@Override
	public SaleManagement selectSaleManagement(SaleManagement sm) {
		return SDAO.selectSaleManagement(sm);
		//판매관리 단일.
	}

	@Override
	public int insertSaleManagement(SaleManagement sm) {
		return SDAO.insertSaleManagement(sm);
		//판매관리 등록.
	}

	@Override
	public int deleteSaleManagement(SaleManagement sm) {
		return SDAO.deleteSaleManagement(sm);
		//판매관리 삭제.
	}

	@Override
	public int updateSaleManagement(SaleManagement sm) {
		return SDAO.updateSaleManagement(sm);
		//판매관리 수정.
	}

}
