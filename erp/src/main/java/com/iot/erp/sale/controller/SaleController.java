package com.iot.erp.sale.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.sale.dto.SaleManagement;
import com.iot.erp.sale.service.SaleService;

@Controller
public class SaleController {
	
	@Autowired
	SaleService ss;
	
	@RequestMapping(value="/sale/slist",method=RequestMethod.POST)
	public @ResponseBody List<SaleManagement> getSaleList(@RequestBody SaleManagement sm){
		return ss.selectSaleManagementList(sm);
	}
	
	@RequestMapping(value="/sale/slist",method=RequestMethod.GET)
	public String login(){
		return "sale/slist";
	}
}
