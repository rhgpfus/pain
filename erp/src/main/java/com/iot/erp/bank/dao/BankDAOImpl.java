package com.iot.erp.bank.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.bank.dto.HumanBank;




@Repository
public class BankDAOImpl extends SqlSessionDaoSupport implements BankDAO {
	//급여통장--------------------------------------------------------------------------------------------------------------
			@Override
			public List<HumanBank> selectHumanBankList(HumanBank h_bank) {
				return this.getSqlSession().selectList("bank.SELECT_HUMANBANK", h_bank);
				//급여통장 리스트.
			}
			@Override
			public HumanBank selectHumanBank(HumanBank h_bank) {
				return this.getSqlSession().selectOne("bank.SELECT_HUMANBANK", h_bank);
				//급여통장 단일.
			}
			@Override
			public int insertHumanBank(HumanBank h_bank) {
				return this.getSqlSession().insert("bank.INSERT_HUMANBANK", h_bank);
				//급여통장 등록.
			}
			@Override
			public int deleteHumanBank(HumanBank h_bank) {
				return this.getSqlSession().delete("bank.DELETE_HUMANBANK", h_bank);
				//급여통장 삭제.
			}
			@Override
			public int updateHumanBank(HumanBank h_bank) {
				return this.getSqlSession().update("bank.UPDATE_HUMANBANK", h_bank);
				//급여통장 수정.
			}
}
