package com.iot.erp.bank.service;

import java.util.List;

import com.iot.erp.bank.dto.HumanBank;


public interface BankService {
	//급여통장--------------------------------------------------------------------------------------------------------------------
		public List<HumanBank> selectHumanBankList(HumanBank h_bank);
		//급여통장 리스트를 받아오는 함수.
		public HumanBank selectHumanBank(HumanBank h_bank);
		//급여통장 단일로 받아오는 함수.
		public int insertHumanBank(HumanBank h_bank);
		//급여통장 급여통장정보 신규 등록하는 함수.
		public int deleteHumanBank(HumanBank h_bank);
		//급여통장 급여통장정보 삭제하는 함수.
		public int updateHumanBank(HumanBank h_bank);
		//급여통장 급여통장정보 수정하는 함수.	.
}
