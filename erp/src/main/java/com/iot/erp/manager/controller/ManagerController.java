package com.iot.erp.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.manager.dto.Manager;
import com.iot.erp.manager.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	ManagerService ms;
	
	@RequestMapping(value="/manager/mlist",method=RequestMethod.POST)
	public @ResponseBody List<Manager> getManagerList(@RequestBody Manager manager){
		return ms.selectManagerList(manager);
	}
	@RequestMapping(value="/manager/mlist",method=RequestMethod.GET)
	public String login(){
		return "manager/mlist";
	}
}
