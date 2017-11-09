package com.iot.erp.warehouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.warehouse.dto.WarehouseManagement;
import com.iot.erp.warehouse.service.WarehouseService;

@Controller
public class WarehouseController {
	@Autowired
	WarehouseService ws;
	
	@RequestMapping(value="/warehouse/whlist",method=RequestMethod.POST)
	public @ResponseBody List<WarehouseManagement> 
	getWarehouseManagement(@RequestBody WarehouseManagement wm ){
		
		return ws.getWarehouseManagementList(wm);
	}
	@RequestMapping(value="/warehouse/whlist",method=RequestMethod.GET)
	public String login(){
		return "warehouse/whlist";
	}
}
