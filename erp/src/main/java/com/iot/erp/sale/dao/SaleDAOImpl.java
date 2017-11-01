package com.iot.erp.sale.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.sale.dto.SaleManagement;

@Repository
public class SaleDAOImpl extends SqlSessionDaoSupport implements SaleDAO{

	@Override
	public List<SaleManagement> selectSaleManagementList(SaleManagement sm) {
		return this.getSqlSession().selectList("sale.SELECT_SM" , sm);
		//판매관리 리스트.
	}

	@Override
	public SaleManagement selectSaleManagement(SaleManagement sm) {
		return this.getSqlSession().selectOne("sale.SELECT_SM" , sm);
		//판매관리 단일.
	}

	@Override
	public int insertSaleManagement(SaleManagement sm) {
		return this.getSqlSession().insert("sale.INSERT_SM" , sm);
		//판매관리 등록.
	}

	@Override
	public int deleteSaleManagement(SaleManagement sm) {
		return this.getSqlSession().delete("sale.DELETE_SM" , sm);
		//판매관리 삭제.
	}

	@Override
	public int updateSaleManagement(SaleManagement sm) {
		return this.getSqlSession().update("sale.UPDATE_SM" , sm);
		//판매관리 수정.
	}

}
