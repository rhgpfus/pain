package com.iot.erp.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.bank.dao.BankDAO;
import com.iot.erp.bank.dto.HumanBank;

@Service
public class BankServiceIpml implements BankService{
	
	@Autowired
	BankDAO bDao;

	@Override
	public List<HumanBank> selectHumanBankList(HumanBank h_bank) {
		return bDao.selectHumanBankList(h_bank);
	}

	@Override
	public HumanBank selectHumanBank(HumanBank h_bank) {
		return bDao.selectHumanBank(h_bank);
	}

	@Override
	public int insertHumanBank(HumanBank h_bank) {
		return bDao.insertHumanBank(h_bank);
	}

	@Override
	public int deleteHumanBank(HumanBank h_bank) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateHumanBank(HumanBank h_bank) {
		return bDao.updateHumanBank(h_bank);
	}
	
	
	
	
}
