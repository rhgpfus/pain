package com.iot.erp.memo.controller;

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
public class MemoController {

	@RequestMapping(value="/memo/memo_list",method=RequestMethod.GET)
	public String login(){
		return "memo/memo_list";
	}
}
