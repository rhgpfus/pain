package com.iot.erp.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
import com.iot.erp.bank.service.BankService;



@Controller
public class BankController {
	
	@Autowired
	BankService bs;

	@RequestMapping(value="/bank/list", method=RequestMethod.GET)
	public String BankList(){
		return "bank/list"; 
	}
	@RequestMapping(value="/bank/list", method=RequestMethod.POST)
	public @ResponseBody List<HumanBank> getBankList(@RequestBody HumanBank h_bank){
		return bs.selectHumanBankList(h_bank);
	}

	@RequestMapping(value="/bank/search", method=RequestMethod.POST)
	public @ResponseBody HumanBank getBank(@RequestBody HumanBank h_bank){
		return bs.selectHumanBank(h_bank);
	}
}
