package com.iot.erp.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.stock.dto.StockManagement;
import com.iot.erp.stock.service.SMService;

@Controller
public class SMController {

	@Autowired
	SMService ss;
	
	@RequestMapping(value="/stock/list",method=RequestMethod.POST)
	public @ResponseBody List<StockManagement> getSaleList(@RequestBody StockManagement sm){
		return ss.selectStockManagementList(sm);
	}
	
	@RequestMapping(value="/stock/list",method=RequestMethod.GET)
	public String login(){
		return "stock/list";
	}
	
}
