package com.iot.erp.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	@RequestMapping(value="/bank/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertBank(@RequestBody HumanBank h_bank, ModelMap map){
		int cnt = bs.insertHumanBank(h_bank);
		map.put("msg", h_bank.getBankName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "은행이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/bank/update", method=RequestMethod.POST)
	public @ResponseBody ModelMap updateBank(@RequestBody HumanBank h_bank, ModelMap map){
		int cnt = bs.updateHumanBank(h_bank);
		map.put("msg", h_bank.getBankName() + "수정이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "은행이 정상적으로 수정 되었습니다.");
		}
		return map;
	}
}
